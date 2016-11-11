---
title: Opensource Projects
layout: page
---

I'm a strong believer in the OpenSource movement and try to be a part of it.  
Bellow is a list of [my public Github](https://github.com/mohsend/) reopsitories.

---

{% assign sorted_repositories = site.github.public_repositories | sort: 'size' | reverse | sort:'stargazers_count' | reverse %}

{% for repository in sorted_repositories %}
{% assign lang = repository.language | strip %}
{% assign homepage = repository.homepage | strip %}

## [{{ repository.name }}]({{ repository.html_url }})  
 {{ repository.description }}

<ul>
{% if homepage != "" %}
  <li>Home page: <a href="{{ repository.homepage }}">{{ repository.homepage }}</a></li>
{% endif %}
{% if lang != "" %}
 <li>Language: {{ repository.language }}</li> 
{% endif %}
 <li>Last update: {{ repository.updated_at | date: "%b %d, %Y"}}</li>
 <li>Started: {{ repository.created_at | date: "%b %d, %Y" }}</li>
{% if repository.stargazers_count > 0 %}
  <li><a href="{{ repository.html_url | append:'/stargazers' }}">Stargazers: {{ repository.stargazers_count }}</a></li>
{% endif %}
{% if repository.fork %}
  <li>Forked Project</li>
{% endif %}
</ul>
---

{% endfor %}
