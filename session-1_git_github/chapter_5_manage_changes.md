# Chapter 5: Managing Modified Files

Once your files are being tracked by Git, changes to those files need to be carefully managed. This chapter explains how Git distinguishes between changes in your working directory and the staged state, and how you can use that to your advantage.

## What Happens When You Modify a Tracked File?

If you edit a file that Git is already tracking, it doesn’t automatically get included in the next commit. You need to add it to the staging area again:

```bash
git add filename
```

This explicitly tells Git that you want to include the updated version of the file in your next commit.

## Checking Changes with `git status`

After modifying a file, use:

```bash
git status
```

Git will show the file as “modified” but not yet staged. This means the changes exist in your working directory but haven’t been selected for commit.

## Viewing Differences with `git diff`

To see what has changed in the file compared to the last commit:

```bash
git diff
```

If you want to see the difference between the last committed version and what’s in the **staging area**, run:

```bash
git diff --staged
```

This is useful when you want to double-check what’s about to be committed.

## Summary of the States

Git uses three main areas to manage changes:

- **Working Directory**: Where you make changes to files.
- **Staging Area (Index)**: Where you prepare changes before committing.
- **Repository**: Where committed snapshots are stored permanently.

This separation helps you carefully choose what gets saved at each step.

In the next chapter, we’ll explore how to rename, delete, or ignore files in your repository the correct way using Git commands.

Next: [Chapter 6 – Moving, Removing, and Ignoring Files](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_6_file_management.md)
