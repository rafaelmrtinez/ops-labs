# Step 04: Working with Basic Commands

## Objective

In this scenario, we'll practice executing basic Linux commands and understand how arguments and options affect their behavior.

## Tasks

### 1. Display a message using `echo`

The `echo` command displays text in the terminal.

Run:

```bash
echo "Hello, Engineers!"
```

Try another message:

```bash
echo "We are learning Linux commands."
```

Observe how the text appears in the terminal.

### 2. Use multiple arguments

Pass multiple words to `echo`:

```bash
echo Linux Shell Practice
```

Notice that the command displays the supplied arguments as text.

### 3. Inspect system uptime

Run the `uptime` command:

```bash
uptime
```

The output provides information about how long the system has been running, the number of logged-in users, and the system load averages.

### 4. Use a command option

Run:

```bash
uptime -p
```

The `-p` option displays uptime in a more readable format.

Compare the output with the previous `uptime` command.

## Key Concepts

- **Command:** The program or shell instruction we execute, such as `echo` or `uptime`.
- **Argument:** Additional information supplied to a command, such as the message passed to `echo`.
- **Option:** A setting that changes how a command behaves, such as `-p` in `uptime -p`.

### 5. Prepare for verification

Save the commands from our current Bash session into the history file:

```bash
history -a