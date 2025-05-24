# Chapter 2: Setting Up Git

Before we can use Git, we need to configure it with your name and email. This information is attached to each commit you make and is essential for tracking who made which changes.

## Step 1: Configure Git

Open your terminal and run the following commands:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

This sets up your identity for all Git projects on your system.

## Step 2: Create a GitHub Account

If you don’t already have one, go to https://github.com and sign up. GitHub is the platform we’ll use to store and share repositories online.

## Step 3: Generate an SSH Key

SSH keys allow you to securely connect your computer to GitHub without typing your username and password every time.

To generate an SSH key, use:

```bash
ssh-keygen -t ed25519 -C "your.email@example.com"
```

Follow the prompts. You can press Enter to accept the default file location.

## Step 4: Add Your SSH Key to GitHub

1. Copy the SSH key to your clipboard:

```bash
cat ~/.ssh/id_ed25519.pub
```

2. Log in to GitHub, go to **Settings** → **SSH and GPG keys**, and click **New SSH key**.
3. Paste your key, give it a title, and save.

## Step 5: Verify Your SSH Connection

To confirm everything is working, run:

```bash
ssh -T git@github.com
```

You should see a message like:

```
Hi username! You've successfully authenticated.
```

This means your computer is securely connected to GitHub using SSH.

In the next chapter, we’ll initialize a Git repository and begin tracking files.

Next: [Chapter 3 – Initializing a Repository](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-1_git_github/chapter_3_initialize_repo.md)
