---
title: Opensource Projects
layout: page
order: 19
---

I'm a strong believer in the OpenSource movement and try to be a part of it. In this page you can find projects I started or been a part of.  

## [Arduino presentation](https://mehsen.com/arduino/)

Started as a half-hour presentation for Microcontrollers course, this project grow to be my guide to start learning Arduino for Persian audience.

License: [CC BY 4.0](https://github.com/mohsend/arduino/blob/master/LICENSE.md) and [MIT](https://opensource.org/licenses/MIT)  
Language: Persian  

---

## [Ambient city](https://freesound.org/people/mehsen/packs/22745/)

I like to call myself an audio enthusiast. A quest for better music quality lead me to audio engineering and that to audio in general. When I bought a new smartphone I was pleasantly surprised when I found two high quality microphones perfectly placed on either side; so I started recording ambient sounds when I was out and about and decided to share them with the world. While technically they are not binaural recordings, when listening with headphones they do convey a sense of atmosphere.   

License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)  
Language: English  

---

# Github reopsitories
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
