# SKA LOW AAVS3

This repository defines the
the Aperture Array Verification System 3 (AAVS3) software deployment.

At present the only thing deployed is a basic landing site for the AAVS3 server.

## Landing site

To develop landing site content,
you need to be in a environment with the ``pelican`` python package installed.
For vscode users, a devcontainer specification is provided. Otherwise, try ``make install-pelican``.

Edit existing site content by editing the ``.rst`` files in the ``content/`` folder.
If you create a new ``.rst`` file,
you can add it to the sidebar by adding it to
the ``MENUITEMS`` variable in ``site/pelicanconf.py``.

To build your changes, use the command ``make site-build``.

To launch the site and review your changes: ``make site-launch``.
