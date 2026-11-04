# Step 03: How Do I Move Around the Filesystem?

## Objective

Learn how to move between directories using relative paths and the parent directory shortcut.

## Tasks

### 1. Enter the workspace

From your home directory, navigate into the workspace created in the previous step:

```bash
cd shell-practice
```

Check your current location:

```bash
pwd
```

We should now be inside `shell-practice`.

### 2. Move to the parent directory

Use `..` to move one directory level up:

```bash
cd ..
```

Check your location again:

```bash
pwd
```

We should now be back in our home directory.

### 3. Return to the workspace

Navigate back into the workspace using its relative path:

```bash
cd shell-practice
```

List its contents:

```bash
ls
```

The directory may be empty. That is expected because we have not created any files yet.

## Key Takeaways

- `cd` changes the current working directory.
- A relative path starts from our current directory.
- `..` refers to the parent directory.
- `pwd` displays our current location.
- `ls` lists the contents of a directory.

## Commands Introduced

| Command | Purpose |
|---|---|
| `cd` | Change directories |
| `cd ..` | Move to the parent directory |
| `pwd` | Display the current working directory |
| `ls` | List directory contents |

