# django-todo
A simple todo app built with django and dockerzied 

### Setup
To get this repository, run the following command inside your git enabled terminal
```bash
$ git clone https://github.com/Surajtalwar/dockerized-web-app.git
```
You will need docker to be installed in you computer to run this app. Head over to https://docs.docker.com/engine/install/ for the download guide

Once you have downloaded dokcer, go to the cloned repo directory and run the following command

```bash
$ docker build -t . todo-webapp
```

Now, to run this a docker container run the following command
```bash
$ docker run -it -d -p 8000:8000 todo-webapp
```
Once the server is hosted, head over to http:/localhost:8000/todos for the App.

Cheers :)
