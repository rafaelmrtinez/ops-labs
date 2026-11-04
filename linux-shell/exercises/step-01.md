# Step 01: Who Am I, and Where Am I?

## Objective

Before working with a Linux system, we need to understand our current environment.

In this scenario, we'll identify the user account we're operating under, determine our current working directory, and locate our home directory.

## Tasks

### 1. Identify the current user

Let's find out which Linux user account we're currently using.

Run:

```bash
whoami
```

The command displays the username associated with our current session.

**Think about it:** Are we operating as `root` or as a regular user?

### 2. Identify our current location

Next, let's determine which directory we're currently working in.

Run:

```bash
pwd
```

The command displays the absolute path of our current working directory.

For example:

- `/root` means we're currently inside the root user's home directory.
- `/home/engineer` means we're inside a regular user's home directory.

### 3. Locate our home directory

Every Linux user has a home directory. We can access its location through the `HOME` environment variable.

Run:

```bash
echo "$HOME"
```

The command displays the value stored in the `HOME` variable.

Compare this result with the output of `pwd`.

Are they the same?

## Key Takeaways

- `whoami` identifies the current user.
- `pwd` displays our current working directory.
- `echo "$HOME"` displays the location of our home directory.
- Our current working directory and home directory are not necessarily the same.

We now have a basic understanding of our Linux session and the environment we're operating in.