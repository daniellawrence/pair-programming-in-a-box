Pair Programming in a Box
-------------------------------

Start a server on your local machine, that allows you to share a development environment with another user.

Building the server (on server)
--------------------------------------

     $ docker build -t pair

Starting the server (on server)
--------------------------------------

     $ docker run -p 8080:22 -dt tmux

Connecting to the server (everyone)
-------------------------------------------

     $ ssh -X -p 8080 root@<your-machine-ip>

This will fireup the following
* a shared emacsclient session with all connected users
* a shared terminal session via tmux
