FROM rocker/binder:4.4.2

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

# run our install.R script
RUN R --quiet -f binder/install.R
