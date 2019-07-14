---
title: "Use Yaml With Hugo"
description: ''
author: ''
date: 2018-06-30T05:12:59.000Z
tags: []
draft: false
---

## Why use YAML?

Using YAML with HUGO is a breeze. Hugo has supported yaml since 2013. and while TOML is the recommended configuration, I find YAML more readable. And I use YAML more often for other projects.

## Thoughts on switching

Negatives: A lot of hugo documentation uses toml.

Postitives: Yaml seems to be winning the configuration language (2018).  And I am using Yaml with other projects.  Hugo, is the only project I use that defaults to toml.

## First, change your config.toml to config.yaml.

You can use an online convert like: https://toolkit.site/format.html

Which can turn this:

```TOML
baseURL = "http://example.org/"
languageCode = "en-us"
title = "My New Hugo Site"
```
into this:

```YAML
baseURL: 'http://example.org/'
languageCode: en-us
title: My New Hugo Site
```

## Second Update your front matter and archtypes

Hugo's front-matter (and archtypes) can use YAML also.


### References

 * https://gohugo.io/getting-started/configuration/
 * https://gohugo.io/content-management/front-matter/
 * https://gohugohq.com/howto/toml-json-yaml-comparison/
 * https://bwaycer.github.io/hugo_tutorial.hugo/content/archetypes/


