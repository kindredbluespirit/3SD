# syntax=docker/dockerfile:1
# FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime
FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime
# WORKDIR /code
COPY requirements.txt requirements.txt
RUN apt update && apt install -y gcc
RUN pip install Cython
RUN pip install -r requirements.txt