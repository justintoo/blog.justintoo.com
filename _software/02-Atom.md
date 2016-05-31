---
title: "Atom.io"
permalink: /software/atom-io/
excerpt: "A text editor that's modern, approachable, yet hackable."
modified: 2016-04-30T22:42:53-07:00
header:
  image: "http://res.cloudinary.com/justintoo/image/upload/v1462084340/install-atom-plugins_fu9xwf.gif"
---

{% include toc title="Table of Contents" icon="file-text" %}

I currently use the [Atom.io](http://atom.io/) text editor for programming.

I spent my first 6 years as a software engineer battling code trolls in the [Vim](http://www.vim.org/) dungeons. So thankfully for me, the Atom.io ecosystem provides loads of *awesome* [plugins](https://atom.io/packages), including ones to provide functionality a *la Vim*. That's what I call *progress*.

## What is Atom?
> Atom is a text editor that's modern, approachable, yet hackable to the core—a tool you can customize to do anything but also use productively without ever touching a config file.

{% capture fig_img %}
![Atom.io IDE screenshot](http://res.cloudinary.com/justintoo/image/upload/v1462085326/atom-io-ide_hu2yzq.png 'Screenshot of the Atom.io IDE')
{% endcapture %}

<figure>
  <figcaption>Screenshot of the Atom.io IDE in action - me authoring this page.</figcaption>
  {{ fig_img | markdownify | remove: "<p>" | remove: "</p>" }}
</figure>

What I like about Atom is that it's a truly productive Integrated Development Environment (IDE).

You can have a nice visual of the file system in one pane, tabs of code in another pane, a [Bash terminal in yet another pane](https://github.com/romgrk/termrk), and tons of bells and whistles, shortcut keys, and convenience features. It's hard to believe it could get any better than this; yet it will because Atom was designed to be highly customizable and extensible.

Me like.

## My Atom Plugins

I currently use a variety of plugins ranging from the [Git Time Machine](https://atom.io/packages/git-time-machine) visual explorer to the [iso8601-timestamp](https://atom.io/packages/iso8601-timestamp) inserter. For ease of setup and re-use, I packaged my plugins into a Bash shell script, which can be executed with a one-liner:

```bash
$ curl -s https://git.io/vwMRP | bash /dev/stdin
```

{%gist justintoo/3a455cf634de7b94b9227fc4969e963f %}

{% capture fig_img %}
![Atom.io website screenshot](http://res.cloudinary.com/justintoo/image/upload/v1462084902/atom-io-website-screenshot_dfpqb8.png 'Screenshot of the Atom.io Website')
{% endcapture %}

<figure>
  <figcaption>Screenshot of the Atom.io Website</figcaption>
  {{ fig_img | markdownify | remove: "<p>" | remove: "</p>" }}
</figure>
