Description
-----------
Chef recipe to install and configure Couchpotato.

Recipes
=======
default
-------
This recipe installs and configures Couchpotato.

Attributes
======

* ```default['couchpotato']['location']   = "/opt/couchpotato"``` - The location where git clones the repo
* ```default['couchpotato']['user']   = "couchpotato"``` -  The user that runs Couchpotato
* ```default['couchpotato']['group']   = "couchpotato"``` - The group of Chouchpotato
* ```default['couchpotato']['data_dir']   = "~/.couchpotato"``` - Couchpotato's datadir
* ```default["couchpotato"]["sabnzbd"]["category"] = "movie"``` - Category for downloaded files in Sab
* ```default["couchpotato"]["sabnzbd"]["delete_failed"] = "True"```
* ```default["couchpotato"]["sabnzbd"]["enabled"] ="1"``` - Enable/disable sab
* ```default["couchpotato"]["sabnzbd"]["manual"] = "False"```
* ```default["couchpotato"]["sabnzbd"]["host"] = "http://localhost:8080"```
* ```default["couchpotato"]["sabnzbd"]["api_key"] = ""```
* ```default["couchpotato"]["preferred_method"]  = "both"``` - Search for nzb, torrent of both
* ```default["couchpotato"]["utorrent"]["username"] =""``` - Utorrent username
* ```default["couchpotato"]["utorrent"]["manual"] =""``` - Utorrent manual search
* ```default["couchpotato"]["utorrent"]["enabled"] ="1"``` - Enable Utorrent
* ```default["couchpotato"]["utorrent"]["label"] =""``` - Label for utorrent downloads
* ```default["couchpotato"]["utorrent"]["paused"] =""``` - Start download paused
* ```default["couchpotato"]["utorrent"]["host"] ="localhost"``` -
* ```default["couchpotato"]["utorrent"]["password"] =""``` -
* ```default["couchpotato"]["kickasstorrents"]["enabled"] ="True"``` - Enable/disable
* ```default["couchpotato"]["publichd"]["enabled"] ="True"``` - Enable/disable
* ```default["couchpotato"]["thepiratebay"]["domain"] =""``` - TPB proxy server
* ```default["couchpotato"]["thepiratebay"]["enabled"] ="True"``` - Enable/disable

Requirements
------------

Dependencies:

* apt: https://github.com/opscode-cookbooks/apt

* git: https://github.com/opscode-cookbooks/git

Supports:

* Ubuntu 12.10
