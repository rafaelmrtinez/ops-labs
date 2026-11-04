## Level 3 – Capturing Errors

**Difficulty:** Moderate

**Situation:**

We're investigating a command that attempts to access multiple directories. Some directories might not exist, and we need to keep track of those errors.

**Task:**

Execute a command that lists `/etc` and `/directory-that-does-not-exist`, redirecting error messages into `errors.log`.

**Expected Result:**

Normal output should remain in the terminal, while error messages should be saved in `errors.log`.
