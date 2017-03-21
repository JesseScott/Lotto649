#!/usr/bin/python

import urllib
import sys


def dl_file(url, path, file):
  print("### Downloading " + url + " and saving as " + path + file)
  urllib.urlretrieve(url, path + file)
