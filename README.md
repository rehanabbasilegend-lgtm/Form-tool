# Form Tool 🎯

A simple and educational **form capture tool** built with **HTML, JavaScript, and Shell Script**.  
This project demonstrates how web forms can be created, captured, and logged in a controlled lab environment.

> ⚠️ **Disclaimer:** This tool is strictly for **educational purposes only**.  
> Do not use it on any website or person without **explicit permission**.  
> The author is not responsible for any misuse.

---

## 📌 Features

- 📋 Simple HTML form (username/password)
- 🎨 Clean and responsive UI
- 📥 Captures form data locally
- 🐚 Shell script for automation
- 📁 Data stored in `data.txt`
- 🖥️ Works with any local server (Flask, PHP, etc.)

---

## 📂 Project Structure

```

form_tool/
├── data.txt              # Captured data (log file)
├── form_capture.sh       # Shell script for automation
├── README.md             # Project documentation
└── www/                  # Web files
├── index.html        # Main form page
├── style.css         # Styling
└── script.js         # Form handling

```

---

## 🛠️ Requirements

- **Termux** (Android) or **Linux**
- **Python 3** (for local server)
- **Bash** (for shell script)
- Any modern web browser

---

## 🚀 Installation & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/rehanabbasilegend-lgtm/Form-tool.git
cd Form-tool
```

2. Run Locally

```bash
# Start a simple Python server
python -m http.server 8080
```

Ab browser mein kholo:

```
http://localhost:8080/www/index.html
```

3. Run the Shell Script (Optional)

```bash
chmod +x form_capture.sh
./form_capture.sh
```

---

📊 Data Output

Captured data data.txt mein save hota hai — format:

```
[2026-10-01 11:45:00] Username: test@example.com | Password: 123456
```

---

🧠 Learning Objectives

Yeh project banane se aap seekhte hain:

· HTML forms kaise kaam karte hain
· JavaScript se data capture karna
· Shell scripting basics
· Local server setup (Python)
· Git & GitHub workflow

---

🤝 Contributing

Pull requests welcome hain!
Agar koi bug ya feature idea ho toh issue open karo.

---

👨‍💻 Author

Rehan Abbasi

· GitHub: @rehanabbasilegend-lgtm
· TikTok: @nobodyxpubg
