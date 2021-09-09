FROM jupyter/base-notebook:notebook-6.0.0

RUN pip jupyter-offlinenotebook

RUN mkdir python_101
COPY --chown=1000:100 ["./python_101/1. Project - Python Method Zoo.ipynb", "./python_101/"]
COPY --chown=1000:100 ["./python_101/2. (optional project) Colourful Algorithm.ipynb", "./python_101/"]

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work
# moving this line to the bottom to avoid MyBinder build crashing
