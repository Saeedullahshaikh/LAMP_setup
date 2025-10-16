
# ⚡ LAMP Stack Setup Script (Automated)

This repository provides a fully automated **LAMP Stack (Linux, Apache, MySQL, PHP)** setup script for Ubuntu and Debian systems.  
It installs, configures, and prepares your server for hosting PHP-based web applications in just a few minutes.

---

## ⚙️ Features

- ✅ Automatically installs and configures Apache, MySQL, and PHP  
- ✅ Updates and upgrades all system packages before installation  
- ✅ Creates a default PHP info page (`phpinfo.php`) for verification  
- ✅ Enables and starts all necessary services  
- ✅ Simple structure, production-ready installation flow  

---

## 🧩 Prerequisites

Before running the script, ensure:

- You have **Ubuntu** or **Debian** system  
- You have **sudo privileges**  
- The system has **active internet connectivity**

---

## 📦 Installed Components

| Component | Package | Description |
|------------|----------|--------------|
| Apache | `apache2` | Web server for serving web content |
| MySQL | `mysql-server` | Database system for application data |
| PHP | `php`, `libapache2-mod-php`, `php-mysql` | Server-side scripting and database integration |

---

## 🚀 How to Use

### Step 1: Clone Repository
```bash
git clone https://github.com/<your-username>/lamp-setup.git
cd lamp-setup
```

### Step 2: Make Script Executable
```bash
chmod +x lamp-setup.sh
```

### Step 3: Run the Script
```bash
sudo ./lamp-setup.sh
```

---

## 🏁 Summary

| Component | Status |
|------------|---------|
| Apache | ✅ Installed |
| MySQL | ✅ Installed |
| PHP | ✅ Installed |
| PHP Info Page | ✅ Created |
| LAMP Stack | 🚀 Ready for Production |

---

**LAMP Stack setup completed successfully.**  
Your system is now ready to host PHP-based web applications efficiently.
