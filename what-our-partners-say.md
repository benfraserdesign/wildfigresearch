---
layout: default
title: What our partners say
permalink: /what-our-partners-say/
description: Testimonials from the partners and organisations Wild Fig Research has worked with on participatory research, evaluation and capacity building projects.
---

<h1 class="mb-1">What our partners say</h1>
<p class="lead mb-5">Feedback from the partners we've worked with on our research, evaluation and capacity building projects.</p>

{% assign testimonials = site.testimonials | sort: "date" | reverse %}
<div class="row g-4">
  {% for testimonial in testimonials %}
  {% assign related_project = site.projects | where: "url", testimonial.project | first %}
  <div class="col-12 col-md-6">
    <div class="card h-100 position-relative">
      <div class="card-body d-flex flex-column">
        {% if testimonial.logo %}
        <img src="{{ testimonial.logo }}" alt="{{ testimonial.partner }} logo" width="160" class="mb-3">
        {% endif %}
        <h2 class="h5 card-title mb-1">{{ testimonial.partner }}</h2>
        {% if related_project %}
        <p class="text-secondary small mb-3">Project: <span class="fst-italic">{{ related_project.title }}</span></p>
        {% endif %}
        <blockquote class="testimonial-quote flex-grow-1">
          {{ testimonial.content }}
        </blockquote>
        {% if related_project %}
        <a href="{{ related_project.url }}" class="stretched-link text-decoration-none mt-auto">Explore the project <i class="bi bi-chevron-right small" aria-hidden="true"></i></a>
        {% endif %}
      </div>
    </div>
  </div>
  {% endfor %}
</div>
