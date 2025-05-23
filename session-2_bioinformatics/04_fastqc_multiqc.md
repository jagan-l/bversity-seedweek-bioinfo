# Step 4: Quality Control with FastQC and MultiQC

Before aligning reads to a reference genome, it's important to check the quality of the sequencing data. This step helps identify issues such as low-quality base calls, adapter contamination, and inconsistent read lengths.

We’ll use two tools:
- FastQC to perform per-sample quality checks
- MultiQC to summarize FastQC results across multiple files

## 1. Install and Run FastQC

First, create a new Conda environment for FastQC:

```bash
conda create -n fastqc_env
conda activate fastqc_env
```

Then, install FastQC:

```bash
conda install bioconda::fastqc
```

Assuming your FASTQ files are named `SRR11866736_1.fastq` and `SRR11866736_2.fastq`, create an output directory:

```bash
mkdir -p fastqc_out
```

Run FastQC on the files:

```bash
fastqc SRR11866736_1.fastq SRR11866736_2.fastq -o fastqc_out/
```

This will generate `.html` and `.zip` reports for each FASTQ file.

## 2. Summarize Results with MultiQC

Create a new Conda environment for MultiQC:

```bash
conda create -n multiqc_env
conda activate multiqc_env
```

Install MultiQC:

```bash
conda install bioconda::multiqc
```

Run MultiQC on the FastQC output folder:

```bash
multiqc fastqc_out/ -o fastqc_out/
```

This will generate a single HTML report that consolidates results from all FastQC reports.

## 3. Download the Report to Your Local Machine

To view the `multiqc_report.html` on your local machine, use `rsync` to copy it from the remote server:

```bash
rsync -avz username@remote.server:/path/to/fastqc_out/multiqc_report.html ./
```

### Explanation of Flags:
- `-a`: archive mode, preserves metadata
- `-v`: verbose output
- `-z`: compress file data during transfer

Replace `username@remote.server` and the file path with your actual SSH credentials and directory location.

## Summary

You now have a clear understanding of your sequencing data quality and a local copy of the summary report.

Next, we’ll prepare the reference genome and set up for alignment.

Next: [Step 5 – Setting Up Bowtie2 and Preparing the Reference Genome](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/05_bowtie2_setup.md)
