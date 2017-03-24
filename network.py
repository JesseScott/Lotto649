#!/usr/bin/python

import urllib.request

def dl_file(url, path, file):
  print("### Downloading " + url + " and saving as " + path + file)
  urllib.request.urlretrieve(url, path + file)
