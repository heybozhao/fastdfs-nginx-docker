#!/bin/sh
source /etc/profile
ENV_VARS="FASTDFS_BAST_PATH TRACKER_SERVER"
ENV_FILES="/etc/fdfs/tracker.conf /etc/fdfs/storage.conf /etc/fdfs/mod_fastdfs.conf"
for file in ${ENV_FILES};do
	envsubst '${FASTDFS_BASH_PATH} ${TRACKER_SERVER}' < ${file}.default  > ${file}
done