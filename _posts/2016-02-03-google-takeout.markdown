---
title: Backing up your entire Google account data
date: 2016-02-03
category:  
tags: TIL, App
layout: post
excerpt_separator: <!--more-->
---

_Today I Learned_ Google provides users a simple way to archive and download all of their data on Google. Including Gmail and Drive.

Few days ago someone approached me with a problem, “My Gmail ran out of space and I need all my emails, they contain important data.” 


<!--more-->


Instead of doing what I usually do and telling him he should have thought about a solution before the matter getting out of hand, I looked around for solutions. This resulted in finding a thorough how-to on backing up Gmail using a command line tool named [gmvault](http://gmvault.org/) on [lifehacker](http://lifehacker.com/how-to-automatically-back-up-and-purge-your-gmail-every-1672481972).

It turned out to be a very good tool and did the work alright. But I looked for other ways too and that was when I stumble upon [Google takeout](https://takeout.google.com) which lets you create an archive of all your data on Google services.

So my archive got ready in an hour, and my attempts to [download it on a VPS failed](https://www.reddit.com/r/linuxquestions/comments/36q2h2/download_a_huge_file_on_a_server_cant_wgetcurl/) miserably. And by miserably I mean after a few tries I encountered an error saying: "Sorry, you have already downloaded that archive the maximum number of times."

Looks like the only way to download them is to do it on a modern customer browser. Which is reasonable since the archive contains A LOT of sensitive data and is **unencrypted**. But with my Internet connection and prices, downloading with a web browser is practically impossible. Oh and to worsen the situation, once I tried to download it on Chrome I faced a [403 error](https://en.wikipedia.org/wiki/HTTP_403) presenting itself in XML format to me. The joys of using the Internet in Iran!


```
1454326119 - Tehran
1454420830 - Tehran
1454488687 - Tehran
1456770430 - Tehran  
```
