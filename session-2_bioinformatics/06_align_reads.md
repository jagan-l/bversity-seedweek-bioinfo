# Step 6: Aligning Reads to the Reference Genome Using Bowtie2

With our quality-controlled FASTQ files and indexed reference genome in place, the next major task is to align the reads. Alignment maps sequencing reads back to known reference sequences, allowing us to analyze how well the reads match and where they originate.

In this step, we’ll use **Bowtie2** to perform short-read alignment.

---

## 1. Confirm Your Setup

Make sure you have:
- A Conda environment with Bowtie2 installed (`bowtie2_env`)
- Indexed reference genome files (e.g., `ecoli_k12.1.bt2` to `ecoli_k12.rev.2.bt2`)
- Paired-end FASTQ files (e.g., `SRR11866736_1.fastq` and `SRR11866736_2.fastq`)

Activate your Bowtie2 environment:

```bash
conda activate bowtie2_env
```

---

## 2. Run Bowtie2 Alignment

Use the following command to align your paired-end reads to the reference genome:

```bash
bowtie2 -x ecoli_k12 \
  -1 SRR11866736_1.fastq \
  -2 SRR11866736_2.fastq \
  -S SRR11866736.sam
```

### Explanation:
- `-x ecoli_k12`: Base name of the reference index files
- `-1` and `-2`: Input FASTQ files for paired-end reads
- `-S`: Output file in SAM format (Sequence Alignment/Map)

> Note: SAM files are human-readable text files. They can be quite large, especially for big datasets.

---

## 3. View Alignment Statistics

Bowtie2 prints alignment statistics to the terminal after execution:
- Total number of reads processed
- Percentage of reads aligned exactly once, more than once, or not at all

These stats help assess alignment quality and whether the reference genome is appropriate for your data.

---
