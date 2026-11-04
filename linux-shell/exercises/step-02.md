# Step 02: Exploring the Home Directory

## Objective

In this scenario, we'll explore our home directory and practice navigating to it. We'll also create a working directory that we'll use in the following exercises.

## Tasks

### 1. Navigate to the home directory

Use the `cd` command with the `~` shortcut to move to your home directory.

```bash
cd ~
```

Display your current working directory:

```bash
pwd
```

The output should show the absolute path of your home directory.

### 2. Create a working directory

We'll create a directory named `shell-practice` inside our home directory.

```bash
mkdir -p shell-practice
```

The `mkdir` command creates directories. The `-p` option prevents an error if the directory already exists.

### 3. Navigate into the working directory

Move into the directory we just created:

```bash
cd ~/shell-practice
```

Check our current location:

```bash
pwd
```

### 4. Inspect the directory

Use `ls` to list the contents of the current directory:

```bash
ls -la
```

The directory may be empty. That is expected.

## Completion Check

Run the verification script when you have completed the tasks.

The check confirms that `shell-practice` exists inside your home directory and is owned by your current user.

### 5. Prepare for verification

Save the commands from our current Bash session into the history file:

```bash
history -a
