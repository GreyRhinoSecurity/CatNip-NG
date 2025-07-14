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
