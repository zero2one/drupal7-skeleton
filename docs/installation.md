---
layout: docs
title: Installation
prev_section: requirements
next_section: upgrade
permalink: /docs/installation/
---

# Clone or Download project

Clone or download the project from [GitHub](https://github.com/zero2one/drupal7-skeleton).


# Create config file

Copy the example configuration file to config.sh:

	$ cp default.config.sh config.sh

Edit the configuration file, fill in the blanks.

[More information about the configuration file]({{ site.baseurl }}/docs/configuration).


# Run the install script

Run the install script from within the root of the repository:

	$ ./install

You can login automatically when the installation is done. Add the -l argument
when you run the install script.

	$ ./install -l


## The install script will perform following steps:

1. **Delete** the **/www** folder (if any).
2. **Recreate** the **/www** folder.
3. **Download and extract** all **contrib modules, themes & libraries** to the proper subfolders of the profile.
4. **Download and extract Drupal 7 core** in the /www folder
5. **Create** an empty **sites/default/files** directory
6. Makes a **symlink** within the /www/profiles directory to the **/skeleton**
   directory.
7. Run the **Drupal installer** (Drush) using the Skeleton profile.


# Configure web server

Create a vhost for your webserver, point it to the `/PATH/WHERE/PROFILE/IS/LOCATED/www` folder.
(Restart/reload your webserver).

Add the local domain to your `/etc/hosts` file.

Open the URL in your favorite browser.


# Reinstall

You can Reinstall the platform any type by running the install script.

	$ ./install


# Warning!

**You need to take backups before you run the install script:**

* The install script will **not preserve** the data located in the
  **sites/default/files** directory.
* The install script will **clear the database** during the installation.

