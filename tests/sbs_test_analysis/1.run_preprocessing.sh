#!/bin/bash

# Run only the preprocess rules
snakemake --use-conda --cores all \
    --snakefile "config/Snakefile" \
    --configfile "config/config.yml" \
    --rerun-triggers mtime \
    --until all_preprocess
