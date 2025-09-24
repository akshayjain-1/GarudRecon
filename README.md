<h1 align="center">
  <img src="img/GarudRecon_banner2.png" alt="GarudRecon"></a>
</h1>

<p align="center">
<a href="#"><img src="https://madewithlove.org.in/badge.svg"></a>
<a href="https://ko-fi.com/rix4uni"><img src="https://img.shields.io/badge/buy%20me%20a%20ko--fi%20-donate-red"></a>
<a href="https://x.com/rix4uni"><img src="https://img.shields.io/badge/twitter-%40rix4uni-blue.svg"></a>
<a href="https://github.com/rix4uni/GarudRecon/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
<a href="https://github.com/rix4uni/GarudRecon/blob/master/LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow.svg"></a>
<a href="#"><img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg"></a>
<a href="https://github.com/rix4uni?tab=followers"><img src="https://img.shields.io/badge/github-%40rix4uni-orange"></a>
</p>

## GarudRecon

GarudRecon - Recon Automation Framework

GarudRecon is an automated reconnaissance framework designed for asset discovery,
vulnerability detection, and continuous monitoring. It leverages a wide range of
open-source tools to scan domains, collect subdomains, and check for various
vulnerabilities such as:

- XSS (Cross-Site Scripting)
- SQLi (SQL Injection)
- LFI (Local File Inclusion)
- RCE (Remote Code Execution)
- IIS misconfigurations
- Subdomain Takeover
- Open Redirects
- Swagger UI exposures
- .git directory leaks
- JavaScript secrets and more.

The tool supports scoped recon with flexible modes like `smallscope`, `mediumscope`,
and `largescope`, depending on your coverage needs. You can customize scans,
exclude specific functions, provide configuration files, and automate cron jobs
for continuous monitoring.

