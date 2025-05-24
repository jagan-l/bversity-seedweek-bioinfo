# Chapter 4: Adding and Committing Files

Now that you’ve initialized a Git repository, the next step is to tell Git which files to track and save your first snapshot.

Git doesn’t track every file by default—you have to explicitly add them.

## Step 1: Check the Status

First, check which files are currently untracked:

```bash
git status
```

This will list any files in your directory that Git hasn’t seen before.

## Step 2: Add Files to Staging

To start tracking a file, use `git add`. This moves the file into the **staging area**, which is where Git collects changes before making a commit.

```bash
git add filename
```

You can also add all untracked or changed files at once:

```bash
git add .
```

Use this with care—it adds everything in the current directory and subdirectories.

## Step 3: Make Your First Commit

A **commit** is like a snapshot of your project at a point in time. It includes all files currently in the staging area.

```bash
git commit -m "Initial commit"
```

The `-m` flag lets you write a short message describing what you’re committing.

## Best Practice for Commit Messages

- Keep it short and meaningful (e.g., "Add script for FASTQ QC")
- Write in the present tense
- Describe *what* and *why*, not *how*

## Step 4: Check What Changed

Use `git diff` to see the difference between your working directory and your last commit:

```bash
git diff
```

You can also use:

```bash
git log
```

to see a history of all commits.

---

In the next chapter, we’ll look at how Git handles file modifications and how to manage tracked vs staged changes.

Next: [Chapter 5 – Managing Modified Files](chapter_5_manage_changes.md)
