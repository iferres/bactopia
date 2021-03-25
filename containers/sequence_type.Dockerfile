FROM nfcore/base:1.12.1

LABEL base.image="nfcore/base:1.12.1"
LABEL software="Bactopia - sequence_type"
LABEL software.version="1.6.2"
LABEL description="A flexible pipeline for complete analysis of bacterial genomes"
LABEL website="https://bactopia.github.io/"
LABEL license="https://github.com/bactopia/bactopia/blob/master/LICENSE"
LABEL maintainer="Robert A. Petit III"
LABEL maintainer.email="robert.petit@emory.edu"
LABEL conda.env="bactopia/conda/linux/sequence_type.yml"
LABEL conda.md5="af428a4458b17dd5346cda6626ee0ef2"

COPY conda/linux/sequence_type.yml /
RUN conda env create -q -f sequence_type.yml && conda clean -y -a
ENV PATH /opt/conda/envs/bactopia-sequence_type/bin:$PATH
