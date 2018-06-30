FROM dclong/conda

RUN conda install conda-build anaconda-client \
    && conda update conda-build \
    && conda config --set anaconda_upload yes

RUN mkdir /workdir && chmod 777 /workdir

COPY scripts/ /scripts/
