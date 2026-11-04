# Step 04: How Do I Inspect Basic System Information?

## Objective

Learn how to inspect the system's current date and time and check how long the machine has been running.

## Tasks

### 1. Check the system date and time

Run:

```bash
date
```

Observe the displayed date, time, and timezone.

This is useful when checking timestamps, investigating issues, or coordinating activities across systems.

### 2. Check system uptime

Run:

```bash
uptime
```

Observe the information displayed:

- **Current time:** The system's current time.
- **Uptime:** How long the system has been running.
- **Users:** Number of users currently logged in.
- **Load average:** Average system load over the last 1, 5, and 15 minutes.

A system's uptime helps us determine whether it has recently restarted or has been running continuously.

## Key Takeaways

- `date` displays the system's current date and time.
- `uptime` displays how long the system has been running.
- Load averages provide an overview of system activity over time.
- Basic system information helps us understand the environment before troubleshooting.

## Commands Introduced

| Command | Purpose |
|---|---|
| `date` | Display the system date and time |
| `uptime` | Display system uptime and load averages |

