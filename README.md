# 🐾 CatNip - NTLM Password Cracking Suite

[![GitHub release](https://img.shields.io/github/v/release/GreyRhinoSecurity/CatNip-NG)](https://github.com/GreyRhinoSecurity/CatNip-NG/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Shell](https://img.shields.io/badge/Bash-✔️-blue)](https://bash.sh)
[![Built With](https://img.shields.io/badge/Built%20With-Hashcat%20+%20John-orange)](https://hashcat.net)

**CatNip** is a modular, GPU-aware NTLM cracking suite built in Bash that integrates:
- 🧠 Smart wordlist generation
- 🔓 Hashcat & John cracking engines
- 📊 HTML dashboards + CSV export
- 🧪 Demo/test hash support
- 🐧 Easy `.deb` packaging + system menu integration

---

## 🚀 Features

- 🔧 Crack NTLM hashes using **Hashcat**, **John**, or both
- 💥 Supports GPU (OpenCL/NVIDIA/AMD) and CPU
- 🧠 Wordlist generator (usernames, years, CEWL from target URLs)
- 🧪 Quick Test mode: built-in known hashes for demo verification
- 📊 Interactive **HTML dashboard** with crack status & engine stats
- 📦 `.deb` installer + system-wide launcher (`catnip.desktop`)
- 📂 Auto ZIP and timestamp session logs
- 🧙 Advanced: rule sets, GPU tuning flags, offline HTML cracking

---

## 📸 Screenshot

![CatNip Dashboard](assets/catnip_dashboard.png)

---

## 📦 Install (via `.deb`)

Download from the [Releases page](https://github.com/GreyRhinoSecurity/CatNip-NG/releases):

```bash
sudo dpkg -i catnip_4.7-1_all.deb
# CatNip - Password Cracking Suite

CatNip is a Bash-based NTLM password cracker with HTML dashboards, GPU support, demo/test mode, and smart wordlist generation.

## Usage

```bash
./catnip
```

## Build & Install .deb

```bash
chmod +x build_deb.sh
./build_deb.sh
sudo dpkg -i catnip_4.7-1_all.deb
```

## License

MIT

---

## 📦 Install CatNip

You can install CatNip using either the `.deb` installer or a one-liner via `curl`.

---

### 🔹 Option 1: Install via `.deb` (recommended)

1. **Download** the latest `.deb` file from the [Releases page](https://github.com/GreyRhinoSecurity/CatNip-NG/releases):

```bash
wget https://github.com/GreyRhinoSecurity/CatNip-NG/releases/latest/download/catnip_4.7-1_all.deb
```

2. **Install it**:

```bash
sudo dpkg -i catnip_4.7-1_all.deb
```

3. **Launch CatNip**:

```bash
catnip
```

Or use the desktop launcher (Applications menu → CatNip Password Cracker)

---

### 🔹 Option 2: Quick Install via `curl`

Run this one-liner to download and install automatically:

```bash
curl -s https://raw.githubusercontent.com/GreyRhinoSecurity/CatNip-NG/main/install.sh | bash
```

---

### 🔧 Requirements

Make sure these tools are installed (most are pre-installed on Kali/Debian):

```bash
sudo apt install hashcat john coreutils wget cewl
```

---

### 🧪 Verify with Demo Mode

To confirm everything is working:

```bash
catnip
```

Then choose: `Option [3] → Run NTLM Quick Test`

You’ll see cracked sample hashes + a full HTML dashboard.


# 🐾 CatNip - NTLM Password Cracking Suite

CatNip is a modular NTLM password cracking suite built in Bash that supports GPU acceleration, intelligent rule benchmarking, smart wordlist generation, and real-time dashboard reporting.

## 📦 Install CatNip

### 🔹 Option 1: Install via `.deb`

```bash
wget https://github.com/GreyRhinoSecurity/CatNip-NG/releases/latest/download/catnip_4.7-1_all.deb
sudo dpkg -i catnip_4.7-1_all.deb
```

### 🔹 Option 2: One-line Quick Install

```bash
curl -s https://raw.githubusercontent.com/GreyRhinoSecurity/CatNip-NG/main/install.sh | bash
```

## 🚀 Usage

```bash
catnip
```

Or use:

```bash
catnip --quick /path/to/hashes.ntlm
```

## 📘 Features

- Smart NTLM hash cracking via Hashcat + John
- GPU detection and rule benchmarking
- HTML dashboard generation with result and speed breakdowns
- CSV and session log output
- One-command Quick Mode with benchmarking and auto-cracking
- Auto-select best rule by crack rate

---

## 🧠 Why NTLM Cracking Fails — And How CatNip Fixes It

NTLM hashes are easy to compute — but difficult to crack *intelligently*. Here's why most cracking efforts fail and how CatNip eliminates each pain point:

### 🚨 Problem #1: NTLM is *too fast* — wasted GPU time
✅ **CatNip Solution:** rule benchmarking + smart wordlist logic

### 🚨 Problem #2: No salt = reused hashes
✅ **CatNip Solution:** safe demo mode, cross-hash dump support

### 🚨 Problem #3: Too many cracked results, no prioritization
✅ **CatNip Solution:** dashboards, crack maps, per-user and per-rule summaries

### ✅ Summary

| Weakness              | CatNip Fixes With                             |
|-----------------------|-----------------------------------------------|
| Fast + blind guessing | Rule auto-tuning, crack-rate sorting          |
| No salt               | Reuse-aware, rainbow-safe modes               |
| Unstructured output   | HTML dashboards, crack engines, timing data   |

CatNip = Strategic Cracking Intelligence 🐾

