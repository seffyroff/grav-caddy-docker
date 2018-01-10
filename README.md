# seffyroff/grav-caddy-docker

![grav](https://getgrav-grav.netdna-ssl.com/user/pages/media/grav-logo.svg)

Grav is a Fast, Simple, and Flexible file-based Web-platform. There is Zero installation required. Although Grav follows principles similar to other flat-file CMS platforms, it has a different design philosophy than most.

The underlying architecture of Grav is built using well established and best-in-class technologies. This is to ensure that Grav is simple to use and easy to extend. Some of these key technologies include:

* Twig Templating: for powerful control of the user interface
* Markdown: for easy content creation
* YAML: for simple configuration
* Parsedown: for fast Markdown and Markdown Extra support
* Doctrine Cache: for performance
* Pimple Dependency Injection Container: for extensibility and maintainability
* Symfony Event Dispatcher: for plugin event handling
* Symfony Console: for CLI interface
* Gregwar Image Library: for dynamic image manipulation

## What is seffyroff/grav?

A Docker image with Grav CMS and PHP/Caddy.

Overhauled this to work entirely from a Caddyfile, so no custom Docker image needed!

## Container Information

+ abiosoft/caddy:php image
+ Port 2015 Exposed
+ Admin installed

## Usage

```
Use the included compose file.
```

## Setting up the application
Access the webui at `http://<your-ip>:2015`, for more information check out [GRAV](https://getgrav.org/)

## Using the container

+ Shell Access to container when it is running: `docker exec -it grav /bin/sh`

## Issues

+ No docker image needed anymore!

## Changelog
+ **10/01/2018:** Updated to use Caddy image and Caddyfile to install and configure Grav/admin
	- Caddyfile now pulls Grav from git, installs admin and fixes permissions.
+ **06/08/2017:** Added :admin tag
	- container configuration with admin interface installed available with :admin tag
+ **05/08/2017:** Initial Fork from dsavell/grav
	- Replaced Nginx with Caddy
	- Changed method of installing Grav to use composer instead of curling the zip
	- Typo corrections on the README.md
