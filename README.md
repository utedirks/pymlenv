# PyMLEnv

All-in-one data science environment put into a container

[![](https://img.shields.io/github/license/danieldirks/pymlenv)](./LICENSE)

## Usage

_You need the docker engine accessible as your current user._

Clone the repository, build the image with `docker build -t pymlenv .`, run [start.sh](./start.sh) and open the url shown at the command line.

**WARNING:** Currently there is no persistence, so **DO NOT stop the container until you downloaded all notebooks**.

You can also use the prebuild image, which currently requires logging in.

```
docker login -u USERNAME -p TOKEN docker.pkg.github.com
docker run -p 8080:8080 docker.pkg.github.com/danieldirks/pymlenv/pymlenv:latest
```

## Features

You will get a Jupyter server and some modules ready to import, as well as a little demo notebook.

The following modules are included:

- [NumPy](https://github.com/numpy/numpy)
- [pandas](https://github.com/pandas-dev/pandas)
- [SciPy](https://github.com/scipy/scipy)
- [Matplotlib](https://github.com/matplotlib/matplotlib)
- [scikit-learn (sklearn)](https://github.com/scikit-learn/scikit-learn)

Full list: [Dependency graph](https://github.com/danieldirks/pymlenv/network/dependencies)

## Extend

The environment is build from the [requirements.txt file](./requirements.txt). You can clone the repository and change this file to build the environment with your own selection of modules. Please note that the container is started with JupyterLab, so if you delete the JupyterLab dependency you also need to change the [Dockerfile](./Dockerfile).

To manually build your image and start a container, run:

```
docker build -t pymlenv .
docker run -p 8080:8080 pymlenv
```
