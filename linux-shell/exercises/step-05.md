# Step 05: Understanding Command Types

## Objective

In this final scenario, we'll learn how the shell identifies commands. Some commands are built directly into the shell, while others are separate executable programs available on the filesystem.

## Tasks

### 1. Identify a shell built-in

Run:

```bash
type cd
```

The output should identify `cd` as a shell built-in.

Now inspect another command:

```bash
type echo
```

In Bash, `echo` is also a shell built-in.

### 2. Identify external commands

Run:

```bash
type ls
```

Then:

```bash
type date
```

These commands are typically external executables on Ubuntu. The output should show their executable paths.

### 3. Display only the command type

Use the `-t` option to display the command type:

```bash
type -t cd
```

Expected output:

```text
builtin
```

Check another built-in:

```bash
type -t echo
```

Now check an external command:

```bash
type -t ls
```

Expected output:

```text
file
```

### 4. Compare command types

Run the following commands:

```bash
type -t pwd
type -t mkdir
type -t uptime
type -t date
```

Observe which commands are built-ins and which are external executables.

### 5. Prepare for verification

Save the commands from our current Bash session into the history file:

```bash
history -a

## Key Concepts

- **Shell built-in:** A command implemented directly by the shell, such as `cd` and `echo`.
- **External command:** A separate executable program that the shell locates and runs, such as `ls` and `date`.
- **`type`:** A shell command that identifies how a command name is interpreted.
- **`type -t`:** Displays a short classification, such as `builtin` or `file`.
