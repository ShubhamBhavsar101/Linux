# Linux Command Reference

## 📁 Directory Commands
- `cd` – Change directory  
- `mkdir` – Create a new directory  
- `ls` – List directory contents  
- `touch` – Create an empty file  
- `pwd` – Print current working directory  
- `rm` – Remove files or directories  
- `cp` – Copy files or directories  
- `mv` – Move or rename files or directories  

## 🧠 Process Management
- `ps -ef` – List all running processes  
- `top` – Display real-time CPU and memory usage  
- `htop` – Interactive and visual process viewer  
- `free` – Show memory usage statistics  
- `nproc` – Show number of available CPU cores  
- `kill` – Terminate a process by PID  
- `killall` – Terminate all processes by name  

## 📝 Text Processing
- `grep` – Search for lines matching a pattern  
- `awk` – Pattern scanning and text processing tool  
- `sed` – Stream editor for filtering and transforming text  
- `|` – Pipe: send output of one command as input to another  
- `cat` – Display file contents  
- `echo` – Print text to the terminal  
- `vi` – Open the Vi text editor  
- `nano` – Simple and beginner-friendly text editor  

## 🔐 Permissions and Users
- `chmod` – Change file permissions (read/write/execute)  
- `chown` – Change file owner or group  
- `usermod` – Modify user account (e.g., add to a group)  
- `passwd` – Change user password  

## 🌐 Networking
- `ping` – Check connectivity to a host  
- `curl` – Transfer data from or to a server  
- `wget` – Download files from the web  
- `ifconfig` – Show network interfaces (deprecated, but still used)  
- `ip a` – Show IP addresses (modern alternative to `ifconfig`)  
- `netstat` – Display network connections (can be replaced by `ss`)  
- `ss` – Display detailed socket statistics  

## 📦 Package Management (Debian-based)
- `apt update` – Update package lists  
- `apt upgrade` – Upgrade installed packages  
- `apt install <package>` – Install a package  
- `apt remove <package>` – Remove a package  

## 🔧 System and File Utilities
- `df -h` – Show disk space usage  
- `du -sh <folder>` – Show disk usage of a folder  
- `uname -a` – Show system information  
- `history` – Show command history  
- `clear` – Clear the terminal screen  
- `man <command>` – Show manual page for a command  \

## 🐚 Shell Scripting
- `set -x` – Enable debug mode: print each command before execution  
- `set -e` – Exit immediately if any command fails  
- `set -o pipefail` – Return the exit code of the **leftmost failing command** in a pipeline  

---

# Linux User & Group Management

## 📁 Important Files

| File Path          | Description                                      |
|--------------------|--------------------------------------------------|
| `/etc/passwd`      | Stores user account information                  |
| `/etc/shadow`      | Stores user passwords and password aging data    |
| `/etc/group`       | Stores group information                         |
| `/etc/sudoers`     | Defines users/groups allowed to run `sudo`       |


## 👤 User Management

* View user info:  
  ```bash
    grep -i ^bob /etc/passwd
  ```

  Example Output:

  ```
  bob:x:1002:1002::/home/bob:/bin/sh
  ```
  ```
  USERNAME:PASSWORD:UID:GID:GECOS:HOMEDIR:SHELL
  ```

* Change password:

  ```bash
  passwd             # For current user
  passwd <username> # For specific user
  ```

* Delete a user:

  ```bash
  userdel <username>
  ```

---

## 🔐 Password Details

* View password entry:

  ```bash
  grep -i ^bob /etc/shadow
  ```

  Example Output:

  ```
  bob:$6$...:18188:0:99999:7:::
  ```
  ```
  USERNAME:PASSWORD:LASTCHANGE:MINAGE:MAXAGE:WARN:INACTIVE:EXPDATE
  ```

---

## 👥 Group Management

* Add a group:

  ```bash
  groupadd <groupname>
  ```

* Delete a group:

  ```bash
  groupdel <groupname>
  ```

* View user's group memberships:

  ```bash
  grep -i ^bob /etc/group
  ```
  ```
  GROUPNAME:PASSWORD:GID:MEMBERS
  ```

---
