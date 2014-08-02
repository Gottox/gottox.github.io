title: VoidLinux
date: 2014-08-02 14:20:57
tags:
   - VoidLinux
   - Linux
   - Distribution
---
When I switched back from Mac to Lenovo I was faced with the decision which
distribution I should pick.

I was always a debian guy. And I still prefere debian over all other
distributions on servers. But on the desktop, I want to use a rolling
release distro.

So first of all, I have an antipathy against ArchLinux. So this distribution
was out from the beginning.

The second thought was Fedora. It's not a real rolling release distribution but
they're always the first when it comes to new technology. But the system has
become quite complex.

Then I found out about VoidLinux. It's a rolling release distribution from a
former NetBSD-Developer.

It is completely assembled from the scratch. From the buildsystem which can be
described as something between ArchLinux PKGBUILDs, Gentoo ebuilds, and
the OpenWRT buildsystem to the package-manager.

Quite unusual the project avoids to build up it's own infrastructure, the
development is done through Github and IRC. The only thing VoidLinux provides
by itself is a custom buildserver based on [buildbot](http://buildbot.net/) and
a HTTP-Server to distribute the packages.

The buildsystem is quite flexible, that way VoidLinux was the first distribution
which switched from OpenSSL to LibreSSL. Also VoidLinux switched from systemd,
which had become more and more cumbersome in the last months to runit/ignite
within two weeks.

All in all I'm very satisfied by this distribution and hope to get more people
to use it.
