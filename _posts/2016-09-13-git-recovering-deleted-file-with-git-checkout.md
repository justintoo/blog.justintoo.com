---
title: "Git: Recovering deleted file with \"git-checkout\""
categories:
  - Software Engineering
tags:
  - git
  - git-checkout
  - problem-solution
---

{% include base_path %}

{% include toc title="Table of Contents" icon="file-text" %}

# Problem
```bash
$ rm my/precious/file/in/git/repository.txt
```

Oops! I deleted a version-controlled file from my Git repository by accident and need to recover it. Here is my specific example:

```bash
$ rm config/rose_edg_required_macros_and_functions.h.cmake

$ git status
# HEAD detached from origin/too1/ROSE-490-cmake-builtin-functions-header-file
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       modified:   cmake/modules/roseGenerateBackendCompilerSpecificHeaders.cmake
#       deleted:    config/rose_edg_required_macros_and_functions.h.cmake
#
```

As you can tell, `rose_edg_required_macros_and_functions.h.cmake` was `deleted`.

This `git-status` is actually showing the results of my repository after doing a soft rollback of the previous commit I made when my code failed our testing:

```bash
$ git log -1 --name-status
commit 9e5bd6f7caa72028fa1b4d3f2efe224f4efe1c15
Author: Justin Too <justin@doubleotoo.com>
Date:   Tue Sep 6 18:11:54 2016 -0700

    (ROSE-490) Add CMake support for generation of builtin functions header file

M       cmake/modules/roseGenerateBackendCompilerSpecificHeaders.cmake
D       config/rose_edg_required_macros_and_functions.h.cmake
```

I thought the `deleted` file wasn't needed anymore (at least on my Linux machine), but our testing quickly pointed out to me that the file is still needed for our Windows support - so I did a soft rollback:

```bash
$ git reset --soft HEAD~
```

<!--more-->

# Solution
The recovery is simple and straightforward using [git-checkout](https://git-scm.com/docs/git-checkout):

```bash
$ git checkout HEAD <deleted-file>
```

In my example:

```bash
$ git checkout HEAD config/rose_edg_required_macros_and_functions.h.cmake

$ git status
# HEAD detached from origin/too1/ROSE-490-cmake-builtin-functions-header-file
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       modified:   cmake/modules/roseGenerateBackendCompilerSpecificHeaders.cmake
#
```

# Environment

|---
| Item | Description
|-|-
| Operating System | `RedHat Enterprise Linux 7`
| Git | `git version 1.8.3.1`
|---
