# Step 3: Downloading and Converting SRA Data

With the SRA Toolkit installed, we’re now ready to retrieve sequencing data from NCBI’s Sequence Read Archive (SRA). This step will guide you through downloading a dataset and converting it into the FASTQ format, which is required for downstream analysis.

## 1. Select a Dataset

For this workshop, we’ll use an example dataset from *Escherichia coli*:
- BioProject: [SRX8417101](https://www.ncbi.nlm.nih.gov/sra/SRX8417101)
- Run Accession: `SRR11866736`

This run contains paired-end reads from Illumina MiSeq sequencing.

## 2. Download the `.sra` File Using `prefetch`

Ensure you are inside the `sra_tools` Conda environment:

```bash
conda activate sra_tools
```

Then, use the `prefetch` command to download the SRA file:

```bash
prefetch SRR11866736
```

This will download a file named `SRR11866736.sra` to your SRA data directory (commonly under `~/ncbi/public/sra`).

> Tip: Use the `-O` flag with `prefetch` to specify a custom output directory if needed.

## 3. Convert `.sra` to `.fastq` Using `fastq-dump`

Next, convert the downloaded file into standard FASTQ format:

```bash
fastq-dump --split-files SRR11866736/SRR11866736.sra
```

### What This Command Does:
- `--split-files`: ensures paired-end reads are split correctly into two output files.
- Output: two FASTQ files named `SRR11866736_1.fastq` and `SRR11866736_2.fastq`

> You can optionally add `--gzip` to compress the output FASTQ files.

## Summary

You have now successfully downloaded and converted sequencing data from the SRA. The resulting FASTQ files are ready for quality control and further processing.

In the next step, we will assess the quality of these files using FastQC and summarize the results with MultiQC.

Next: [Step 4 – Quality Control with FastQC and MultiQC](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/04_fastqc_multiqc.md)
