FROM jupyter/datascience-notebook

RUN pip install pandas

COPY . /home/

WORKDIR /home

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.default_url=/notebooks/analysis.ipynb"]