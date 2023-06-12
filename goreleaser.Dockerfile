FROM golang:alpine as build

FROM gcr.io/distroless/static:nonroot
COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY aws-smtp-relay /
ENTRYPOINT ["/aws-smtp-relay"]
