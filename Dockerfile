FROM dclong/conda

RUN conda install conda-build anaconda-client \
    && conda update conda-build \
    && conda config --set anaconda_upload yes

COPY scripts/ /scripts/
