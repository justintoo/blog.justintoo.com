---
permalink: /
title: "Justin Too"
header:
  image: "http://res.cloudinary.com/justintoo/image/upload/v1462090213/justintoo-raam-quote-4_suq7fb.jpg"
excerpt: "Justin Too is an Ultra-endurance Christian leader, Social Entrepreneur, Technical project manager, Software developer, and Creative media professional.."
layout: home
modified: 2016-05-02T02:26:33-07:00
---

{% include base_path %}

{% for post in site.posts limit:1 %}
<h1><a href="{{ post.url }}">{{ post.title }}</a></h1>
<span>{{ post.date | date_to_string }}</span> &raquo;
  {{ post.content | split:'<!--more-->' | first }}<br/>
  <a href="{{ post.url }}">Read more...</a><br><br>
{% endfor %}

## Featured Posts

<div class="page__featured">
  <div class="grid__wrapper">
  {% for post in site.categories.Featured  limit:4%}
    {% include archive-single.html type="grid" %}
  {% endfor %}
  </div>
</div>

## Latest Posts

<div class="page__latest">
  <div class="grid__wrapper">
  {% for post in site.posts limit:4 %}
    {% include archive-single.html type="grid" %}
  {% endfor %}
  </div>
</div>
