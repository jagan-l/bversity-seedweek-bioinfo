# Chapter 9: Collaborating with Git

One of Git’s greatest strengths is how it enables multiple people to work on the same project. This chapter outlines a simple and effective collaboration workflow using Git and GitHub.

## Overview of a Git Collaboration Workflow

Here’s a typical sequence for working with collaborators:

1. Clone the shared remote repository.
2. Make your changes.
3. Stage and commit those changes locally.
4. Push your changes to the remote repository.
5. Pull in any changes others have made.

### Visualizing Git Collaboration

  <img src="https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/images/git_collabration.png" alt="Git collaboration workflow" width="500"/>
</p>

## Cloning a Repository

To copy a remote repository to your local machine:

```bash
git clone git@github.com:username/project-name.git
```

This command creates a directory named after the project and initializes it as a Git repository.

## Making and Committing Changes

Once you’ve cloned the project, make changes as usual:

```bash
# Make your changes
git add filename
git commit -m "Describe your change"
```

## Pushing Changes to the Shared Repository

Push your work so others can access it:

```bash
git push origin main
```

This sends your commits to the remote branch.

## Pulling Changes from Others

To fetch and merge new changes that others have pushed:

```bash
git pull origin main
```

Always pull before pushing to minimize conflicts.

## Handling Merge Conflicts

If two people edit the same part of a file, Git can’t automatically merge the changes. This creates a **merge conflict**.

Git will mark the file and ask you to resolve the conflict manually by editing the file and then committing the resolved version:

```bash
git add resolved_file
git commit -m "Resolve merge conflict"
```

## Tips for Smooth Collaboration

- Pull before you push
- Write clear, specific commit messages
- Communicate about what files or areas you're working on
- Use `.gitignore` to keep large or temporary files out of the repository

---


