# This Dockerfile defines the landing page server image.
FROM httpd:2.4
COPY ./site/output /usr/local/apache2/htdocs/
