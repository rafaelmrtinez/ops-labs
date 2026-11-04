# Step 05: How Does the Shell Interpret Commands?

## Objective

Understand how the shell identifies commands and distinguishes between shell built-ins, executable programs, and aliases.

## Tasks

### 1. Identify a shell built-in

Run:

```bash
type cd
```

The output should indicate that `cd` is a shell built-in.

A shell built-in is a command implemented directly by the shell. It does not need to launch a separate executable program.

### 2. Identify an executable program

Run:

```bash
type ls
```

The output should show the location of the `ls` executable, or indicate that it is an alias or another command definition.

Unlike `cd`, `ls` is normally an external program that the shell locates through the directories listed in the `PATH` environment variable.

**NOTE:** Alias is commonly used when we want to shorten a lengthly command. We can also create our own.

```bash
# Try this!
alias utime='uptime'

# Execute this separately after the alias.
utime

# Example output
 14:34:56 up 25 min,  0 user,  load average: 0.03, 0.09, 0.09
```

### 3. Inspect another command

Run:

```bash
type echo
```

Observe how the shell identifies `echo`. Depending on the shell environment, it may be recognized as a shell built-in.

Compare the results of all three commands.

## Key Takeaways

- The shell interprets commands before executing them.
- `type` identifies how the current shell recognizes a command.
- Shell built-ins are implemented directly by the shell.
- External commands are separate executable programs.
- Aliases can provide alternative names or definitions for commands.

## Commands Introduced

| Command | Purpose |
|---|---|
| `type` | Identify how the shell interprets a command |

