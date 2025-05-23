# Step 2: Setting Up the SRA Toolkit

Now that Conda and Bioconda are installed, we're ready to begin working with real sequencing data. In this step, we will set up the **SRA Toolkit**, a command-line suite provided by NCBI for accessing sequencing data stored in the Sequence Read Archive (SRA).

The toolkit includes utilities such as `prefetch` and `fastq-dump`, which are commonly used to retrieve and convert raw sequencing data.

## 1. Create a Conda Environment for SRA Tools

To keep things organized, we'll install the toolkit in its own environment:

```bash
conda create -n sra_tools
conda activate sra_tools
```

This creates and activates a clean environment where the SRA Toolkit can be installed without affecting other tools.

## 2. Install the SRA Toolkit

Once inside the `sra_tools` environment, install the toolkit from Bioconda:

```bash
conda install bioconda::sra-tools
```

This installs the latest available version along with its dependencies.

## 3. Verify the Installation

To confirm the toolkit is working correctly, try running the following commands:

```bash
prefetch --help
fastq-dump --help
```

If these commands return help menus and usage examples, your setup is complete.

## Summary

At this point, you’ve installed and verified the SRA Toolkit. In the next step, we will use it to download a publicly available dataset from the NCBI Sequence Read Archive and convert it to FASTQ format for further analysis.

 Next: [Step 3 – Downloading and Converting SRA Data](https://github.com/jagan-l/bversity-seedweek-bioinfo/blob/main/session-2_bioinformatics/03_download_sra_data.md)
