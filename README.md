[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/hogsibs/monorepo) 

# monorepo

## Build foo_bar

```bash
cd ./common-data-service/inversion-of-control
bazel build //plugin:foo_bar --spawn_strategy=standalone
```