FROM busybox
ARG ARGNAME=default
RUN env
RUN echo "ARGNAME=${ARGNAME}"
RUN echo "ARG Prefix=${ARGNAME%_*}" \
 && echo "ARG Suffix=${ARGNAME#*_}"
ENV myARG=$ARGNAME
CMD env
