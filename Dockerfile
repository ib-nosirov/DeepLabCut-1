FROM tacc/tacc-ml:ubuntu16.04-cuda10-tf2.1-pt1.3
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y software-properties-common build-essential libgtk-3-dev \
        libwebkitgtk-dev libjpeg-dev libtiff-dev libgtk2.0-dev libsdl1.2-dev \
        freeglut3 freeglut3-dev libnotify-dev git && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt install -y python3 && \
#    conda update -n base -c defaults conda && \
#    git clone https://github.com/tensorflow/benchmarks.git /tf-benchmarks
COPY . /DeepLabCut
RUN conda env update -n=base -f=/DeepLabCut/conda-environments/DEEPLABCUT.yaml && \
RUN 
... && \
    pip install /DeepLabCut