## History
I created GarudRecon in 2022 but I deleted because some of api keys leaked here someone forked [GarudRecon](https://github.com/polling-repo-continua/GarudRecon)

After that i tried in python, golang but i did'nt liked "String Concatenation", so i came back to bash again.

### Referral Links

<p align="center">
<a href="https://m.do.co/c/43c704381b79" target="_blank">
<img src="img/referrals/digitalocean_200.png"/>
</a>
</p>

<p align="center">
<a href="https://login.linode.com/signup" target="_blank">
<img src="img/referrals/linode.png"/>
</a>
</p>

<p align="center">
<a href="https://cloud.ibm.com/docs/overview?topic=overview-tutorial-try-for-free" target="_blank">
<img src="img/referrals/ibm_cloud.png"/>
</a>
</p>

<p align="center">
<a href="https://aws.com" target="_blank">
<img src="img/referrals/aws.png"/>
</a>
</p>

<p align="center">
<a href="https://azure.com" target="_blank">
<img src="img/referrals/azure.png"/>
</a>
</p>

<p align="center">
<a href="https://cloud.intechdc.com/?affid=443&oid=99" target="_blank">
<img src="img/referrals/intechdc.png"/>
</a>
</p>

## Installation

> **Note:** Switch to the **root** user first (instead of using `sudo su`) before running the installation command.  
> This helps avoid permission and environment-related issues.  
>  
> If any tool fails to install during the script execution, install it manually.  
>  
> Make sure your shell is set to **bash**.

## Errors
- If you getting this error
<img width="968" height="429" alt="image" src="https://github.com/user-attachments/assets/4d312058-0be8-413d-98de-7b29e4abb884" />

```
# Then install go manually
curl -s "https://gist.githubusercontent.com/rix4uni/c412ca956ea3bfa114bf4b615a9762bc/raw/91e9c8c93afbad3f16bdc41eb581f3e428dea9df/go.sh" | bash && source ~/.bashrc

# Now run this command
bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure)
```

### Docker
```

```

### Easy Install `Recommended`
```
bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure)
```

### ✅ Example invocations:
- Very help if we installing on github actions or 100 1GB vps

👉 Installtion modes:
```
echo "Choose installation scope:"
echo "1) SMALLSCOPE"
echo "2) MEDIUMSCOPE"
echo "3) LARGESCOPE"
echo "4) CIDRSCOPE"
echo "5) WORKFLOW"
echo "6) FLEET"
echo "7) CRONJOBS"
echo "8) ALL (default)"
```

👉 Non-interactive without update:
```bash
bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure) 5
# Executes: garudrecon install -f CRONJOBS
```

👉 Non-interactive with update:
```bash
bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure) 5 --update
# Executes: garudrecon install -f CRONJOBS --update
```

👉 Interactive mode (no args):
```bash
bash <(curl -s https://raw.githubusercontent.com/rix4uni/GarudRecon/main/configure)
# Interactive prompts as before
```

### Download prebuilt binaries
```
wget -q https://github.com/rix4uni/GarudRecon/archive/refs/tags/v0.1.2.zip
unzip v0.1.2.zip
cd GarudRecon
bash configure
```

### Using Git Clone
```
git clone --depth 1 https://github.com/rix4uni/GarudRecon.git
cd GarudRecon
bash configure
```

### ✅ Example invocations:

👉 Non-interactive without update:
```bash
bash configure 5
# Executes: garudrecon install -f CRONJOBS
```

👉 Non-interactive with update:
```bash
bash configure 5 --update
# Executes: garudrecon install -f CRONJOBS --update
```

👉 Interactive mode (no args):
```bash
bash configure
# Interactive prompts as before
```

## Usage

<details>
  <summary><b>garudrecon -h</b></summary>

```
GarudRecon - Recon Automation Framework

GarudRecon is an automated reconnaissance framework designed for asset discovery,
vulnerability detection, and continuous monitoring. It leverages a wide range of
open-source tools to scan domains, collect subdomains, and check for various
vulnerabilities such as:

  • XSS (Cross-Site Scripting)
  • SQLi (SQL Injection)
  • LFI (Local File Inclusion)
  • RCE (Remote Code Execution)
  • IIS misconfigurations
  • Subdomain Takeover
  • Open Redirects
  • Swagger UI exposures
  • .git directory leaks
  • JavaScript secrets and more.

The tool supports scoped recon with flexible modes like smallscope, mediumscope,
and largescope, depending on your coverage needs. You can customize scans,
exclude specific functions, provide configuration files, and automate cron jobs
for continuous monitoring.

Usage:
  garudrecon [command]

Available Commands:
  install                 Set up the tool and dependencies
  smallscope              Run minimal recon for subdomain (e.g. support.domain.com)
  mediumscope             Perform moderate recon with optional vulnerability checks for wildcard domain (e.g. *.domain.com)
  largescope              Full-scale recon for deep visibility for organisation
  cronjobs                Automate recurring recon tasks

Flags:
  -h, --help     help for garudrecon
  -v, --version  Display the current version

Use "garudrecon [command] --help" for more information about a command.
```
</details>


<details>
  <summary><b>garudrecon install -h</b></summary>

```
This command sets up GarudRecon by installing the required tools and dependencies for a specified reconnaissance function. It supports installation for various predefined scopes such as SMALLSCOPE, MEDIUMSCOPE, LARGESCOPE, WORKFLOW, and CRONJOBS, or you can install everything at once using ALL.

You can also provide a custom configuration file and enable verbose output for more detailed installation logs.

Usage:
  garudrecon install [flags]

Flags:
  -f, --function        Function to run (e.g. MEDIUMSCOPE)
  -c, --config          Custom configuration file path
  -up, --update         Update all tools to latest version
  -v, --verbose         enable verbose mode
  -h, --help            help for install

Example:
  garudrecon install -f SMALLSCOPE
  garudrecon install -f MEDIUMSCOPE
  garudrecon install -f LARGESCOPE
  garudrecon install -f WORKFLOW
  garudrecon install -f CRONJOBS
  garudrecon install -f ALL
  garudrecon install -f ALL --update
```


#### Output
<img src="img/output/install.png"/>
</details>


<details>
  <summary><b>garudrecon smallscope -h</b></summary>

```
Performs a minimal reconnaissance on the target domain, typically scoped as support.domain.com. This includes port scanning, url crawling, vulnerability checks (like XSS, SQLi, LFI, etc.).

Usage:
  garudrecon smallscope [flags]

Flags:
  -d, --domain                          Scan a domain (e.g. support.domain.com)
  -ef, --exclude-functions              Exclude a function from running (e.g. WAYMORE)
  -rx, --recon-xss                      Run full recon with XSS checks
  -rs, --recon-sqli                     Run full recon with SQLi checks
  -rl, --recon-lfi                      Run full recon with LFI checks
  -rst, --recon-subtakeover             Run full recon with Subdomain Takeover checks
  -rr, --recon-rce                      Run full recon with RCE checks
  -ri, --recon-iis                      Run full recon with IIS checks
  -c, --config                          Custom configuration file path
  -r, --resume <scan_folder>            Resume stopped/uncompleted scan from /root/.garudrecon/scans/<scan_folder> (e.g., --resume support.domain.com or --resume support.domain.com_1). Skips functions already completed in resume.cfg.
  -h, --help                            help for smallscope

Example:
# Full recon
  garudrecon smallscope -d support.domain.com

# Recon with XSS only
  garudrecon smallscope -d support.domain.com -rx

# Recon with SQLi only
  garudrecon smallscope -d support.domain.com -rs

# Exclude functions manually
  garudrecon smallscope -d support.domain.com -ef "GOSPIDER,WAYMORE"

# Combined
  garudrecon smallscope -d support.domain.com -rx -ef "WAYMORE"

# Skips functions already completed in resume.cfg.
  garudrecon smallscope -d support.domain.com -rx --resume support.domain.com_1
```

#### Output
<img src="img/output/smallscope.png"/>
</details>


<details>
  <summary><b>garudrecon mediumscope -h</b></summary>

```
Performs a medium-level reconnaissance on the target domain, typically scoped as *.domain.com. This includes subdomain enumeration, vulnerability checks (like XSS, SQLi, LFI, etc.), and optional filtering of out-of-scope subdomains.

Usage:
  garudrecon mediumscope [flags]

Flags:
  -d, --domain                          Scan a domain (e.g. domain.com)
  -ef, --exclude-functions              Exclude a function from running (e.g. AMASS)
  -s, --recon-subdomain                 Run Subdomain Enumeration only
  -a, --active                          Run Active Subdomain Enumeration also (e.g. puredns, altdns)
  -su, --recon-subdomainurls            Run Subdomain Enumeration + Url Crawling only
  -rx, --recon-xss                      Run full recon with XSS checks
  -rs, --recon-sqli                     Run full recon with SQLi checks
  -rl, --recon-lfi                      Run full recon with LFI checks
  -rst, --recon-subtakeover             Run full recon with Subdomain Takeover checks
  -rr, --recon-rce                      Run full recon with RCE checks
  -ri, --recon-iis                      Run full recon with IIS checks
  -oos, --outofscope                    Exclude outofscope subdomains from a list (e.g. domain.com.oos)
  -c, --config                          Custom configuration file path
  -r, --resume <scan_folder>            Resume stopped/uncompleted scan from /root/.garudrecon/scans/<scan_folder> (e.g., --resume domain.com or --resume domain.com_1). Skips functions already completed in resume.cfg.
  -h, --help                            help for mediumscope

Example:
# Full recon with all vulnerability scan
  garudrecon mediumscope -d domain.com

# Recon Subdomain Enumeration only
  garudrecon mediumscope -d domain.com -s

# Run Active Subdomain Enumeration also (e.g. puredns, altdns)
  garudrecon mediumscope -d domain.com -s -a

# Recon Subdomain Enumeration + Url Crawling only
  garudrecon mediumscope -d domain.com -su

# Recon with XSS only
  garudrecon mediumscope -d domain.com -rx

# Recon with SQLi only
  garudrecon mediumscope -d domain.com -rs

# Exclude functions manually
  garudrecon mediumscope -d domain.com -ef "SUBFINDER,AMASS"

# Combined
  garudrecon mediumscope -d domain.com -rx -ef "AMASS"

# Skips functions already completed in resume.cfg.
  garudrecon mediumscope -d domain.com -rx --resume domain.com_1
```

#### Output
<img src="img/output/mediumscope.png"/>
</details>


<details>
  <summary><b>garudrecon largescope -h</b></summary>

```
```

#### Output
<img src="img/output/mediumscope.png"/>
</details>


<details>
  <summary><b>garudrecon cidrscope -h</b></summary>

```
```

#### Output
</details>


<details>
  <summary><b>garudrecon workflow -h</b></summary>

```
Run workflow scan (e.g. 1 vuln on all programs like mass vuln scan).

Usage:
  garudrecon workflow [flags]

Flags:
  -i, --input                   Pass the input
  -o, --output                  Location where you want to save output
  -v, --verbose                 enable verbose mode
  -h, --help                    help for cronjobs

Example:
  garudrecon workflow amass --input <domain> --output <file> [--verbose]
  garudrecon workflow ls
  garudrecon workflow ls [module]
  garudrecon workflow cat [module]
  garudrecon workflow add [module]
  garudrecon workflow edit [module]
  garudrecon workflow delete [module]
```

Check invalid
```
for f in modules/*.json; do
  echo -n "Checking $f ... "
  jq empty "$f" && echo "✅ OK" || echo "❌ INVALID"
done
```

#### Output
<img src="img/output/GarudRecon-workflow-@rix4uni.png"/>
<img src="img/output/GarudRecon-workflow-subfinder-@rix4uni.png"/>
<img src="img/output/GarudRecon-workflow-subfinder-output-@rix4uni.png"/>
</details>


<details>
  <summary><b>garudrecon fleet -h</b></summary>

```
Run fleet scan (e.g. 1 vuln on all programs like mass vuln scan).

Usage:
  garudrecon fleet [flags]

Flags:
  -i, --input       Pass the input
  -o, --output      Location where you want to save output
  -m, --module      module name you want to run
  -h, --help        help for modules

Example:
  garudrecon fleet -m <module> -i <wildcards> -o <file>
  garudrecon fleet -m subfinder -i wildcards.txt -o wildcards.subs
```

</details>


<details>
  <summary><b>garudrecon cronjobs -h</b></summary>

```
This command runs scheduled reconnaissance tasks on a specified domain, such as monitoring subdomains, ports, JavaScript files, and live hosts. It supports various monitoring functions and can be customized with configuration files and verbose output.

Usage:
  garudrecon cronjobs [flags]

Flags:
  -d, --domain                  Domain to monitor
  -f, --function                Function to run (e.g. MONITOR_SUBDOMAIN)
  -c, --config                  Custom configuration file path
  -i, --interval                Customize the sleep duration (e.g. 1800)
  -v, --verbose                 enable verbose mode
  -h, --help                    help for cronjobs

Example:
  garudrecon cronjobs -d domain.com -f MONITOR_SUBDOMAIN
  garudrecon cronjobs -d domain.com -f MONITOR_PORTS
  garudrecon cronjobs -d domain.com -f MONITOR_ALIVESUBD
  garudrecon cronjobs -d domain.com -f MONITOR_JS
  garudrecon cronjobs -d domain.com -f MONITOR_JSLEAKS
```

#### Output
<img src="img/output/cronjobs.png"/>
<img src="img/output/cronjobs_discord.png"/>
</details>

👉 short commands automatically adds in ~/.bashrc during installation:
```
gs="garudrecon smallscope"
gm="garudrecon mediumscope"
gl="garudrecon largescope"
gcidr="garudrecon cidrscope"
gw="garudrecon workflow"
gf="garudrecon fleet"
gc="garudrecon cronjobs"
```

## Demo

## Operating Systems Supported

| OS         | Supported | Easy Install | Tested        |
| ---------- | --------- | ------------ | ------------- |
| Ubuntu     | ✅       | ✅          | Ubuntu 24.04   |
| Kali       | ✅       | ✅          | Kali 2025.2    |
| Debian     | ✅       | ✅          | ❌             |
| Windows    | ✅       | ✅          | WSL Ubuntu     |
| MacOS      | ✅       | ✅          | ❌             |
| Arch Linux | ✅       | ❌          | ❌             |

## Default Excluded Functions, You can change if you want

| NAME                      | 1GB RAM | 2GB RAM | 4GB RAM | 6GB RAM | 8GB RAM | 16GB RAM |
| ------------------------- | ------- | ------- | ------- | ------- | ------- | -------- |
| BBOT                      | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| ONEFORALL                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| KAEFERJAEGER              | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| TRICKESTCLOUD             | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| DNSXBRUTE                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| SUBWIZ                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| RECURSIVESUBENUM          | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| ALTDNS                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| PUREDNS                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| ALTERX                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| GOTATOR                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| DNSGEN                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| GOALTDNS                  | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| RIPGEN                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| DMUT                      | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| DNSCEWL                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| ALLSUBDOMAINPERMUTATIONS  | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| MANUAL_SUBDOMAIN_RESOLVING| ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| PUREDNS                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| SHUFFLEDNS                | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| MASSDNS                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| FFUFBRUTE                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| FFUFVHOST                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| GOWITNESS                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| AQUATONE                  | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| EYEWITNESS                | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| HTTPX_SS                  | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| FFUFDIRENUM               | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| DIRSEARCH                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| FEROXBUSTER               | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| WFUZZ                     | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| CRAWLEY                   | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| GALER                     | ❌      | ❌     | ❌      | ❌     | ❌      | ❌      |
| MSARJUN                   | ❌      | ✅     | ✅      | ✅     | ✅      | ✅      |
| X8                        | ❌      | ✅     | ✅      | ✅     | ✅      | ✅      |
| CEWL                      | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| UNFURL                    | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| CUSTOM_PARAM              | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| COOK                      | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| PYDICTOR                  | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| FFUF_CUSTOM_PARAM         | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| VULNTECHX                 | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |
| PYXSS                     | ❌      | ❌     | ✅      | ✅     | ✅      | ✅      |


## Tools

### Subdomain Enumeration
- BugBountyData
- subfinder
- amass
- subdog
- xsubfind3r
- findomain
- chaos
- github-subdomains
- bbot
- oneforall
- shosubgo
- assetfinder
- haktrails
- haktrailsfree
- org2asn
- ipfinder
- ipranges
- arinrange
- spk
- analyticsrelationships
- udon
- builtwithsubs
- whoxysubs

### Certificate Transperency
- kaeferjaeger
- trickestcloud
- cero
- certinfo
- csprecon
- cspfinder
- jsubfinder
- dnsxbrute
- subwiz

### Subdomain Permutations
- altdns
- puredns
- alterx
- gotator
- dnsgen
- goaltdns
- ripgen
- dmut

### Subdomain Resolving
- puredns
- shuffledns
- massdns

### Subdomain DNS Enumeration
- dnsx

### Port Scanning
- naabu
- masscan
- rustscan
- nmap

### Subdomain Probing
- httpx

### Subdomain Bruteforcing
- subdomainfuzz

### VHOST Dicovery
- ffuf

### Favicon Lookup
- favinfo
- favirecon

### Screenshotting
- gowitness
- aquatone
- eyewitness
- httpx

### Directory Enumeration
- ffuf
- dirsearch
- feroxbuster
- wfuzz

### Email Enumeration
- emailfinder

### Url Crawling
- waymore
- hakrawler
- waybackurls
- katana
- gau
- gospider
- uforall
- cariddi
- urlfinder
- github-endpoints
- xurlfind3r
- xcrawl3r
- crawley
- GoLinkFinder
- galer
- gourlex
- pathfinder
- pathcrawler
- roboxtractor
- robotxt

### Google Dorking
- gorker

### JS Crawling
- subjs
- getJS
- jscrawler
- jsfinder
- javascript-deobfuscator
- linkfinder
- xnLinkFinder
- getjswords
- sourcemapper
- linx
- jsluice

### Hidden Parameter
- paramfinder
- msarjun
- x8

### Program Based Wordlist Generator
- cewl
- unfurl
- cook
- pydictor

### Subdomain Takeover
- subzy
- nuclei

### MX Takeover
- mx-takeover

### DNS takeover
- dnstake

### Zone Transfer
- dig

### Vulnerability Scanning
- ftpx
- sshx
- s3scanner
- vulntechx
- pvreplace
- xsschecker
- pyxss
- gosqli
- commix
- goop
- pdftotext
- trufflehog
- secretfinder
- mantra
- shortscan
- linkinspector
- brutespray

## Thanks 🙏
_Thanks for creating awesome tools_

<details>
  <summary><b><a href="https://github.com/projectdiscovery">projectdiscovery</a></b></summary>

- [httpx](https://github.com/projectdiscovery/httpx)
- [nuclei](https://github.com/projectdiscovery/nuclei)
- [subfinder](https://github.com/projectdiscovery/subfinder)
- [cvemap](https://github.com/projectdiscovery/cvemap)
- [katana](https://github.com/projectdiscovery/katana)
- [naabu](https://github.com/projectdiscovery/naabu)
- [mapcidr](https://github.com/projectdiscovery/mapcidr)
- [shuffledns](https://github.com/projectdiscovery/shuffledns)
- [uncover](https://github.com/projectdiscovery/uncover)
- [asnmap](https://github.com/projectdiscovery/asnmap)
- [cdncheck](https://github.com/projectdiscovery/cdncheck)
- [dnsx](https://github.com/projectdiscovery/dnsx)
- [chaos](https://github.com/projectdiscovery/chaos)
- [tldfinder](https://github.com/projectdiscovery/tldfinder)
- [alterx](https://github.com/projectdiscovery/alterx)
- [tlsx](https://github.com/projectdiscovery/tlsx)
- [interactsh-client](https://github.com/projectdiscovery/interactsh-client)

</details>


<details>
  <summary><b><a href="https://github.com/tomnomnom">tomnomnom</a></b></summary>

- [httprobe](https://github.com/tomnomnom/httprobe)
- [assetfinder](https://github.com/tomnomnom/assetfinder)
- [waybackurls](https://github.com/tomnomnom/waybackurls)
- [fff](https://github.com/tomnomnom/fff)
- [meg](https://github.com/tomnomnom/meg)
- [meg](https://github.com/tomnomnom/meg)
- [anew](https://github.com/tomnomnom/anew)
- [gron](https://github.com/tomnomnom/gron)
- [unfurl](https://github.com/tomnomnom/unfurl)
- [gf](https://github.com/tomnomnom/gf)
- [qsreplace](https://github.com/tomnomnom/qsreplace)

</details>


<details>
  <summary><b><a href="https://github.com/rix4uni">rix4uni</a></b></summary>

- [techx](https://github.com/rix4uni/techx)
- [unew](https://github.com/rix4uni/unew)
- [ip2org](https://github.com/rix4uni/ip2org)
- [certinfo](https://github.com/rix4uni/certinfo)
- [xsschecker](https://github.com/rix4uni/xsschecker)
- [portmap](https://github.com/rix4uni/portmap)
- [paramfinder](https://github.com/rix4uni/paramfinder)
- [Gxss](https://github.com/rix4uni/Gxss)
- [msarjun](https://github.com/rix4uni/msarjun)

</details>


<details>
  <summary><b><a href="https://github.com/hakluke">hakluke</a></b></summary>

- [hakrawler](https://github.com/hakluke/hakrawler)
- [hakrevdns](https://github.com/hakluke/hakrevdns)
- [haklistgen](https://github.com/hakluke/haklistgen)
- [hakoriginfinder](https://github.com/hakluke/hakoriginfinder)
- [hakcheckurl](https://github.com/hakluke/hakcheckurl)
- [haktrails](https://github.com/hakluke/haktrails)
- [hakip2host](https://github.com/hakluke/hakip2host)

</details>


<details>
  <summary><b><a href="https://github.com/jaeles-project">jaeles-project</a></b></summary>

- [gospider](https://github.com/jaeles-project/gospider)
- [jaeles](https://github.com/jaeles-project/jaeles)

</details>


<details>
  <summary><b><a href="https://github.com/lc">lc</a></b></summary>

- [gau](https://github.com/lc/gau)
- [subjs](https://github.com/lc/subjs)

</details>

## Thanks for #bugbountytips 🙏
- https://xmind.app/m/hKKexj
- https://x.com/ADITYASHENDE17/status/1527294113552297986
- https://youtu.be/rbyifgOQIrc?t=17m38s

## Changelog

## Mindmap/Workflow
_See Workflow in different format [Workflow](Workflow)_

<p align="center"> 
<a href="Workflow/Scope-Based-Recon.png" target="_blank"> 
<img src="Workflow/Scope-Based-Recon.png"/>
</a>  
</p>
