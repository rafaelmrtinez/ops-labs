# Redirecting Outputs

Welcome, engineers! Glad to have you here at OpsLabs.

As we work with Linux, we'll encounter situations where we need to save command outputs, capture errors, or keep our terminals clean.

That's where **output redirection** comes in.

## Understanding Standard Streams

Linux processes use three standard streams:

- **STDIN (0)** – Standard input received by a process.
- **STDOUT (1)** – Normal command output.
- **STDERR (2)** – Error messages and diagnostic output.

## Common Redirection Operators

| Operator | Meaning | Example |
|---|---|---|
| `>` | Overwrite a file | `echo "Hello" > output.txt` |
| `>>` | Append to a file | `echo "Hello" >> output.txt` |
| `2>` | Redirect errors | `ls /invalid 2> errors.log` |
| `2>>` | Append errors | `ls /invalid 2>> errors.log` |
| `2>&1` | Redirect errors to STDOUT | `command > output.log 2>&1` |
| `<` | Read input from a file | `sort < names.txt` |
| `\|` | Pipe output to another command | `ls -l \| grep txt` |

**Bonus:** `/dev/null` is a special device file that discards anything written to it.

```bash
command > /dev/null 2>&1
```

## Let's Get Hands-On!

We know the concepts. Now let's put them into practice.

**Hit Start, engineers. Let's get to work!**