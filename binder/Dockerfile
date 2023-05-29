FROM artefact.skao.int/ska-tango-images-pytango-builder:9.3.35 AS buildenv
FROM artefact.skao.int/ska-tango-images-pytango-runtime:9.3.22 AS runtime

USER root
RUN python3 -m pip install --no-cache-dir notebook jupyterhub jupyterlab
USER tango
