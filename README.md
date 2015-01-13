[![Build Status](https://travis-ci.org/zero2one/drupal7-skeleton.svg)](https://travis-ci.org/zero2one/drupal7-skeleton)

# Drupal 7 - Install Profile Skeleton_Title

This is a starting base to create Drupal 7 websites using an install profile.


## Installation

**Warning:** you need to setup [Drush](https://github.com/drush-ops/drush)
first or the installation and update scripts will not work.

Clone the project from [GitHub](https://github.com/zero2one/drupal7-skeleton).

#### Create config file

Copy the example configuration file to config.sh:

	$ cp default.config.sh config.sh

Create a database that can be used for this instance.
Edit the configuration file, fill in the Database credentials and other
pertinenet details.


#### Run the install script

Run the install script from within the root of the repository:

	$ ./install

You can login automatically when the installation is done. Add the -l argument
when you run the install script.

  $ ./install -l


#### Configure web server

Create a vhost for your webserver, point it to the `REPOSITORY/ROOT/www` folder.
(Restart/reload your webserver).

Add the local domain to your ```/etc/hosts``` file.

Open the URL in your favorite browser.



## Reinstall

You can Reinstall the platform any type by running the install script.

	$ ./install


#### The install script will perform following steps:

1. Delete the /www folder.
2. Recreate the /www folder.
3. Download and extract all contrib modules, themes & libraries to the proper
   subfolders of the profile.
4. Download and extract Drupal 7 core in the /www folder
5. Create an empty sites/default/files directory
6. Makes a symlink within the /www/profiles directory to the /skeleton
   directory.
7. Run the Drupal installer (Drush) using the Skeleton_Title profile.

#### Warning!

* The install script will not preserve the data located in the
  sites/default/files directory.
* The install script will clear the database during the installation.

**You need to take backups before you run the install script!**



## Upgrade

It is also possible to upgrade Drupal core and contributed modules and themes
without destroying the data in tha database and the sites/default directory.

Run the upgrade script:

	$ ./upgrade

You can login automatically when the upgrade is finished. Add the -l argument
when you run the upgrade script.

  $ ./upgrade -l


#### The upgrade script will perform following steps:

1. Create a backup of the sites/default folder.
2. Delete the /www folder.
3. Recreate the /www folder.
4. Download and extract all contrib modules, themes & libraries to the proper
   subfolders of the profile.
5. Download and extract Drupal 7 core in the /www folder.
6. Makes a symlink within the /www/profiles directory to the
   /skeleton 7. directory.
7. Restore the backup of the sites/default folder.

#### Debugging
PHP Fatal error:  Unsupported operand types in ~/.composer/vendor/drush/drush/includes/sitealias.inc on line 1507
Drush command terminated abnormally due to an unrecoverable error.                                                                   [error]
Error: Unsupported operand types in ~/.composer/vendor/drush/drush/includes/sitealias.inc,

If you are facing the above error more often than not it could mean that you have not entered the Database credentials after copying the 
default.config.sh file and renaming it to config.sh