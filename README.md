# Bash Utility Scripts

A collection of useful Bash scripts developed as part of the Linux/Bash course.
The project contains ten standalone scripts that automate common system administration and file management tasks.

---

# Team Members

- **Yarin Luder** (212948376)
- **Liya Joni** (214695173)

---

# Division of Work

## Liya's Scripts

### 1. backup.sh
Creates a compressed (`.tar.gz`) backup of a selected directory.

### 2. generate_password.sh
Generates a secure random password containing uppercase letters, lowercase letters, digits, and special characters.

### 3. user_info.sh
Displays information about the currently logged-in user, including username, home directory, groups, and default shell.

### 4. summary.sh
Displays a summary of a directory, including the number of files, directories, and symbolic links.

### 5. sort_file.sh
Sorts the contents of a text file alphabetically and saves the result into a new file.

---

## Yarin's Scripts

### 1. check_internet.sh
Checks whether the computer has an active Internet connection by pinging Google's DNS server (8.8.8.8).

### 2. add_prefix.sh
Adds a user-defined prefix to every `.txt` file inside a specified directory.

### 3. delete_old_files.sh
Deletes files older than a specified number of days from a selected directory.

### 4. weather.sh
Retrieves the current weather for a given city using the wttr.in online weather service.

### 5. ascii_clock.sh
Displays a live digital clock in ASCII art using the `figlet` package.

---

# Running the Scripts

Make the scripts executable:

```bash
chmod +x Scripts/*.sh
```

Run a script using:

```bash
./Scripts/script_name.sh [arguments]
```

---

# Script Usage

## backup.sh

Creates a compressed backup of a directory.

### Usage

```bash
./Scripts/backup.sh <directory_path>
```

### Required Input

- Path to an existing directory.

### Output

A `.tar.gz` backup file inside the `backups` folder.

---

## generate_password.sh

Generates a random secure password.

### Usage

```bash
./Scripts/generate_password.sh
```

### Required Input

None.

### Output

A randomly generated password.

---

## user_info.sh

Displays information about the current user.

### Usage

```bash
./Scripts/user_info.sh
```

### Required Input

None.

### Output

- Username
- Home directory
- User groups
- Default shell

---

## summary.sh

Shows statistics about a directory.

### Usage

```bash
./Scripts/summary.sh [directory]
```

### Required Input

Optional directory path.

If omitted, the current directory is analyzed.

### Output

- Number of files
- Number of directories
- Number of symbolic links

---

## sort_file.sh

Sorts a text file alphabetically.

### Usage

```bash
./Scripts/sort_file.sh <filename>
```

### Required Input

Path to a text file.

### Output

Creates:

```
sorted_<filename>
```

---

## check_internet.sh

Checks Internet connectivity.

### Usage

```bash
./Scripts/check_internet.sh
```

### Required Input

None.

### Output

Displays whether the Internet connection is active.

---

## add_prefix.sh

Adds a prefix to every `.txt` file in a directory.

### Usage

```bash
./Scripts/add_prefix.sh <directory> <prefix>
```

### Required Input

- Directory path
- Prefix string

### Output

All text files are renamed with the specified prefix.

---

## delete_old_files.sh

Deletes files older than a specified number of days.

### Usage

```bash
./Scripts/delete_old_files.sh <directory> <days>
```

### Required Input

- Directory path
- Number of days

### Output

Old files are deleted.

---

## weather.sh

Displays the weather forecast for a city.

### Usage

```bash
./Scripts/weather.sh <city_name>
```

### Required Input

City name.

### Output

Current weather information from wttr.in.

---

## ascii_clock.sh

Displays a real-time ASCII clock.

### Usage

```bash
./Scripts/ascii_clock.sh
```

### Required Input

None.

### Output

A live updating ASCII digital clock.

---

# Project Structure

```
Scripts/
├── add_prefix.sh
├── ascii_clock.sh
├── backup.sh
├── check_internet.sh
├── delete_old_files.sh
├── generate_password.sh
├── sort_file.sh
├── summary.sh
├── user_info.sh
└── weather.sh
```

---

# Requirements

- Bash
- tar
- curl (used by `weather.sh`)
- figlet (used by `ascii_clock.sh`)
- Internet connection (for `weather.sh` and `check_internet.sh`)

---

# Notes

- Some scripts automatically install missing dependencies (`curl` or `figlet`) if they are not already installed.
- All scripts were developed and tested on Ubuntu Linux.
