---
layout: docs
title: Upgrade
prev_section: installation
next_section: structure
permalink: /docs/upgrade/
---

Upgrading Modules, Themes, and Core or adding extra Modules and Themes requires 2 steps:


# Edit the make files

The skeleton profile has a list of contrib modules, themes and Drupal core configured in [Drush make files](https://drupal.org/node/1432374). 

The make files have also the version number for each of them.

Add or change the versions in the make files:

* **/skeleton/drupal-org.make** : This has the configuration for contributed **Modules, Themes, and Libraries**.
* **/skeleton/drupal-org-core.make** : This has the configuration for **Drupal 7 core**.

You can add patches also to these files.


# Run the upgrade script

The skeleton has a script to upgrade the platform.

This script will upgrade Drupal core, contributed modules and themes without destroying the data in the database and the sites/default directory.

Run the upgrade script:

	$ ./upgrade

You can login automatically when the upgrade is finished. Add the -l argument
when you run the upgrade script.

	$ ./upgrade -l


## The upgrade script will perform following steps:

1. Create a **backup of the sites/default** folder.
2. **Delete** the **/www** folder.
3. **Recreate** the **/www** folder.
4. **Download and extract** all **contrib modules, themes & libraries** to the proper subfolders of the profile.
5. **Download and extract Drupal 7** core in the /www folder.
6. Makes a **symlink** within the **/www/profiles** directory to the **/skeleton** directory.
7. **Restore the backup** of the **sites/default** folder.
