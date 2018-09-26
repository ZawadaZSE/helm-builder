FROM lachlanevenson/k8s-helm

RUN apk add make \
 && apk add gettext \
 && rm /var/cache/apk/*

RUN helm init --client-only

ENTRYPOINT ["cat"]

