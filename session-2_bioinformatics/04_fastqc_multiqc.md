# Step 4: Quality Control with FastQC and MultiQC

Now that we’ve downloaded and converted our sequencing data into FASTQ format, it’s time to check the quality of these reads. Poor-quality data can lead to unreliable downstream analysis, so this step is critical.

We’ll use two widely used tools:
- **FastQC**: Provides quality metrics for individual FASTQ files.
- **MultiQC**: Aggregates FastQC reports into a single, readable summary.

---

## Step 1: Create and Activate a FastQC Environment

Start by creating a new environment for FastQC:
```bash
conda create -n fastqc_env
conda activate fastqc_env
```

Now install FastQC using Bioconda:
```bash
conda install bioconda::fastqc
```

---

## Step 2: Run FastQC on Your FASTQ Files

Let’s assume your downloaded files are named:
- `SRR11866736_1.fastq`
- `SRR11866736_2.fastq`

First, create an output directory:
```bash
mkdir  fastqc_out
```

Run FastQC:
```bash
fastqc SRR11866736_1.fastq SRR11866736_2.fastq -o fastqc_out/
```

This generates `.html` and `.zip` reports for each FASTQ file.

> Output files will be saved in the `fastqc_out` folder.

---

## Step 3: Install and Run MultiQC

Now we’ll summarize the individual reports using MultiQC.

First, create a new environment:
```bash
conda create -n multiqc_env
conda activate multiqc_env
```

Install MultiQC:
```bash
conda install bioconda::multiqc
```

Run MultiQC on the FastQC output directory:
```bash
multiqc fastqc_out/ -o fastqc_out/
```

This will generate a single `multiqc_report.html` summarizing all quality checks.

---

## Step 4: Download the MultiQC Report to Your Local System

### 🔹 What is `rsync`?
`rsync` is a fast and secure utility for copying files between machines. It works over SSH, which means your data is encrypted during transfer.

### 🔹 Basic Syntax
```bash
rsync [options] user@remote_host:/path/to/file /local/destination
```

### 🔹 Common Options Used:
- `-a`: archive mode, preserves permissions and timestamps
- `-v`: verbose mode, shows progress
- `-z`: compress file data during the transfer (saves bandwidth)

### 🔹 Example Command
Run this on your **local laptop**:
```bash
rsync -avz jagan@10.0.0.1:/home/jagan/bioinfo_project/fastqc_out/multiqc_report.html .
```

Replace:
- `jagan@10.0.0.1` with your actual remote SSH login
- `/home/jagan/...` with the full path to the `multiqc_report.html` file on the server
- `./` with your desired destination folder on the laptop

This command securely downloads the MultiQC report to your current working directory.

---

You now have a comprehensive view of your sequencing data quality and a local copy of the summary report for reference or sharing.

➡️ Next, we’ll move on to reference genome preparation in [05_bowtie2_setup.md](05_bowtie2_setup.md).
