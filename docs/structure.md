---
layout: docs
title: File Structure
prev_section: upgrade
next_section: configuration
permalink: /docs/structure/
---

# Overview

The Drupal 7 installation profile skeleton has following structure:

{% highlight bash %}
.
├── _scripts
│   ├── _ci
│   │   ├── setup
│   ├── build
│   ├── helper-colors.sh
│   ├── helper-functions.sh
│   ├── reset
│   └── setup-dev
├── _skeleton
│   ├── _behat
│   ├── _modules
│   │   └── _skeleton
│   │       └── skeleton_demo
│   ├── drupal-org.make
│   ├── drupal-org-core.make
│   ├── skeleton.info
│   ├── skeleton.install
│   └── skeleton.profile
├── .gitignore
├── .travis.yml
├── default.config.sh
├── initnewprofile
├── install
├── LICENSE
├── README.md
└── upgrade
{% endhighlight %}



# Root folder

Files in the root folder:

## .gitignore

The `.gitignore` file contains all files, file extentions and folders that never will be included in the git repository.

This excludes also all folders and files that will be downloaded when running the install and upgrade scripts.

Importand excluded files & folders:

{% highlight bash %}
# Drupal profile
skeleton/modules/contrib
skeleton/modules/development
skeleton/1
skeleton/themes/contrib
skeleton/libraries

# Behat
skeleton/behat/vendor/
behat.local.yml
skeleton/behat/bin
skeleton/behat/composer.phar

# Temporay "build" files
www

# Local Configuration
config.sh
{% endhighlight %}


## .travis.yml

This file contains the configuration and scripts to run during Continuous Integration builds on the [Travis-Ci platform](https://travis-ci.org/).

More information see [Continuous Integration]({{ base_url }}/docs/continuous-integration) documentation.


## default.config.sh

This is the example configuration file. You need to copy this to config.sh and fill in the blanks. 

More information see [Configuration]({{ base_url}}/docs/configuration) documentation.


## initnewprofile

Starting a new installation profile based on the skeleton requires changing a lot of files. This script does this for you.

More information see [Create Profile]({{ base_url}}/docs/create-profile) documentation.


## install

This is the install script to download all contrib modules, themes, and libraries + Drupal 7 core.

More information see [Installation]({{ base_url}}/docs/installation) documentation.


## upgrade

This is the script to upgrade the platform by downloading all contrib modules, themes, and libraries + Drupal 7 core. It will run the update-db script on Drupal trough Drush.

The database & files are kept during the upgrade process.

More information see [Upgrade]({{ base_url}}/docs/upgrade) documentation.



# /scripts

The scripts folder contains helper scripts that are included in the install, upgrade, and reset scripts.

It contains also a ci folder that contains a script needed during setup up Continouos Integration.


## /scripts/reset script

The reset script allows reinstalling the platform without downloading the modules.
This script can only be successfull run after a previous install of the profile trough the [installation script]({{base_url}}/docs/installation).


# /skeleton

This folder contains the actual Drupal Installation Profile.

It contains the files needed to provide the Installation Profile:

* skeleton.info
* skeleton.install
* skeleton.profile

It contains also the make files so `drush make` can download and install Drupal  core and contributed modules and themes.


## /skeleton/behat

The behat folder contains the files needed to setup and run the behat test scripts.

More information see [Automatic Testing]({{ base_url }}/docs/automatic-testing) documentation.


## /skeleton/modules/skeleton

This folder contains all custom modules and features related to the skeleton installation profile.


## /skeleton/modules/skeleton_demo

There is one demo module included with the Drupal 7 Skeleton; this module demonstrates how to create new profile modules and how to setup testing and demo content.

More information see [Custom modules]({{ base_url }}/docs/custom-modules)




