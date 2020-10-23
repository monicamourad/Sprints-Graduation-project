#!/bin/bash

LINUX_LANDING_AREA=/home/cloudera/covid_project/landing_zone/COVID_SRC_LZ
HDFS_LZ=/user/cloudera/ds/COVID_HDFS_LZ

echo "Global variables = " $LINUX_LANDING_AREA ", " $HDFS_LZ

hdfs dfs -mkdir -p $HDFS_LZ
echo "COVID_HDFS_LZ created successfully"

hdfs dfs -put $LINUX_LANDING_AREA/covid-19.csv $HDFS_LZ
echo "covid-19.csv dataset loaded successfully"
