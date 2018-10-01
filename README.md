simple-ftp-server
===================

Simple FTP server using pyftpdlib, for development use

Fork of https://github.com/mauler/docker-simple-ftp-server, using passive mode ports


How to use
----------

Simple command line usage:

```
docker build -t [image name] .
docker run --name [container name] -p 21:21 -p 42000-42100:42000-42100 -d [image name]
```

You can test using Filezilla to localhost using username = "ftp", password = "ftp"
