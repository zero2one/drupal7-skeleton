---
layout: docs
title: Configuration
prev_section: structure
next_section: create-profile
permalink: /docs/configuration/
---

# Create config file

The configuration file `config.sh` is created locally by taking a copy of the example file `default.config.sh`.

	$ cp default.config.sh config.sh


# Configuration variables

The configuration file has following variables:

## Profile

Define what profile to use in the install & reset scripts.

* **PROFILE_NAME** : The machine name of the profile (e.g. `skeleton`).
* **PROFILE_TITLE** : The human name of the install profile, will be used as the name of the site during installation. (e.g. `Drupal 7 - Skeleton`).

## Site configuration

* **BASE\_DOMAIN\_URL** : The URL on witch the platform will be accessible on. (e.g. `http://d7-skeleton.dev`).

## Platform administrator

Define the account that will be created as the Drupal administrator (user id uid:1).

* **ADMIN_USERNAME** : The username of the administrator (e.g. `admin`).
* **ADMIN_PASSWORD** : The password of the administrator.
* **ADMIN_EMAIL** : The email address of the administrator.

## Database connection

Modify the MySQL settings so they will match the local DB server.

* **MYSQL_USERNAME** : Username to connect to the mySQL server.
* **MYSQL_PASSWORD** : The password to connect to the mySQL server.
* **MYSQL_HOSTNAME** : The hostname or IP address of the mySQL server.
* **MYSQL\_DB\_NAME** : The database name where to store the platform tables.
