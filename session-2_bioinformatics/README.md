# Session 2: Bioinformatics on a Remote Server

This session walks through a basic short-read sequencing workflow using common bioinformatics tools on a remote Linux server. It focuses on real-world tasks such as downloading public data, checking read quality, and aligning reads to a reference genome.

The steps are organized to reflect how bioinformatics pipelines are usually run in research labs or biotech teams.

---

## What You'll Do

- Set up a clean software environment using Conda  
- Download FASTQ files from NCBI SRA  
- Run quality control with FastQC and MultiQC  
- Download and index a reference genome  
- Align reads using Bowtie2

Each step is explained in a separate markdown file so you can follow them one at a time.

---

## Workflow Steps

| Step | Description | Link |
|------|-------------|------|
| 0 | Connect to your server via SSH | [step-0-connect-to-the-remote-server](https://github.com/jagan-l/bversity-seedweek-bioinfo/tree/main/session-2_bioinformatics#step-0-connect-to-the-remote-server) |
| 1 | Install Conda and set up Bioconda | [01_conda_installation.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/01_conda_installation.md) |
| 2 | Install the SRA Toolkit | [02_sra_tools.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/02_sra_tools.md) |
| 3 | Download sequencing data and convert to FASTQ | [03_download_sra_data.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/03_download_sra_data.md) |
| 4 | Run FastQC and summarize results with MultiQC | [04_fastqc_multiqc.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/04_fastqc_multiqc.md) |
| 5 | Download and index a reference genome | [05_bowtie2_setup.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/05_bowtie2_setup.md) |
| 6 | Align the reads to the reference | [06_align_reads.md](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/06_align_reads.md) |

---

## Step 0: Connect to the Remote Server

To run these steps, you need access to a Linux server. Connect from your laptop using SSH:

```bash
ssh your_username@remote_server_ip
```

**Example:**

```bash
ssh jagan@10.0.0.1
```

Once you're logged in, move to your project directory and start with Step 1.

---

---

## Requirements

- Access to a Linux server (via SSH)  
- Miniconda installed  
- Some command-line experience (bash)  
- Internet connection to download data and tools

---

## Start Here

After you connect to the remote server, start with [Step 1: Conda installation and setup](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/01_conda_installation.md)

This setup gives you a solid base to build more advanced workflows in the future.
