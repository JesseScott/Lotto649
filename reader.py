#!/usr/bin/python

import csv
import pandas as pd


def read_csv(data_path, file_name):
    extension = ".csv"
    path = data_path + file_name + extension
    print("### Reading " + path)
    index = 0

    with open(path, newline='') as f:
        #reader = csv.reader(f, delimiter=',')
        reader = pd.read_csv(path)
        reader.set_index("DRAW NUMBER", inplace=True)
        for row in reader:
            print(', '.join(row))
            index += 1

        row_count = sum(1 for row in reader)
        print("Read " + str(index) + " lines")
        return reader


def read_last_line(data_path, file_name):
    extension = ".csv"
    path = data_path + file_name + extension
    print("### Reading " + path)

    with open(path, newline='') as f:
        reader = csv.reader(f, delimiter=',')
        row_count = sum(1 for row in reader)
        print("File has " + str(row_count) + " lines")

    skip = row_count - 1
    df = pd.read_csv(path, skiprows=skip, usecols=[1])
    print(df)
    draw_number = df.iat[0, 0]
    print("Most recent Draw # is " + str(draw_number))
