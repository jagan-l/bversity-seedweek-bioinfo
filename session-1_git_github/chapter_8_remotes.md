# Chapter 8: Using Remotes and GitHub

Git is powerful on your local machine, but its full potential is unlocked when used with remote repositories. Remote repositories allow you to collaborate with others, back up your code, and share your work online, most commonly through GitHub.

## What Is a Remote?

A remote is a version of your repository that’s hosted elsewhere, typically on GitHub. You can connect your local Git project to a remote, and then use Git to push and pull changes.

## Step 1: Create a Repository on GitHub

1. Go to [https://github.com](https://github.com)
2. Click **New repository**
3. Name your repository (e.g., `project-test`)
4. Leave “Initialize with README” unchecked (since we’ll push from local)
5. Click **Create repository**

GitHub will give you a URL you’ll use to connect your local repository.

## Step 2: Add a Remote to Your Local Repository

From your terminal in the local project directory, add the GitHub repository as a remote:

```bash
git remote add origin git@github.com:your-username/project-test.git
```

Now Git knows where your remote repository lives.

## Step 3: Push to the Remote Repository

To send your local commits to GitHub:

```bash
git push origin main
```

Replace `main` with your branch name if different.

The first time you push, Git may prompt you to set the upstream branch:

```bash
git push -u origin main
```

## Step 4: Pull Changes from GitHub

If someone else makes changes or you work on another machine, you’ll need to pull updates:

```bash
git pull origin main
```

This fetches the changes from the remote and integrates them into your local branch.

## Summary

Remote repositories allow you to:
- Share code with collaborators
- Back up your work
- Track changes across different machines

In the next chapter, we’ll walk through a basic collaboration workflow using remotes, where multiple people push and pull changes to the same project.

Next: [Chapter 9 – Collaborating with Git](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_9_collaboration.md)
