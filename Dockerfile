FROM rocker/r-base:4.0.0

LABEL maintainer="Patrick Pedrioli"
LABEL Description="A container for the ProBatch batch effects tool" Version="1.0"

RUN apt-get update
RUN apt-get install -y ghostscript-x \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN Rscript -e "install.packages('RSQLite')" \
    -e "install.packages('plyr')" \
    -e "install.packages('readr')" \
    -e "install.packages('tidyverse')" \
    -e "install.packages('ggdendro')" \
    -e "install.packages('ggdendro')" \
    -e "install.packages('ggpubr')" \
    -e "install.packages('aLFQ')" \
    -e "install.packages('ggthemes')" \
    -e "install.packages('grImport')"
    

ADD install_msstats.R install_msstats.R
RUN Rscript install_msstats.R

ADD install_probatch.R install_probatch.R
RUN Rscript install_probatch.R
