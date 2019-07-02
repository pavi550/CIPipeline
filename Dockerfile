#comments in Dockerfiles

arg code_version="latest"
FROM ubuntu:$code_version
run echo $code_version
arg license_key="123-456"
env ora_port=1521
LABEL MAINTAINER praveen@oracle.com
RUN mkdir /code
COPY sample.sh /code/sample.sh
RUN chmod +x /code/sample.sh
run echo $license_key
run echo $env
WORKDIR /code
CMD sh /code/sample.sh
