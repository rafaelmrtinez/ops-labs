# Step 01: Understanding the Shell Environment

Before working with Linux commands, we need to understand the environment we're interacting with.

The shell is a command-line interface that allows us to communicate with the operating system. Through it, we can execute commands, inspect our environment, and manage system resources.

In this scenario, we'll identify the current user, inspect our working directory, and examine important environment information.

## Our Tasks

**1. Identify the current user**

Run:

```bash
whoami
```

This displays the username of the account currently running the shell.

**2. Identify our current working directory**

Run:

```bash
pwd
```

This displays the absolute path of our current directory.

**3. Inspect our home directory**

Run:

```bash
echo "$HOME"
```

The `HOME` environment variable contains the path to our user's home directory.

**4. Inspect our configured login shell**

Run:

```bash
echo "$SHELL"
```

This displays the shell configured for our user account. It does not necessarily identify the shell process currently running.

**5. Identify the current shell process**

Run:

```bash
ps -p $$ -o comm=
```

This displays the command name of the current shell process.

## What We Should Understand

After completing these commands, we should be able to distinguish between:

- **Current user:** The account executing our commands.
- **Working directory:** The directory in which our shell is currently operating.
- **Home directory:** Our user's default personal directory.
- **Configured login shell:** The shell assigned to our user account.
- **Current shell process:** The shell process currently executing our commands.

We will use these concepts throughout the remaining scenarios.