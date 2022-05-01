# Installing Pytorch with Cuda 10.1 on Ubuntu

⚠️ If using WSL, make sure you have: (1) [installed the proper NVIDIA driver](https://www.nvidia.com/Download/index.aspx?lang=en-us) on Windows; and (2) installed/converted to WSL 2 (see instructions [here](https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10)) before following this tutorial.

## Install Nvidia Cuda Toolkit

``` 
sudo apt install nvidia-cuda-toolkit
```

## Install Nvidia CuDNN

1. Access the link: [cuDNN Archive](https://developer.nvidia.com/compute/machine-learning/cudnn/secure/7.6.5.32/Production/10.1_20191031/cudnn-10.1-linux-x64-v7.6.5.32.tgz)
2. Then, login or create an NVIDIA account.
3. Click on "Download cuDNN v7.6.5 (November 5th, 2019), for CUDA 10.1" > "cuDNN Library for Linux"
4. From the folder where you downloaded it, run:
```
tar -xvzf cudnn-10.1-linux-x64-v7.6.5.32.tgz
```
5. Copy the files to the installation folder:
```
sudo cp cuda/include/cudnn.h /usr/lib/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/lib/cuda/lib64/
```
6. Set the permissions:
```
sudo chmod a+r /usr/lib/cuda/include/cudnn.h 
``` 

## Install Pytorch

```
conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=10.1 -c pytorch
```

You can find the command navigating here: [Getting started with previous versions](https://pytorch.org/get-started/previous-versions/).

## Restart the OS
