FROM alpine as step1
RUN apk add --no-cache ca-certificates
RUN sleep 60 && touch /tmp/step1
FROM alpine as step2
RUN apk add --no-cache ca-certificates
RUN sleep 60 && touch /tmp/step2
FROM alpine as step3
RUN apk add --no-cache ca-certificates
RUN sleep 60 && touch /tmp/step3
FROM alpine
RUN apk add --no-cache ca-certificates
COPY --from=step1 /tmp/step1 /var/step1
COPY --from=step2 /tmp/step2 /var/step2
COPY --from=step3 /tmp/step3 /var/step3
