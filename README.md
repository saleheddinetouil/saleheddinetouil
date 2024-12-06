# السلام عليكم و رحمة الله و بركاته
# I'm Saleh Eddine Touil! 👋

<div align="left">
	
![](https://komarev.com/ghpvc/?username=saleheddinetouil&style=for-the-badge&color=bebebe)
	
</div>

[![ Languages        ](https://img.shields.io/badge/[%20AR%20|%20FR%20|%20EN%20]-informational?style=flat-square&color=eeeeee)]()

- 🔓 Cyber Security Enthusiast
- 👨🏻‍🎓 Iset'Com Tunis Student
- ⚙️ I take part in Web/Mobile Application Penetration Testing
- ⚔️ I participate in CTF events + solve labs
- ⌨️ I hack, code & learn because I love it
<div align=left>
	<a href="#"><img src="https://img.shields.io/badge/CV%20[EN]-informational?style=for-the-badge&color=808080"/></a>&nbsp;
		<a href="https://cybersec.salehtouil.tech"><img src="https://img.shields.io/badge/CTF%20WRITEUPS-informational?style=for-the-badge&color=808080"/></a>&nbsp;
		<a href="https://portfolio.salehtouil.tech"><img src="https://img.shields.io/badge/PORTFOLIO-informational?style=for-the-badge&color=808080"/></a>&nbsp;
</div>


## Interests
[![ Cyber Security     ](https://img.shields.io/badge/Cyber%20Security-informational?style=for-the-badge&color=424242)]()
[![ Penetration Test   ](https://img.shields.io/badge/Penetration%20Test-informational?style=for-the-badge&color=bebebe)]()
[![ Malware Analysis   ](https://img.shields.io/badge/Malware%20Analysis-informational?style=for-the-badge&color=bebebe)]()
[![ Computer Forensics ](https://img.shields.io/badge/Computer%20Forensics-informational?style=for-the-badge&color=bebebe)]()
<br>
[![ Machine Learning   ](https://img.shields.io/badge/Machine%20Learning-informational?style=for-the-badge&color=424242)]()
[![ Web Development    ](https://img.shields.io/badge/Web%20Development-informational?style=for-the-badge&color=424242)]()
[![ Science            ](https://img.shields.io/badge/Science-informational?style=for-the-badge&color=424242)]()
[![ Law                ](https://img.shields.io/badge/Law-informational?style=for-the-badge&color=424242)]()


## Technologies
[![ OS: Windows          ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=OS&message=Windows&logo=windows)]()
[![ OS: Kali Linux       ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=OS&message=Kali%20Linux&logo=kalilinux)]()
[![ Code: Bash           ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Code&message=Bash&logo=gnubash)]()
[![ Code: Python         ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Code&message=Python&logo=python)]()
[![ Code: JavaScript     ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Code&message=JavaScript&logo=javascript)]()
[![ Code: React          ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Code&message=React&logo=react)]()
[![ Code: Express        ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Code&message=Express&logo=express)]()
[![ Tool: Jupyter        ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Tools&message=Jupyter%20Notebook&logo=jupyter)]()
[![ Tool: Sublime Text   ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Tools&message=Sublime%20Text&logo=sublimetext)]()
[![ Tool: IntelliJ IDEA  ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Tools&message=IntelliJ%20IDEA&logo=intellijidea)]()
[![ Tool: WebStorm       ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Tools&message=WebStorm&logo=webstorm)]()
[![ Tool: Android Studio ](https://img.shields.io/static/v1?style=for-the-badge&logoColor=white&labelColor=424242&color=bebebe&label=Tools&message=Android%20Studio&logo=androidstudio)]()

<br><p></p>

`[BurpSuite + extensions]` `[Metasploit]` `[Nmap]` `[Nikto]` `[Sqlmap]` `[Impacket]` `[Bloodhound]` `[Mimikatz]` `[Wireshark]` `[NetworkMiner]` `[volatility]` `[IDA Pro]` `[Immunity Debugger]` `[edb]` ...

<br>

## 🔭 I’m currently working on

- Strengthening my skills in cybersecurity through hands-on projects
- Building web applications using MERN, Python, PHP, MySQL, HTML, CSS, and JavaScript
- Exploring the world of Go programming, Bash Scripting & Linux

## 🤝 I’m looking to collaborate on

- Projects related to cybersecurity
- Web development projects
- Open-source initiatives in programming

![LeetCode Stats](https://leetcard.jacoblin.cool/saleheddinetouil?border=0&radius=20)
![Saleh's GitHub stats](https://github-readme-stats.vercel.app/api?username=saleheddinetouil)

library ieee;
use ieee.std_logic_1164.all;

entity registre_decalage_4bits_tb is
end entity;

architecture behavioral of registre_decalage_4bits_tb is

    -- Component declaration for the DUT
    component registre_decalage_4bits is
        Port (
            clk : in std_logic;
            rst : in std_logic;
            din : in std_logic;
            dout : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Signals for the testbench
    signal clk_tb : std_logic := '0';
    signal rst_tb : std_logic := '0';
    signal din_tb : std_logic := '0';
    signal dout_tb : std_logic_vector(3 downto 0);

begin

    -- Instance of the DUT
    dut : registre_decalage_4bits
        port map (
            clk => clk_tb,
            rst => rst_tb,
            din => din_tb,
            dout => dout_tb
        );

    -- Clock generation process
    clk_gen : process
    begin
        clk_tb <= not clk_tb;
        wait for 5 ns;  -- Adjust period as needed
    end process;


    -- Test process
    test_process : process
    begin
        -- Reset
        rst_tb <= '1';
        wait for 10 ns;
        rst_tb <= '0';
        wait for 10 ns;

        -- Test case 1: Input '1'
        din_tb <= '1';
        wait for 10 ns; -- Wait for a clock cycle

        -- Test case 2: Input '0'
        din_tb <= '0';
        wait for 10 ns; -- Wait for a clock cycle

        -- Test case 3: Input sequence '1010'
        din_tb <= '1';
        wait for 10 ns;
        din_tb <= '0';
        wait for 10 ns;
        din_tb <= '1';
        wait for 10 ns;
        din_tb <= '0';
        wait for 10 ns;



        wait; -- End the simulation
    end process;



end architecture;
