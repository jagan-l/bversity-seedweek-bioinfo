# Step 2: Setting Up SRA Toolkit in a Conda Environment

In this step, we'll install the **SRA Toolkit**, a collection of command-line utilities for accessing and downloading sequencing data hosted in the NCBI Sequence Read Archive (SRA).

To avoid conflicts and ensure clean reproducibility, we’ll install it in a dedicated Conda environment.

---

## Creating a Conda Environment for SRA Toolkit

Open your terminal and run:

```bash
conda create -n sra_tools
```

This creates a new environment called `sra_tools`. You can name it anything, but naming it after the tool helps keep things organized.

Now activate the environment:

```bash
conda activate sra_tools
```

Once activated, your terminal prompt should change to indicate you're inside the `sra_tools` environment.

---

## Installing the SRA Toolkit with Bioconda

Make sure you've already set up Bioconda as outlined in [Step 1](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/01_conda_installation.md#setting-up-bioconda-channels).

Install the toolkit by running:

```bash
conda install bioconda::sra-tools
```

This command pulls the latest compatible version of the SRA Toolkit from Bioconda.

---

## Verifying the Installation

After installation, check that the toolkit was installed correctly by running:

```bash
prefetch --help
fastq-dump --help
```

These two are commonly used commands:
- `prefetch`: Downloads `.sra` files from NCBI using accession numbers.
- `fastq-dump`: Converts `.sra` files into standard `.fastq` format.

You’re now ready to download real sequencing data from SRA.

➡️ Move to [03_download_sra_data.md](03_download_sra_data.md) to learn how to fetch and convert sequencing datasets.
