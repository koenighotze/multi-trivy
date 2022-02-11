# Multi-Trivy

[![build](https://github.com/koenighotze/multi-trivy/actions/workflows/build.yml/badge.svg)](https://github.com/koenighotze/multi-trivy/actions/workflows/build.yml)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/cc22c4e724e3436ea4bad782de1e76a2)](https://www.codacy.com/gh/koenighotze/multi-trivy/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=koenighotze/multi-trivy&amp;utm_campaign=Badge_Grade)

Docker image for running Trivy on a set of docker-compose files

Example:

```bash
❯ docker run -ti --rm=true -v $PWD:/src koenighotze/multi-trivy:v1.0.2
...
usr/local/bin/gosu (gobinary)
=============================
Total: 0 (HIGH: 0, CRITICAL: 0)

mysql:5.7 is NOK!
Found 7 images with issues!
```
