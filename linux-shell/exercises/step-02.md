# Step 02: Where Should I Create My Workspace?

## Objective

When working with Linux, we often need a dedicated directory to organize our files and activities.

In this scenario, we'll navigate to our home directory, create a workspace named `shell-practice`, and inspect its contents.

## Tasks

### 1. Navigate to our home directory

Linux provides the `~` shortcut to represent the current user's home directory.

Run:

```bash
cd ~
```

Check our current location:

```bash
pwd
```

We should now be inside our home directory.

### 2. Create our workspace

Let's create a directory named `shell-practice`.

Run:

```bash
mkdir shell-practice
```

The `mkdir` command creates a new directory in our current location.

### 3. Inspect our workspace

Use `ls` to list the contents of our home directory:

```bash
ls
```

Look for the `shell-practice` directory in the output.

We can also display more information using:

```bash
ls -la
```

This provides a detailed listing, including hidden entries, permissions, ownership, and timestamps.

## Key Takeaways

- `cd` changes our current working directory.
- `~` represents the current user's home directory.
- `mkdir` creates a new directory.
- `ls` displays directory contents.
- `ls -la` provides a detailed directory listing.

Our `shell-practice` directory will serve as our workspace for the next exercise.