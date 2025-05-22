# Step 3: Downloading and Converting SRA Data

Now that we’ve installed the SRA Toolkit, let’s download real sequencing data from the **NCBI Sequence Read Archive (SRA)** and convert it into the FASTQ format used for downstream analysis.

---

## Goal
We will:
- Use the `prefetch` command to download `.sra` files from NCBI
- Convert those `.sra` files into `.fastq` format using `fastq-dump`

---

## Choosing a Dataset
For this session, we’ll use **Escherichia coli** genome sequencing data:
- Project: [SRX8417101](https://www.ncbi.nlm.nih.gov/sra/SRX8417101)
- Run Accession: `SRR11866736`

---

## Step 1: Download the `.sra` File

Make sure you are in your `sra_tools` environment:
```bash
conda activate sra_tools
```

Now use the `prefetch` command:
```bash
prefetch SRR11866736
```

This downloads the `.sra` file into a default directory (usually `~/ncbi/public/sra`).

> You can customize the download directory with the `-O` option.

---

## Step 2: Convert `.sra` to `.fastq`

To convert the `.sra` file to FASTQ format:
```bash
fastq-dump --split-spot SRR11866736/SRR11866736.sra
```

### Explanation:
- `--split-spot`: splits paired-end reads properly into two `.fastq` files
- You’ll get: `SRR11866736_1.fastq` and `SRR11866736_2.fastq`

> Tip: Use `--gzip` if you want to compress the output FASTQ files to save space.

---

You now have your raw sequence files downloaded and ready for quality control.

➡️ Proceed to [04_fastqc_multiqc.md](04_fastqc_multiqc.md) to evaluate the quality of these reads using FastQC and MultiQC.
