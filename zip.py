#!/usr/bin/python

import zipfile


def unzip(data_path, file_name):
  print("### Unzipping " + file_name + " at " + data_path)
  #extension = ".zip"

  zip_ref = zipfile.ZipFile(data_path + file_name, 'r')
  zip_ref.extractall(data_path)
  zip_ref.close()
