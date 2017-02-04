---
title: "Correcting Git Author for Multiple Commits using `git-filter-branch`"
comments: true
categories:
  - Software Engineering
tags:
  - git
  - git-filter-branch
  - git-rebase
  - git-author
  - git-commit
  - git-log
  - problem-solution
  - mac-os-x
  - mac-os-x-10.11
  - el-capitan
---

{% include base_path %}

{% include toc title="Table of Contents" icon="file-text" %}

# Problem

```bash
$ git log
commit 9feb12e957a554214c5dc7ed4543546676f59580
Author: Too <too1@babygrace.llnl.gov>
Date:   Thu Dec 22 17:30:08 2016 -0800

    Add drafts
```

I have been writing on this blog using a new laptop (`babygrace.llnl.gov`) with a different username (`too1`). As you can tell in the above commit message, the author line reads:

```bash
Author: Too <too1@babygrace.llnl.gov>
```

A couple problems with this information:

1. `Too` is not my name. This should read `Justin Too`
2. `too1@babygrace.llnl.gov` is not my Github email address. This should read `justin@doubleotoo.com`

Since I've made many commits with this incorrect information, I'll have to update multiple commits, which are interspersed with other peoples' commits - kind of a tricky situation.

<!--more-->

# Solution

## One time fix using `git-filter-branch`

Using `git-filter-branch`, I can go through every commit in the history and change the commit author where it is wrong:

```bash
# change-author.sh
git filter-branch --env-filter 'if [ "$GIT_AUTHOR_EMAIL" = "too1@babygrace.llnl.gov" ]; then
     GIT_AUTHOR_EMAIL=justin@doubleotoo.com;
     GIT_AUTHOR_NAME="Justin Too";
     GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL;
     GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"; fi' -- --all
```

The `if` conditional checks each commit for the incorrect email address `too1@babygrace.llnl.gov`. Where detected, I update the Git author information using the relevant Git environment variables (`GIT_AUTHOR_EMAIL`, `GIT_AUTHOR_NAME`, `GIT_COMMITTER_EMAIL`, `GIT_COMMITTER_NAME`).

For ease of use and convenience, I added the `git-filter-branch` command into a script file, titled `change-author.sh` and then ran it with bash:

```bash
$ bash change-author.sh
Rewrite 9feb12e957a554214c5dc7ed4543546676f59580 (1031/1417)
```

## Permanent fix using `git-config`

Of course, I want future commits to be using the correct author information too so before making my next commit, I updated the global Git configuration to reflect this:

```bash
$ git config --global user.name "Justin Too"
$ git config --global user.email
```

# Environment

|---
| Item | Description
|-|-
| Operating System | `OS X El Capitan version 10.11.6`
| Git | `git version 2.6.4 (Apple Git-63)`
| Bash | `GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin15)`
|---
