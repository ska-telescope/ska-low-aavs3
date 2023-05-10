include .make/base.mk

########################################
## Landing website

install-pelican:
	python3 -m pip install pelican

site-build:
	cd site; pelican content/

site-build-for-publish:
	cd site; pelican --settings publishconf.py content/

site-launch:
	cd site; pelican --listen


########################################
## OCI

include .make/oci.mk

oci-pre-build: install-pelican site-build-for-publish


########################################
## k8s / Helm

# Temporarily adding ska-low-mccs-daq so that it
K8S_CHARTS = ska-low-mccs-daq ska-low-aavs3

include .make/k8s.mk
include .make/helm.mk
