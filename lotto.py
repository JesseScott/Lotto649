#!/usr/bin/python

import sys
from zip import unzip
from network import dl_file
from reader import read_csv, read_last_line
from pprint import pprint

# variables
url = "http://www.bclc.com/documents/DownloadableNumbers/CSV/649.zip"
data_path = "data/"
file_name = "649"

# download zip file and save
#dl_file(url, data_path, file_name)

# unzip to csv
#unzip(data_path, file_name)

# read csv
read_last_line(data_path, file_name)
