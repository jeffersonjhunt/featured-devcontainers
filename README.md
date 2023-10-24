# Dev Container Features

This repository contains a collection of Features for devcontainers. These Features fill in gaps in the [Base DevContainer Features](https://github.com/devcontainers/features) for projects I am working on. Each sub-section below shows a sample devcontainer.json alongside example usage of the Feature.

## Usage

To reference a Feature from this repository, add the desired Features to a devcontainer.json. Each Feature has a README.md that shows how to reference the Feature and which options are available for that Feature.

The example below installs the go and docker-in-docker declared in the [./src]() directory of this repository.

See the relevant Feature's README for supported options.

```
"name": "my-project-devcontainer",
"image": "ubuntu:22.04",
    "features": {
        "ghcr.io/devcontainers/features/common-utils:2": {
			"configureZshAsDefaultShell": true,
			"username": "codemonkey",
			"userUid": 1000,
			"userGid": 1000
		}, 
        "ghcr.io/jeffersonjhunt/features/cpp:1": {}	
    }
```
