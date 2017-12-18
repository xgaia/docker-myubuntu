# My Ubuntu

A docker image containing a custom environment for testing

## Pull, build and run

### Pull

```bash
docker pull xgaia/myubuntu
```

### Build

```bash
git clone https://github.com/xgaia/docker-myubuntu.git
cd docker-myubuntu
docker build -t myubuntu .
```

### run

```bash
docker run -it xgaia/myubuntu
```

### Environment

The image contains:

- Shell
    - zsh (with its `.zshrc`)

- Utilities
    - htop
    - ncdu
    - wget and curl
    - git (with its `.gitconfig`)
    - zip/unzip
    - vim and most

- Programming
    - Python 2.7 and Python 3 (+ pip3, ipython3, venv *etc..*)
    - Java and Scala (openjdk8)
    - nodejs and npm
    - gcc, g++, make and cmake
