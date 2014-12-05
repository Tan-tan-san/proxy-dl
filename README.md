proxy-dl
========

proxy-dl is a CLI program that proxies your downloads with wget, through Tor. To avoid any DNS leaks, DNS queries are resolved with tor-resolve.

Requirements:
Tor installed; running. Proxychains with included proxychains.conf file. The file needs to reside in /etc/ .

*Note: If you prefer to see the proxychain download details, remove the &> /dev/null at the end of the proxychain command.
