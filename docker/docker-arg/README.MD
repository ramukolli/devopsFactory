ARG and env can be confusing at first. Both are Dockerfile instructions which help you define variables, and from within the Dockerfile they feel pretty similar.

ENV is mainly meant to provide default values for your future environment variables. Running dockerized applications can access environment variables.

ARG values are not available after the image is built. A running container won’t have access to an ARG variable value.

To change ENV directly during the build:


ARG VAR_A 5
ENV VAR_B $VAR_A

docker build -t arg-demo --build-arg VAR_A=10 .

