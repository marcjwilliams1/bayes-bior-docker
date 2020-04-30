FROM bioconductor/bioconductor_docker:latest

# docker build -t marcjwilliams1/bayes-bior:v1.1 .
# docker push marcjwilliams1/bior:v1.1
# docker build --no-cache -t bioR-3.6.2:latest -t bioR-3.6.2:v1.0 .

RUN Rscript -e "install.packages(pkgs = c('tidyverse', 'RColorBrewer', 'data.table', \
                                        'cowplot', 'rmarkdown', 'gtools', 'argparse', \
                                        'uwot', 'fuzzyjoin', 'dbscan', 'jcolors', \
                                        'ggthemes', 'viridis', 'knitr', 'entropy', \
                                        'clues', 'aricode', 'BiocManager', 'igraph', \
                                        'deconstructSigs', 'pracma', 'ClusterR', 'doParallel', \
                                        'HMM', 'circlize', 'VGAM', 'ggpubr', 'MCMCpack', 'sads', 'plotly'), \
                                        repos='https://cran.revolutionanalytics.com/', \
                                        dependencies=TRUE, \
                                        clean = TRUE)"

RUN Rscript -e "BiocManager::install('scran')"
RUN Rscript -e "BiocManager::install('scater')"
RUN Rscript -e "BiocManager::install('GenomicRanges')"
RUN Rscript -e "BiocManager::install('IRanges')"
RUN Rscript -e "BiocManager::install('rtracklayer')"
RUN Rscript -e "BiocManager::install('GenVisR')"
RUN Rscript -e "BiocManager::install('Biostrings')"
RUN Rscript -e "BiocManager::install('SingleCellExperiment')"
RUN Rscript -e "BiocManager::install('edgeR')"
RUN Rscript -e "BiocManager::install('Rsamtools')"
RUN Rscript -e "BiocManager::install('seqinr')"
RUN Rscript -e "BiocManager::install('copynumber')"
RUN Rscript -e "BiocManager::install('QDNAseq')"
RUN Rscript -e "BiocManager::install('QDNAseq.hg19')"
RUN Rscript -e "BiocManager::install('ggtree')"
RUN Rscript -e "BiocManager::install('ComplexHeatmap')"
RUN Rscript -e "BiocManager::install('org.Hs.eg.db')"
RUN Rscript -e "BiocManager::install('plyranges')"
RUN Rscript -e "BiocManager::install('regioneR')"
RUN Rscript -e "BiocManager::install('TxDb.Hsapiens.UCSC.hg19.knownGene')"
RUN Rscript -e "BiocManager::install('BSgenome.Hsapiens.UCSC.hg19')"
RUN Rscript -e "BiocManager::install('BSgenome.Hsapiens.UCSC.hg19.masked')"

RUN Rscript -e "install.packages(pkgs = c('rstan', 'loo', 'brms', 'tidybayes', 'bayesplot', 'rstanarm'), \
                repos='https://cran.revolutionanalytics.com/', \
                dependencies=TRUE, \
                clean = TRUE)"

RUN Rscript -e "install.packages(pkgs = c('magick', 'imager'), \
                repos='https://cran.revolutionanalytics.com/', \
                dependencies=TRUE, \
                clean = TRUE)"

#RUN Rscript -e "library(devtools); install_github('genome/sciclone')"
RUN Rscript -e "library(devtools); install_github('im3sanger/dndscv')"
#RUN Rscript -e "library(devtools); install_github('VPetukhov/ggrastr')"
#RUN Rscript -e "library(devtools); install_github('FunGeST/Palimpsest')"
