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

{% if homepage != "" %} * Home page: [{{ repository.homepage }}]({{ repository.homepage }}) {% endif %}
{% if lang != "" %} * Language: {{ repository.language }} {% endif %}
 * Last update: {{ repository.updated_at | date: "%b %d, %Y"}}
 * Started: {{ repository.created_at | date: "%b %d, %Y" }}
{% if repository.stargazers_count > 0 %} * [Stargazers: {{ repository.stargazers_count }}]({{ repository.html_url | append:'/stargazers' }}) {% endif %}
{% if repository.fork %} * Forked Project {% endif %}

---

{% endfor %}
