FROM node:12.3.1-alpine

RUN apk add --no-cache bash curl python py-pip
RUN pip install awscli
RUN yarn global add aws-cdk

RUN echo "PS1='\w$ '" > /root/.bashrc
