# Chapter 7: Undoing and Reviewing Changes

Mistakes happen — and Git provides powerful tools to help you recover. Whether you accidentally staged the wrong file or want to review previous work, Git makes it possible to undo or inspect changes safely.

## Unstaging a File

If you’ve added a file to the staging area but don’t want to commit it yet, use:

```bash
git reset HEAD filename
```

This removes the file from the staging area but keeps the changes in your working directory.

## Discarding Local Changes

If you want to discard changes in your working directory and return a file to its last committed state:

```bash
git checkout -- filename
```

Be careful — this **cannot be undone** unless you’ve backed up the changes.

## Viewing Commit History

To see the complete list of commits made to the repository, run:

```bash
git log
```

This displays each commit with:
- Its unique SHA identifier
- The author and timestamp
- The commit message

To view a simplified one-line summary of each commit:

```bash
git log --oneline
```

## Viewing Differences Between Versions

Use `git diff` to examine changes:

- To see what’s changed in the working directory:
  ```bash
  git diff
  ```

- To compare staged files to the last commit:
  ```bash
  git diff --staged
  ```

- To compare two commits by SHA:
  ```bash
  git diff commit1 commit2
  ```

## Summary

Understanding how to undo and review changes helps reduce the fear of making mistakes. Git is designed to let you explore, test, and fix things without starting over — as long as you commit regularly and work thoughtfully.

---

In the next chapter, we’ll look at how to work with remote repositories to collaborate with others on GitHub.

Next: [Chapter 8 – Using Remotes and GitHub](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_8_remotes.md)
