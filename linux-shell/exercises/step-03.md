# Step 03: Navigating the Filesystem

## Objective

In this scenario, we'll practice moving between directories using absolute paths, relative paths, and directory shortcuts.

## Tasks

### 1. Inspect our current location

Start by checking the current working directory:

```bash
pwd
```

List its contents:

```bash
ls
```

### 2. Navigate to the root directory

Use an absolute path to move to the root of the Linux filesystem:

```bash
cd /
```

Check your location:

```bash
pwd
```

The output should be `/`.

### 3. Explore the root directory

List the directories and files available at the root:

```bash
ls
```

Look for familiar directories such as `home`, `etc`, `tmp`, and `var`.

### 4. Navigate using an absolute path

Move directly to the working directory created in the previous scenario:

```bash
cd ~/shell-practice
```

Check your location:

```bash
pwd
```

### 5. Navigate using relative paths

Move one directory up:

```bash
cd ..
```

Check your location:

```bash
pwd
```

Return to our working directory using a relative path:

```bash
cd shell-practice
```

Check your location again:

```bash
pwd
```

### 6. Use the previous-directory shortcut

Move to the previous directory:

```bash
cd -
```

Run the command again:

```bash
cd -
```

Observe how the shell switches between the two directories.

### 7. Prepare for verification

Save the commands from our current Bash session into the history file:

```bash
history -a