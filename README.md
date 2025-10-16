# P6's POSIX.2: p6kubernetes

## Table of Contents

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)
[![Mergify](https://img.shields.io/endpoint.svg?url=https://gh.mergify.io/badges//p6kubernetes/&style=flat)](https://mergify.io)
[![Gitpod ready-to-code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](<https://gitpod.io/#https://github.com//p6kubernetes>)

## Summary

## Contributing

- [How to Contribute](<https://github.com//.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com//.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Aliases

### Functions

## p6kubernetes

### p6kubernetes/init.zsh

- p6df::modules::p6kubernetes::deps()
- p6df::modules::p6kubernetes::init(_module, dir)

## p6kubernetes/lib

### p6kubernetes/lib/debug.sh

- p6_kubernetes_debug_cmd()

### p6kubernetes/lib/deployment.sh

- p6_kubernetes_deployment_of_image(image)

### p6kubernetes/lib/pod.sh

- p6_kubernetes_pod_delete(pod_name)
- str name = p6_kubernetes_pod_find(glob)
- stream  = p6_kubernetes_pod_describe(pod_name_glob)

### p6kubernetes/lib/prompt.sh

- p6_kubernetes_prompt_info()

## Hierarchy

```text
.
├── init.zsh
├── lib
│   ├── debug.sh
│   ├── deployment.sh
│   ├── pod.sh
│   └── prompt.sh
├── README.md
└── share
    └── deployment.yaml

3 directories, 7 files
```

## Author

Philip M . Gollucci <pgollucci@p6m7g8.com>
