FROM rocker/verse:3.4.3


RUN mkdir /home/rstudio/.cache \
  && chown -R rstudio:rstudio /home/rstudio/.cache \
  && mkdir -p /home/rstudio/Documents/jorge3a/itam
ENV RSTUDIO_SPARK_HOME /home/rstudio/.cache/spark/spark-2.0.2-bin-hadoop2.7

RUN apt-get update \ 
    && apt-get install -y libudunits2-dev \
    && install2.r --error \
	arules \
	arulesViz \
	tidygraph \
	tidytext \
	textreuse \
	hash \
	text2vec \
	ggraph \
	itertools \
	RcppRoll \
    && install2.r --error \
	--deps TRUE \
	sparklyr  \
    && r -e 'devtools::install_github("rstudio/sparklyr")' && \
    && r -e 'sparklyr::spark_install()'
    && mv /root/spark/ /home/rstudio/.cache 


