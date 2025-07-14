
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
