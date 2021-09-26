FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install jupyter-offlinenotebook

RUN mkdir python_101
COPY --chown=1000:100 ["./python_101/1. Project - Python Method Zoo.ipynb", "./python_101/"]
COPY --chown=1000:100 ["./python_101/2. (optional project) Colourful Algorithm.ipynb", "./python_101/"]
COPY --chown=1000:100 ["./loops_and_lists", "."]
COPY --chown=1000:100 ["./images", "."]
COPY --chown=1000:100 ["./data_structures", "."]

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work
# moving this line to the bottom to avoid MyBinder build crashing
