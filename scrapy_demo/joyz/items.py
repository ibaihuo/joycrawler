#!/usr/bin/env python
#-*- coding:utf-8 -*-

from scrapy.item import Item, Field

class JoyzItem(Item):
    title = Field()
    link = Field()
    desc = Field()
