#!/bin/bash

# for dds
wget -mc http://django-dynamic-scraper.readthedocs.org/en/latest
mv django-dynamic-scraper.readthedocs.org dds
find . -name "*.html" | xargs sed -i '/googleapis/d'

# for scarpy
wget -mc http://doc.scrapy.org/en/latest/
find . -name "*.html" | xargs sed -i '/googleapis/d'
