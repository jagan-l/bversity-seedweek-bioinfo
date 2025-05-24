# Chapter 3: Initializing a Git Repository

Once Git is configured on your system, you can start using it to manage your projects. The first step is to initialize a Git repository.

## What Is a Git Repository?

A Git repository is a folder that Git tracks. It contains your project files and a hidden `.git/` directory where Git stores version history and configuration information.

## Step 1: Create a Project Directory

Start by creating a folder for your project, if you haven’t already:

```bash
mkdir project-name
cd project-name
```

## Step 2: Initialize the Repository

Inside your project folder, run:

```bash
git init
```

This command sets up Git tracking in the current directory. It creates a hidden `.git/` folder that should not be modified manually.

You’ll see a message like:

```
Initialized empty Git repository in /path/to/project/.git/
```

At this point, Git is ready to start tracking your work.

## Step 3: Understand What Git Is Tracking

By default, Git doesn’t automatically track files. You decide which files to include.

To see the current tracking status, use:

```bash
git status
```

This command helps you understand what Git sees in your current folder. It categorizes files into:

- **Untracked**: These are new files in your folder that Git is not yet managing. They won’t be saved in a commit unless you explicitly add them with `git add`.

- **Tracked**: These are files Git is already aware of. If they haven’t changed, Git will show them as "clean." If you modify them, they will appear as "modified" until staged again.

- **Staged**: These are changes that you have marked to be included in the next commit using `git add`. Staging allows you to selectively include only specific changes in a commit.

For example, if you’ve modified three files but only want to commit one, you can add just that one to the staging area and commit it independently.

### Visual Representation

The diagram below shows how files move from the working directory to the repository through staging and committing:

  <img src="https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/images/git_stating.png" alt="Git staging workflow" width="300"/>
</p>

In the next chapter, we will add files to Git and commit the first snapshot of our project.

Next: [Chapter 4 – Adding and Committing Files](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_4_add_commit.md)
