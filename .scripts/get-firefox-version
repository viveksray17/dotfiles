#!/usr/bin/env python
import requests
import bs4

webpage = requests.get("https://archlinux.org/packages/extra/x86_64/firefox/")
soup = bs4.BeautifulSoup(webpage.text, 'lxml')
name = str(soup.select('h2'))
print(name[13:19])
