#!/usr/bin/python

import sys
from zip import unzip
from network import dl_file
from pprint import pprint

# variables
url = "http://www.bclc.com/documents/DownloadableNumbers/CSV/649.zip"
data_path = "data/"
file_name = "649.zip"

# download zip file and save
dl_file(url, data_path, file_name)

# unzip to csv
unzip(data_path, file_name)
