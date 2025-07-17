# Linux User & Group Management

## 📁 Important Files

| File Path          | Description                                      |
|--------------------|--------------------------------------------------|
| `/etc/passwd`      | Stores user account information                  |
| `/etc/shadow`      | Stores user passwords and password aging data    |
| `/etc/group`       | Stores group information                         |
| `/etc/sudoers`     | Defines users/groups allowed to run `sudo`       |

---

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
