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
