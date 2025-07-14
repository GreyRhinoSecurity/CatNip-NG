
# 🐾 CatNip - NTLM Password Cracking Suite

[![GitHub release](https://img.shields.io/github/v/release/GreyRhinoSecurity/CatNip-NG)](https://github.com/GreyRhinoSecurity/CatNip-NG/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Shell](https://img.shields.io/badge/Bash-✔️-blue)](https://bash.sh)
[![Built With](https://img.shields.io/badge/Built%20With-Hashcat%20+%20John-orange)](https://hashcat.net)

**CatNip** is a full-featured Bash-based NTLM cracking framework optimized for red teams, auditors, and researchers who need more than raw password guesses. It combines wordlist intelligence, automated rule benchmarking, GPU/CPU cracking, HTML reporting, and `.deb` install packaging.

---

## 🚀 Features

- 🔐 Crack NTLM hashes using both **Hashcat** and **John the Ripper**
- 🧠 Generate advanced wordlists using usernames, CEWL scraping, date permutations, symbols, and leetspeak
- 🧪 Quick Test Mode with built-in hashes for instant verification of cracking setup
- ⚡ Auto-detect and benchmark all Hashcat rules; select the most effective based on actual crack success and GPU speed
- 📊 Export results to an HTML dashboard (sortable, color-coded), CSV, and session logs
- 🎯 Quick Mode to launch a full run with a single command
- 📂 Saves full session logs in timestamped `loot/YYYYMMDD_HHMMSS/` directories
- 🐧 Includes `.deb` installer and a `catnip.desktop` launcher for system menu integration

---

## 📦 Installation

### Option 1: Via `.deb` Installer (Recommended)

```bash
wget https://github.com/GreyRhinoSecurity/CatNip-NG/releases/latest/download/catnip_4.7-1_all.deb
sudo dpkg -i catnip_4.7-1_all.deb
```

### Option 2: One-Line Install

```bash
curl -s https://raw.githubusercontent.com/GreyRhinoSecurity/CatNip-NG/main/install.sh | bash
```

---

## 🔧 Requirements

Ensure these dependencies are installed (pre-installed on Kali/Parrot):

```bash
sudo apt install hashcat john coreutils wget cewl seclists wordlists
```

---

## 🚀 Usage

### Launch Normally:
```bash
catnip
```

### Use Quick Mode (default rules, full automation):
```bash
catnip --quick /path/to/ntlm_hashes.txt
```

- Benchmarks rules
- Cracks with both Hashcat and John
- Launches HTML dashboard automatically
- Saves CSV, logs, and cracked results

---

## 📈 Benchmarking System

CatNip tests every Hashcat rule in:

```bash
/usr/share/hashcat/rules/*.rule
```

And logs:
- Time taken (in seconds)
- Cracked password count
- GPU speed (hashes/second)
- Results saved to: `rule_benchmark.csv`

CatNip then auto-selects the **most effective rule** and uses it to crack all remaining hashes.

---

## 📊 HTML Dashboard

Each session generates an interactive HTML dashboard that shows:
- Usernames
- NTLM hashes
- Cracked passwords
- Which engine cracked them (Hashcat or John)
- Benchmark results for all tested rules (time, speed, cracked count)

---

## 🧪 Demo Mode (Verify Hashcat + John Functionality)

Launch CatNip and select:

```
[3] Run NTLM Quick Test
```

This tests a known 5-hash file against a small wordlist to verify cracking works. It runs in under 5 seconds and generates a dashboard to confirm output.

---

## 📁 Session Output Structure

Each cracking run stores results like:

```
loot/20250717_104510/
├── hashes.ntlm
├── cracked_ntlm.txt
├── cracked_john.txt
├── rule_benchmark.csv
├── catnip_dashboard.html
├── hash_user_map.txt
```

- Use this for documentation, reporting, or auditing purposes.

---

## 🧠 Why NTLM Cracking Fails — And How CatNip Fixes It

| Problem                        | Typical Limitation               | ✅ CatNip Solution                                 |
|-------------------------------|----------------------------------|---------------------------------------------------|
| NTLM is too fast              | Wastes GPU time with poor guesses| Rule benchmarking + smart wordlist intelligence   |
| No salt, reused hashes        | Vulnerable to rainbow reuse      | Safe test mode, cross-dump cracking               |
| No result visibility          | Flat output lists                | Dashboard + per-user visibility                   |
| No rule performance feedback  | Rules tried blindly              | Full logging of crack performance per rule        |

CatNip brings strategic insight to brute-force password cracking.

---

## 📤 Exported Files

| File                     | Description                                  |
|--------------------------|----------------------------------------------|
| cracked_ntlm.txt         | Hashcat cracked passwords                    |
| cracked_john.txt         | John the Ripper cracked output               |
| rule_benchmark.csv       | Rule performance log                         |
| catnip_dashboard.html    | Interactive, sortable HTML report            |

---

## 📜 License

MIT License  
© 2025 [GreyRhinoSecurity](https://github.com/GreyRhinoSecurity)

---

## 💬 Support

- Bug reports, feature requests: [Open an issue](https://github.com/GreyRhinoSecurity/CatNip-NG/issues)
- Email: `security@greyrhinosec.com`
- Contributions welcome via pull request
