# Moonbit Docker Image

This is a quick start docker image for the [Moonbit programming language](https://www.moonbitlang.com/)

## Quick start

To get started the first Moonbit program, follow these instructions:

1. Pull this docker image

```bash
$ docker pull hemashushu/moonbit
```

2. Run this container

```bash
$ docker run -it --rm hemashushu/moonbit
```

3. Create the first Moonbit program

To create a new module, enter the moon new command in the terminal, and you will see the module creation wizard. By using all the default values, you can create a new module named hello in the my-project directory.

```bash
$ moon new

Enter the path to create the project (. for current directory): my-project
Select the create mode: exec
Enter your username: username
Enter your project name: hello
Enter your license: Apache-2.0
Created my-project
```

4. Run the program

```bash
$ cd my-project
$ moon run main
Hello, world!
```

## Share files with the host

You can share files with the host to compile or run Moonbit projects located on the host in the container.

The following assumes that the path to your Moonbit project files on the host is `/home/yang/moonbit_projects`. Use the following command to start the container:

```bash
docker run \
  -it --rm \
  --mount type=bind,source="/home/yang/moonbit_projects",target=/root/moonbit_projects \
  hemashushu/moonbit
```

> Remember to replace `/home/yang/moonbit_projects` in the above command with your project path.

After entering the container, you will find a `moonbit_projects` folder. Create, compile, and run your Moonbit programs in this folder.

## Repo

- https://hub.docker.com/r/hemashushu/moonbit
- https://github.com/hemashushu/moonbit-docker