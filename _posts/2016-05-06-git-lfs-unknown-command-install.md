---
title: "Resolving Git LFS Error: unknown command \"install\" for \"git-lfs\""
comments: true
header:
  image: http://res.cloudinary.com/justintoo/image/upload/v1462516217/2016-05-06-git-lfs-unknown-command-install_wote8r.gif
  teaser: http://res.cloudinary.com/justintoo/image/upload/v1462516217/2016-05-06-git-lfs-unknown-command-install_wote8r.gif
categories:
  - Software Engineering
tags:
  - git
  - git-lfs
  - problem-solution
  - mac-os-x
  - mac-os-x-10.11
  - el-capitan
modified: 2016-05-05T23:32:55-07:00
---

{% include base_path %}

# Problem
```bash
$ git lfs install
Error: unknown command "install" for "git-lfs"
Run 'git-lfs --help' for usage.
```

I encountered this `git-lfs` error when attempting to initialize the [Git Large File Storage (LFS)](https://git-lfs.github.com/) for the very first time with `git-lfs/1.0.2` on Mac OS X El Capitan version `10.11.4`.

# Solution
```bash
$ git lfs init
Git LFS initialized.

$ echo $?
0
```

<!--more-->

I found an existing [Issue #888 on github/git-lfs](https://github.com/github/git-lfs/issues/888):

> The command name changed in Git LFS `v1.1.0` (though `git lfs init` will continue to work for awhile). You can substitute git `lfs init` for `git lfs install`, and `git lfs uninit` for `git lfs uninstall`.
>
> @technoweenie

which indicates my version of `git-lfs` (`v1.0.2`) is using an older API, which has been since modified in `git-lfs/1.1.0`.

Therefore, the solution for `git-lfs/1.0.2` is to use `git lfs init`, rather than `git lfs install`.

# Environment

|---
| Item | Description
|-|-
| Operating System | `OS X El Capitan version 10.11.4`
| Git | `git version 2.6.4 (Apple Git-63)`
| Git-LFS | `git-lfs/1.0.2 (Github; darwin amd64; go 1.5.1; git 0566698)`
|---
