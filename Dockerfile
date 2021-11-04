FROM jupyter/base-notebook:notebook-6.0.0

RUN pip install jupyter-offlinenotebook pandas matplotlib openpyxl

COPY --chown=1000:100 [".", "."]

# ./work is found inside official jupyter images, we avoid unnecessary nesting
RUN rm -rf ./work
