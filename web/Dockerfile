FROM python:3.9-alpine

RUN mkdir -p /var/web/static_nginx /var/web/mysite

WORKDIR /var/web/mysite

COPY requirements.txt /var/web

RUN apk add --update --no-cache gcc libc-dev linux-headers pcre-dev

RUN pip install -r /var/web/requirements.txt

RUN apk del gcc libc-dev linux-headers

RUN adduser -D user

RUN chown -R user:user /var/web

USER user
