---
title: "Resolving Jekyll Serve Error: `Liquid Exception: undefined method `gsub' for nil:NilClass`"
comments: true
categories:
  - Software Engineering
tags:
  - el-capitan
  - jekyll
  - jekyll-3.0.3
  - liquid-templating-language
  - mac-os-x
  - mac-os-x-10.11
  - problem-solution
  - ruby
  - ruby-3.0.3
---

{% include base_path %}

{% include toc title="Table of Contents" icon="file-text" %}

# Problem

```bash
  Liquid Exception: undefined method `gsub' for nil:NilClass in _includes/post_pagination.html, included in _layouts/single.html
jekyll 3.0.3 | Error:  undefined method `gsub' for nil:NilClass
```

This error was triggered by the following `jekyll serve` command:

```bash
$ make run
bundle exec jekyll serve --config _config.localhost.yml --drafts
Configuration file: _config.localhost.yml
            Source: /Users/too1/Development/blog.justintoo.com
       Destination: /Users/too1/Development/blog.justintoo.com/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
  Liquid Exception: undefined method `gsub' for nil:NilClass in _includes/post_pagination.html, included in _layouts/single.html
jekyll 3.0.3 | Error:  undefined method `gsub' for nil:NilClass
make: *** [run] Error 1
```

I ran into this issue while trying to start the Jekyll server on my local development machine to view this [Github Pages](https://pages.github.com/) blog.

<!--more-->

# Solution

It turns out the problem was simply that my newly added draft post was missing the meta information at the top of the Markdown file:

```bash
# draft-post.md
---
title: "My draft post title"
---
```

So I added this section and voila, problem solved!

```bash
$ bundle exec jekyll serve --config _config.localhost.yml
Configuration file: _config.localhost.yml
            Source: /Users/too1/Development/blog.justintoo.com
       Destination: /Users/too1/Development/blog.justintoo.com/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
                    done in 2.326 seconds.
 Auto-regeneration: enabled for '/Users/too1/Development/blog.justintoo.com'
Configuration file: _config.localhost.yml
    Server address: http://127.0.0.1:4000/
  Server running... press ctrl-c to stop.
```

# Environment

|---
| Item | Description
|-|-
| Git | `git version 2.6.4 (Apple Git-63)`
| Jekyll | `jekyll 3.0.3`
| Operating System | `OS X El Capitan version 10.11.6`
| Ruby | `ruby 2.3.3p222 (2016-11-21 revision 56859) [x86_64-darwin15]`
|---
