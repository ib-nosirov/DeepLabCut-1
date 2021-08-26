# ~/Dockerfile_DLCv2
# Compatible with deeplabcut==2.2
# ------------------------------------------------------------------------------------
# Build with
# docker build -t my_dockerhub_namespace/dlc:2.2.0 -f Dockerfile_DLCv2 .
# ------------------------------------------------------------------------------------
ARG BASE_IMAGE=tacc/tacc-ml:ubuntu16.04-cuda10-tf2.1-pt1.3
FROM $BASE_IMAGE
RUN apt update -y && \
    apt upgrade -y && \
    apt install -y software-properties-common build-essential \
		libgtk-3-dev \
        libwebkitgtk-dev libjpeg-dev libtiff-dev libgtk2.0-dev libsdl1.2-dev \
        freeglut3 freeglut3-dev libnotify-dev git && \
    python3 -m pip install \
		ipython \
		filterpy \
		h5py \
		ruamel.yaml>=0.15.0 \
		intel-openmp \
		imgaug \
		jupyter-book>=0.7.0b \
		numba \
		matplotlib \
		networkx \
		numpy \
		opencv-python-headless \
		pandas>=1.0.1 \
		patsy \
		pyyaml \
		setuptools \
		scikit-image>=0.17 \
		scikit-learn \
		scipy>=1.4 \
		six \
		statsmodels>=0.11 \
		tensorflow>=2.0 \
		tables \
		tensorpack \
		tf_slim \
		tqdm \
		moviepy \ 
		Pillow>=7.1 \
		deeplabcut==2.2
