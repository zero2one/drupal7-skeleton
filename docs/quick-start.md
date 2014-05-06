---
layout: docs
title: Quick start
prev_section: home
next_section: requirements
permalink: /docs/quick-start/
---

# Download or Clone the skeleton

[Download](https://github.com/zero2one/drupal7-skeleton/archive/master.zip)
or 
[Clone](https://github.com/zero2one/drupal7-skeleton/tree/master)
from GitHub

	$ git clone https://github.com/zero2one/drupal7-skeleton.git


# Rename skeleton

Run the init command to create a new installation profile based on the skeleton. This will automatically remove the skeleton and the init script from the repository.

	$ ./initnewprofile


# Setup a MySQL database

Make sure that you have locally a MySQL database server and a database for your project.


# Create the configuration file

Copy the example confoiguration and fill in the blanks.

	$ cp ./default.config.sh ./config.sh


# Install the profile

Run the install script, this will download all neccesary contrib code (modules, themes, libraries, and Drupal 7 core) from drupal.org and install Drupal locally based on the profile as defined in the configuration file.

	$ ./install


# Create a vhost

Create a vhost in your local webserver and point it to the the `www` folder in the root of the download/cloned directory.


# Done

You should now have a working installation of the newly created installation profile.