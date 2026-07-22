---
layout: default
title: Projects
permalink: /projects/
description: A selection of participatory research and evaluation projects Wild Fig Research has delivered for clients.
sitemap: false
---

<h1 class="mb-4">Projects</h1>
<p class="lead mb-5">A selection of research and evaluation projects we've delivered for clients.</p>

<div class="row g-4">
  {% for project in site.projects reversed %}
  <div class="col-12 col-sm-6 col-lg-4">
    <a href="{{ project.url }}" class="card h-100 text-decoration-none text-body">
      {% if project.image %}
      <img src="{{ project.image }}" class="card-img-top" alt="{{ project.title }}">
      {% endif %}
      <div class="card-body">
        <h2 class="h5 card-title mb-1">{{ project.title }}</h2>
        <p class="card-text text-secondary small mb-0">{{ project.date | date: "%-d %B %Y" }}</p>
      </div>
    </a>
  </div>
  {% endfor %}
</div>
