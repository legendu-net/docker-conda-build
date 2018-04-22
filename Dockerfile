FROM dclong/conda

RUN conda install conda-build \
    && conda update conda-build

RUN mkdir /conda && chmod 777 /conda \
    && cd /conda \
    && wget https://conda.io/docs/_downloads/build1.sh -O build.sh \
    && wget https://conda.io/docs/_downloads/bld.bat
