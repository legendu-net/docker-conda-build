FROM dclong/conda

RUN conda install conda-build \
    && conda update conda-build

RUN mkdir /conda && chmod 777 /conda

COPY scripts/ /scripts/
