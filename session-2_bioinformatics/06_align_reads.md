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

---

## Understanding the Bowtie2 Alignment Summary

After running the alignment, you’ll see a summary like this:

```
1379315 reads; of these:
  1379315 (100.00%) were paired; of these:
    542259 (39.31%) aligned concordantly 0 times
    812990 (58.94%) aligned concordantly exactly 1 time
    24066 (1.74%) aligned concordantly >1 times
    ----
    542259 pairs aligned concordantly 0 times; of these:
      252344 (46.54%) aligned discordantly 1 time
    ----
    289915 pairs aligned 0 times concordantly or discordantly; of these:
      579830 mates make up the pairs; of these:
        522512 (90.11%) aligned 0 times
        41918 (7.23%) aligned exactly 1 time
        15400 (2.66%) aligned >1 times
81.06% overall alignment rate
```

### What Does This Mean?

- **Total paired reads**: 1,379,315 pairs (100%)
- **Concordantly aligned exactly once**: 58.94% — properly mapped pairs (ideal case)
- **Concordantly aligned >1 times**: 1.74% — mapped to multiple places (repeats or ambiguity)
- **Did not align concordantly**: 39.31% — may have quality issues or biological variation
- **Discordant alignments**: 46.5% of the above — reads mapped, but not in proper orientation/distance
- **Single-end alignments from failed pairs**:
  - 90% failed completely
  - 7.2% aligned once
  - 2.6% aligned multiple times

### Interpretation

- An **81% overall alignment rate** indicates a good quality dataset.
- It's common to see some discordant or unaligned reads due to noise, adapter sequences, or reads from contaminant species.
- These numbers help evaluate library quality and mapping accuracy before downstream analysis like variant calling or counting.
---
