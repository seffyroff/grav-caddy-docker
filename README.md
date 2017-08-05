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

A Docker image with Grav CMS and PHP/Caddy

## Container Information

+ yobasystems/alpine-caddy:php image
+ fork from dsavell/grav Dockerfile
+ Port 2015 Exposed
+ No Custom Features

## Usage

```
docker create --name=grav \
--restart=always \
seffyroff/grav-caddy-docker
docker start grav
```

## Setting up the application
Access the webui at `http://<your-ip>:2015`, for more information check out [GRAV](https://getgrav.org/)

## Using the container

+ Shell Access to container when it is running: `docker exec -it grav /bin/bash`

## Issues

+ CMS not usable behind reverse proxy.

## Changelog
+ **05/08/2017:** Initial Fork from dsavell/grav
	- Replaced Nginx with Caddy
	- Changed method of installing Grav to use composer instead of curling the zip
	- Typo corrections on the README.md
"# grav-remote-docker" 
