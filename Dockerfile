FROM rocker/verse:3.4.3

RUN r -e 'devtools::install_github("rstudio/sparklyr")'
RUN r -e 'sparklyr::spark_install()'

RUN mkdir /home/rstudio/.cache \
  && mv /root/spark/ /home/rstudio/.cache \
  && chown -R rstudio:rstudio /home/rstudio/.cache
ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN cat /etc/os-release 

RUN apt-get update \ 
    && apt-get install -y libudunits2-dev 


RUN install2.r --error \
	arules \
	arulesViz \
	tidygraph \
	tidytext \
	textreuse \
	hash \
	text2vec \
	ggraph \
	tsne


RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip 

RUN \
  pip install --upgrade tensorflow && \
  pip install --upgrade keras scipy h5py pyyaml requests Pillow

RUN r -e 'devtools::install_github("rstudio/reticulate")'
RUN r -e 'devtools::install_github("rstudio/tensorflow")'
RUN r -e 'devtools::install_github("rstudio/keras")'
