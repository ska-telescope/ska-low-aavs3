-include PrivateRules.mak

include .make/base.mk

########################################################################
# DOCS
########################################################################

include .make/docs.mk

DOCS_SPHINXOPTS = -n -W --keep-going

########################################################################
# Helm
########################################################################

include .make/helm.mk

# only publish main chart not test parent
HELM_CHARTS_TO_PUBLISH=$(PROJECT_NAME)

########################################################################
# K8S
########################################################################

include .make/k8s.mk

# k8s-pre-test:
# 	poetry export --only dev --without-hashes > tests/requirements.txt

# DEPLOYMENT_CONTEXT ?= AAVS3

# # Chart for testing
# ifeq ($(shell kubectl config current-context),minikube)
# MINIKUBE ?= true
# else
# MINIKUBE ?= false
# endif

# ifneq ($(CI_JOB_ID),)
# # For k8s-install-chart
# _gitlab_image_tag = $(VERSION)-dev.c$(CI_COMMIT_SHORT_SHA)
# _gitlab_registry = $(CI_REGISTRY_IMAGE)
# else
# # If we're running locally, use the most recent image from GitLab
# _gitlab_image_tag = $(VERSION)-dev.c$(shell git rev-parse --short=8 @{u})
# _gitlab_registry = registry.gitlab.com/$(shell git remote -v | head -1 | grep -oE 'ska-telescope(/[a-z0-9-]{1,}){1,}')
# endif

# K8S_CHART_PARAMS += \
# 	--set global.minikube=$(MINIKUBE) \
#  	--set ska-taranta.enabled=false  # taranta charts are slow to terminate

# PYTHON_VARS_AFTER_PYTEST = \
# 	-v \
# 	--cucumberjson=build/reports/cucumber.json \
# 	--json-report --json-report-file=build/reports/report.json

# K8S_TEST_IMAGE_TO_TEST = "${SKA_PYTHON_PYTANGO_BUILDER_IMAGE}"
# K8S_TEST_RUNNER_ADD_ARGS += --env=TANGO_HOST=$(shell helm get -n $(KUBE_NAMESPACE) values -a $(HELM_RELEASE) -o json | jq '.global.tango_host')

# PROXY_VALUES = \
# --env=http_proxy=${http_proxy} \
# --env=https_proxy=${http_proxy} \
# --env=no_proxy=${no_proxy}
