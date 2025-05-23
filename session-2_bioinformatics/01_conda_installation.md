# Step 1: Installing Conda and Configuring Bioconda

Before we dive into the tools and workflows used in bioinformatics, it's essential to first understand why environment management is important. In bioinformatics, we often use a wide range of software packages — for quality control, sequence alignment, classification, and so on. These tools are written in different languages, rely on different dependencies, and often conflict with one another.

Installing everything directly on your system can quickly lead to compatibility issues. You might encounter errors because one tool needs a different version of Python or a specific system library that clashes with another.

## Why Use Conda?

To manage this complexity, we use **Conda**, a package and environment manager that lets us:

- Create isolated environments for different tools or workflows
- Avoid version conflicts
- Keep things organized and reproducible

This way, each tool runs in its own self-contained workspace without interfering with others.

This visual compares two approaches:
 
  <img src="https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/images/binary_conda_installation_comparision.png" alt="Using Binaries vs Using Environments" width="400"/>
</p>



## Installing Miniconda

Miniconda is a lightweight distribution that gives you just Conda without any additional packages.

### Step-by-step Instructions
Run the following commands in your terminal to download and install Miniconda:

```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```

Follow the installer prompts:
- Press `Enter` to read through the license
- Type `yes` to accept
- Choose an installation location
- After installation, either restart your terminal or run `source ~/.bashrc` to activate Conda

## Setting Up Bioconda

Bioconda is a channel specifically designed for bioinformatics software. It hosts thousands of tools and pipelines.

To configure Conda to use Bioconda:

```bash
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict
```

This ensures that Conda pulls packages from the most appropriate and reliable sources in the correct order.

## Summary

With Miniconda installed and Bioconda configured, your system is now ready to install tools used in genomics, transcriptomics, and other areas of computational biology.

In the next step, we’ll use this setup to install the SRA Toolkit for downloading sequencing data from NCBI.

Next: [Step 2 – Setting Up the SRA Toolkit](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/02_sra_tools.md)
