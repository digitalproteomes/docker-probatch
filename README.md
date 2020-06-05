# Dockerized version of the ProBatch R package.

## General

ProBatch [1] is an R collection of tools for diagnostics and corrections of batch effects in proteomics.
The package is availlable from [BioConductor](https://www.bioconductor.org/packages/release/bioc/html/proBatch.html) and [GitHub](https://github.com/symbioticMe/proBatch).

This repository provides a preconfigured installation of ProBatch, MSstats[2], and aLFQ[3] on top of a rocker/r-base base image.
It can be used to facilitate reproducing the analyses presented in:

_ADD_MANUSCRIPT_REFERENCE_

## Images

Prebuilt images for this Dockerfile can be downloaded from [dockerhub](https://hub.docker.com/repository/docker/digitalproteomes/probatch/general)
```
docker pull digitalproteomes/probatch
```

## References

[1] Cuklina J, Lee CH, Willams EG, Collins B, Sajic T, Pedrioli P, Rodriguez-Martinez M, Aebersold R (2018). Computational challenges in biomarker discovery from high-throughput proteomic data. Ph.D. thesis, ETH Zurich. https://doi.org/10.3929/ethz-b-000307772.

[2] Choi M (2014). “MSstats: an R package for statistical analysis of quantitative mass spectrometry-based proteomic experiments.” Bioinformatics, 30.

[3] aLFQ: An R-package for estimating absolute protein quantities from label-free LC-MS/MS proteomics data. Rosenberger G, Ludwig C, Röst HL, Aebersold R, Malmström L. Bioinformatics. 2014 Sep 1;30(17):2511-3. doi: 10.1093/bioinformatics/btu200. Epub 2014 Apr 20.
