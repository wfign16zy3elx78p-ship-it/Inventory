# 📦 InventorySystem

A JavaFX desktop application for managing **inventory, customers, rentals and sales** using **MySQL**.

> 🎓 Educational project built with JavaFX 8 and MySQL.

---

## ✨ Features

* 📦 Inventory Management
* 👥 Customer Management
* 🏠 Rental Management
* 🛒 Sales / Purchase Management
* 👤 Account Management
* 📊 Transaction Statistics
* 💾 MySQL Database
* 🖥️ JavaFX Desktop GUI

---

## 🛠️ Tech Stack

| Technology    | Version       |
| ------------- | ------------- |
| Java          | 8             |
| JavaFX        | 8             |
| MySQL         | 8.x           |
| JFoenix       | 8.0.5         |
| ControlsFX    | 8.40.12       |
| FontAwesomeFX | 8.9           |
| IDE           | IntelliJ IDEA |

> ⚠️ **Java 8 is required.**
> This project uses JavaFX 8-era libraries and is not compatible with JavaFX 21.

---

## 📁 Project Structure

```text
InventorySystem/
├── images/
├── jar/
│   └── InventorySystem.jar
├── lib/
│   ├── controlsfx-8.40.12.jar
│   ├── fontawesomefx-8.9.jar
│   ├── jfoenix-8.0.5.jar
│   └── mysql-connector-java-8.0.11.jar
├── sql/
│   └── inventory.sql
├── src/
│   └── main/
└── README.md
```

---

# 🚀 Getting Started

## 1. Requirements

Install:

* [Git](https://git-scm.com/)
* [Liberica JDK 8 Full](https://bell-sw.com/pages/downloads/)
* [MySQL Server 8](https://dev.mysql.com/downloads/mysql/)
* [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
* IntelliJ IDEA *(optional)*

### Why Liberica JDK 8 Full?

The **Full** distribution includes JavaFX 8, which is required by this project.

---

## 2. Clone the Repository

Open PowerShell:

```powershell
git clone https://github.com/afifaniks/InventorySystem.git
cd InventorySystem
```

---

## 3. Setup MySQL

Start MySQL:

```powershell
Start-Service MySQL80
```

Open **MySQL Workbench** and connect to:

```text
Host:     127.0.0.1
Port:     3306
Username: root
Password: root
```

Then:

```text
File
 → Open SQL Script
 → sql/inventory.sql
```

Execute:

```text
Query → Execute All
```

After execution, verify:

```sql
SHOW DATABASES;
```

Then:

```sql
USE inventory;
SHOW TABLES;
```

---

# ▶️ Run the Application

The repository already includes:

```text
jar/InventorySystem.jar
```

Open PowerShell:

```powershell
cd jar
```

Run:

```powershell
& "C:\Program Files\BellSoft\LibericaJDK-8-Full\bin\java.exe" -cp ".;..\lib\*" main.Main
```

The InventorySystem window should open.

---

# ⚡ One-Click Startup

You can create:

```text
run-inventory.bat
```

in the project root:

```bat
@echo off

net start MySQL80 >nul 2>&1

cd /d "%~dp0jar"

"C:\Program Files\BellSoft\LibericaJDK-8-Full\bin\java.exe" -cp ".;..\lib\*" main.Main

pause
```

Then simply double-click:

```text
run-inventory.bat
```

This starts:

```text
MySQL
  ↓
InventorySystem
```

---

# 🗄️ Database

Database:

```text
inventory
```

SQL script:

```text
sql/inventory.sql
```

Default connection:

```text
Host:     127.0.0.1
Port:     3306
Username: root
Password: root
```

> If you use a different MySQL password, update the database connection configuration in the source code.

---

# 🏠 Rentals & 🛒 Sells

The original application supports creating and viewing transactions.

The original UI does **not** provide dedicated:

* Edit Rental
* Delete Rental
* Edit Sale
* Delete Sale

buttons.

Transaction data can be inspected directly through MySQL:

```sql
SELECT * FROM rentals;
```

```sql
SELECT * FROM purchases;
```

Check table structure:

```sql
DESCRIBE rentals;
```

```sql
DESCRIBE purchases;
```

> ⚠️ Be careful when modifying transaction data directly because transactions can affect inventory quantities.

---

# 🔧 Troubleshooting

### `NoClassDefFoundError: javafx/application/Application`

Make sure you are using:

```text
Liberica JDK 8 Full
```

not a normal JDK 8 installation.

---

### `StyleConverterImpl` error

If you see:

```text
com/sun/javafx/css/StyleConverterImpl
```


Use:

```text
Java 8 + JavaFX 8
```

---

### MySQL connection error

Check:

```powershell
Get-Service MySQL80
```

If stopped:

```powershell
Start-Service MySQL80
```

---

### Access denied for root

Check your MySQL username/password and the application's database configuration.

---

# 💻 Development

Main source code:

```text
src/main/java/
```

Resources:

```text
src/main/resources/
```

External libraries:

```text
lib/
```

Database:

```text
sql/inventory.sql
```

Main class:

```text
main.Main
```

---

# 📸 Screenshots

Add screenshots here:

```text
images/
```

Example:

```markdown
![Inventory](images/inventory.png)
![Rentals](images/rentals.png)
![Sells](images/sells.png)
```

---

# 📌 Important

This is an older JavaFX project and requires its original JavaFX 8 ecosystem.

**Recommended environment:**

```text
Windows
Java 8
JavaFX 8
MySQL 8
IntelliJ IDEA
```


---
