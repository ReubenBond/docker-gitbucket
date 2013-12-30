docker-gitbucket
===============

Docker container hosting gitbucket.

Simple usage:
`docker run -p 8080:8080 gitbucket`

Storing data in /tmp/gb:
`docker run -p 8080:8080 -v /tmp/gb:/data gitbucket`