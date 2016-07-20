FROM centos:centos7
MAINTAINER The CentOS Project <cloud-ops@centos.org>

COPY mongodb-org-3.2.repo /etc/yum.repos.d/mongodb-org-3.2.repo
RUN yum install -y mongodb-org; yum clean all
RUN mkdir -p /data/db
COPY mongod.conf /etc/final-mongod.conf

EXPOSE 27017
