# Step 1: Installing Conda and Configuring Bioconda

## Why Installing Software the Right Way Matters

In bioinformatics, we use a wide variety of tools — tools for quality control, genome alignment, classification, and more. Each tool may depend on a specific version of Python, R, or other libraries. 

Imagine trying to install all of them on a single system:

- One tool might require Python 3.8  
- Another might only work with Python 3.10  
- Some require libraries that conflict with others  

This can easily lead to frustrating compatibility issues and waste valuable time.

### So What’s the Solution?

We use **Conda environments** — isolated spaces where we install only what’s needed for a particular task. This ensures:

- Tools don’t interfere with each other  
- You can safely update or remove one tool without affecting others  
- Switching tools is as simple as:

```bash
conda activate fastqc_env
conda deactivate
```

---
### What This Diagram Shows

  <img src="https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/images/binary_conda_installation_comparision.png" alt="Using Binaries vs Using Environments" width="400"/>
</p>
This visual compares two approaches:

**Left Side: Direct Installation**
- Tools share the same environment
- Conflicts are common
- Harder to manage or reproduce

**Right Side: Environment-Based Installation**
- Tools live in isolated environments
- Easy to manage, upgrade, or share
- Reproducible and cleaner setup

---

## ✅ Why We’re Installing Miniconda

**Miniconda** is a lightweight alternative to Anaconda. It provides access to the Conda package and environment manager without preinstalling extra software we don’t need.

Ideal for:
- Working on Linux servers  
- Keeping installations fast and lean  
- Maintaining full control over installed tools  

We’ll begin by installing Miniconda and configuring Bioconda — a channel that hosts thousands of bioinformatics tools.

---

## Installing Miniconda

Run the following commands to install Miniconda:

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

Follow the prompts:
- Press `Enter` to scroll through the license
- Type `yes` to accept the terms
- Confirm or set the installation directory
- Once installed, run `source ~/.bashrc` or restart your terminal

---

## Setting Up Bioconda Channels

To access thousands of bioinformatics tools, configure your Conda channels like this:

```bash
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict
```

This setup ensures Conda resolves dependencies from trusted, community-maintained sources in the correct order.

---

Once complete, your system is ready to create isolated environments and install tools for sequencing, QC, alignment, and more.

➡️ Proceed to [02_sra_tools.md](02_sra_tools.md) to create your first tool-specific environment and install the SRA Toolkit.
