<p align="center">
<br>
<img width=400 src="https://i.imgur.com/xoMC34h.png"><br>
 Recon Tool of The Bug Hunter by <a href="https://github.com/thewhiteh4t">thewhiteh4t</a>
</p>

<p align="center">
<img src="https://img.shields.io/badge/Python-3-brightgreen.svg?style=plastic">
<img src="https://img.shields.io/badge/OSINT-red.svg?style=plastic">
<img src="https://img.shields.io/badge/Web-red.svg?style=plastic">
<br><br></p>

**FinalRecon** é uma ferramenta automática de reconhecimento web escrita em **python**. Em vez de executar várias ferramentas uma após a outra, o final recon junta diversas ferramentas e tecnicas de reconhecimento em um mesmo programa, sendo o seu **"hub de reconhecimento"**

## Instalação

### Linux
Para poder instalar a ferramenta precisamos realizar a instalação do **python** e do **git** a partir destes comandos:
```
sudo apt update
sudo apt install python3 python3-pip
sudo apt install git
```
Para fazer a instalação do **Final Recon** basta executar esses comandos no seu terminal linux:
```bash
git clone https://github.com/thebughunter-io/FinalRecon.git
cd FinalRecon
pip3 install -r requirements.txt
pip3 install psycopg2-binary
```

## Features

O FinalRecon possui essa lista de funcionalidades:

* Header Information
* Whois
* SSL Certificate Information
* Crawler
  * html
  * robots
  * sitemaps
  * Links inside Javascripts
  * Links from Wayback Machine from Last 1 Year
* DNS Enumeration
  * A, AAAA, ANY, CNAME, MX, NS, SOA, TXT Records
  * DMARC Records
* Subdomain Enumeration
* Traceroute
* Directory Searching
* Port Scan
* Export

## Usage

```bash
python3 finalrecon.py -h

usage: finalrecon.py [-h] [--headers] [--sslinfo] [--whois] [--crawl] [--dns] [--sub]
                     [--trace] [--dir] [--ps] [--full] [-t T] [-T T] [-w W] [-r] [-s]
                     [-sp SP] [-d D] [-e E] [-m M] [-p P] [-tt TT] [-o O]
                     url

FinalRecon - The Last Web Recon Tool You Will Need | v1.1.0

positional arguments:
  url         Target URL

optional arguments:
  -h, --help  show this help message and exit
  --headers   Header Information
  --sslinfo   SSL Certificate Information
  --whois     Whois Lookup
  --crawl     Crawl Target
  --dns       DNS Enumeration
  --sub       Sub-Domain Enumeration
  --trace     Traceroute
  --dir       Directory Search
  --ps        Fast Port Scan
  --full      Full Recon

Extra Options:
  -t T        Number of Threads [ Default : 30 ]
  -T T        Request Timeout [ Default : 30.0 ]
  -w W        Path to Wordlist [ Default : wordlists/dirb_common.txt ]
  -r          Allow Redirect [ Default : False ]
  -s          Toggle SSL Verification [ Default : True ]
  -sp SP      Specify SSL Port [ Default : 443 ]
  -d D        Custom DNS Servers [ Default : 1.1.1.1 ]
  -e E        File Extensions [ Example : txt, xml, php ]
  -m M        Traceroute Mode [ Default : UDP ] [ Available : TCP, ICMP ]
  -p P        Port for Traceroute [ Default : 80 / 33434 ]
  -tt TT      Traceroute Timeout [ Default : 1.0 ]
  -o O        Export Output [ Default : txt ] [ Available : xml, csv ]
```

```bash
# Check headers

python3 finalrecon.py --headers <url>

# Check ssl Certificate

python3 finalrecon.py --sslinfo <url>

# Check whois Information

python3 finalrecon.py --whois <url>

# Crawl Target

python3 finalrecon.py --crawl <url>

# Directory Searching

python3 finalrecon.py --dir <url> -e txt,php -w /path/to/wordlist

# full scan

python3 finalrecon.py --full <url>
```
