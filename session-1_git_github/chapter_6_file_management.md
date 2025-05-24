# Chapter 6: Moving, Removing, and Ignoring Files

As your project grows, you’ll likely need to rename files, remove outdated ones, or avoid tracking certain files entirely. This chapter covers how to do these tasks in a way that Git understands and tracks properly.

## Moving or Renaming Files

Instead of using standard shell commands like `mv`, use Git’s built-in command so that the rename or move is recorded:

```bash
git mv old_filename new_filename
```

This ensures Git tracks the rename history properly.

## Removing Files

To delete a file and record that change in your repository:

```bash
git rm filename
```

This removes the file from your working directory and stages the deletion for commit.

If you remove the file manually (e.g., with `rm`) you’ll still need to tell Git to stage the change:

```bash
git rm filename
```

or, if already deleted:

```bash
git add -u
```

## Ignoring Unnecessary Files

Some files shouldn’t be tracked in a Git repository, especially in bioinformatics projects where we often work with:

- Large FASTQ, BAM, or intermediate files
- Log files, compiled files, or auto-generated output
- Temporary files created during runtime

To prevent Git from tracking these, create a `.gitignore` file in your repository.

### Example `.gitignore`

```
*.bam
*.sam
*.fastq
*.pyc
*.log
output/
__pycache__/
```

Git will now skip these files when checking for changes or untracked files.

## Why Ignoring Files Matters

Tracking large or auto-generated files makes your repository slower, harder to manage, and more difficult for collaborators to clone or use. Keeping the repository clean improves reproducibility and version control performance.

---

In the next chapter, we’ll explore how to undo changes, unstage files, and review commit history.

Next: [Chapter 7 – Undoing and Reviewing Changes](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_7_undo_review.md)
