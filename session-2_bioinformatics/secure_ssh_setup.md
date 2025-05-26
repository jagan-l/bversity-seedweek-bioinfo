# Setting Up Secure SSH Access from Laptop to GCP Server

To enable secure access from your local machine to a GCP server using SSH, follow these steps:

---

## Step 1: Login via Browser SSH

1. Go to: **Google Cloud Platform → Compute Engine → VM Instances**
2. Click the **SSH** button next to your virtual machine.
3. This opens a terminal in the browser. You're now logged in as a working user.

---

## Step 2: Generate and Add Your Public Key

### On your laptop:

Generate an SSH key pair (if you don't have one):

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/gcp_bio_key
```

- This creates two files:
  - `~/.ssh/gcp_bio_key` — your private key (keep this safe)
  - `~/.ssh/gcp_bio_key.pub` — your public key (to be added to the server)

Now view your public key:

```bash
cat ~/.ssh/gcp_bio_key.pub
```

You’ll get output like:

```
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD... yourname@yourmachine
```

### In the GCP browser SSH terminal:

Paste your public key into the authorized keys:

```bash
mkdir -p ~/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD... yourname@yourmachine' >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

This will allow your local system to connect securely using the private key.

---

## Step 3: Connect from Your Laptop Terminal

Use this command from your local system terminal:

```bash
ssh -i ~/.ssh/gcp_bio_key your_username@external_ip
```

**Note:**
- Replace `your_username` with the output of `whoami` inside the GCP VM.
- Replace `external_ip` with the IP shown in the GCP dashboard under VM Instances.

You are now connected to your server via terminal and ready to begin the workflow.
