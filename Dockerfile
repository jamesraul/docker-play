FROM alpine
MAINTAINER jamesraul <jamesraul@gmail.com>
RUN apk update && apk add python
RUN mkdir /hello-world
ADD hello-world.py /hello-world
WORKDIR /hello-world
ENTRYPOINT ["python","hello-world.py"]