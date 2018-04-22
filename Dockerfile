FROM dclong/conda

RUN conda install conda-build \
    && conda update conda-build
