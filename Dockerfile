FROM dclong/conda

RUN conda install conda-build anaconda-client \
    && conda update conda-build

RUN mkdir /workdir && chmod 777 /workdir

COPY scripts/ /scripts/
