# proleap-ec2-healthcheck
Linux Server Health Check Automation using Git and GitHub for ProLEAP Academy Assignment.
# EC2 Health Check Project

## Project Description

This project is developed as part of the ProLEAP Academy Git and GitHub Practical Assignment. It automates the collection of Linux server health information and generates a timestamped health report.

---

## Features

- Displays current date and time
- Shows hostname and logged-in user
- Displays operating system details
- Shows kernel version
- Displays system uptime
- Shows CPU load
- Displays memory utilization
- Shows disk utilization
- Displays IP address
- Lists top 5 memory-consuming processes
- Shows running services count
- Displays failed systemd services
- Shows listening ports
- Generates a timestamped health report
- Saves reports in the reports directory

---

## Prerequisites

- Ubuntu Linux
- Git Installed
- Bash Shell
- AWS EC2 Instance

---

## Installation

Clone the repository:

```bash
git clone https://github.com/YOUR_GITHUB_USERNAME/proleap-ec2-healthcheck.git
```

Move into the project directory:

```bash
cd proleap-ec2-healthcheck
```

---

## Execution Steps

Make the script executable:

```bash
chmod +x healthcheck.sh
```

Run the script:

```bash
./healthcheck.sh
```

---

## Project Structure

```
proleap-ec2-healthcheck/
├── README.md
├── healthcheck.sh
├── .gitignore
├── docs/
│   └── execution-guide.md
└── reports/
    └── sample-health-report.txt
```

---

## Generated Reports

The script generates timestamp-based health reports inside the **reports** directory.

Example:

```
health-report-20260717-103000.txt
```

---

## Git Workflow

- Create Repository
- Clone Repository
- Create Project Files
- Commit Changes
- Push to GitHub
- Create Feature Branch
- Merge Branch
- Pull Latest Changes
- Fresh Clone Validation

---

## Author

**Bibhu Prasad Panigrahy**

Training: **ProLEAP Academy**

---

## License

This project is created for educational purposes as part of the ProLEAP Academy Git Practical Assignment.
---

## Version

Version: 1.0

Last Updated: July 2026
## Repository Updated from GitHub Web Interface
