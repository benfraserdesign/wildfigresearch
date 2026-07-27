---
layout: about
title: Who we are
permalink: /about/who-we-are/
description: Who we are — two researchers based in Sheffield, with practice spanning community and academic research, international development and the charity sector.
---

<p>We're two researchers rooted in our local place of Sheffield, UK. Our practice experience spans community and academic research, international development, UK place-based practice research, and partnerships across the national charity sector at a variety of levels.</p>

<div class="row g-4 mt-2">
  {% for member in site.team %}
  <div class="col-12 col-sm-6">
    <div class="card h-100">
      <img src="{{ member.image }}" class="card-img-top object-fit-cover" alt="{{ member.title }}" style="height: 320px; object-position: top;">
      <div class="card-body d-flex flex-column">
        <h2 class="h5 card-title mb-0">{{ member.title }}</h2>
        <p class="card-text text-secondary small mb-2">{{ member.role }}</p>
        <p class="card-text">{{ member.short_bio }}</p>
        <a href="{{ member.url }}" class="stretched-link text-decoration-none mt-auto">Read full bio<span class="visually-hidden"> about {{ member.title }}</span> &rarr;</a>
      </div>
    </div>
  </div>
  {% endfor %}
</div>