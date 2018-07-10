FROM alpine
MAINTAINER Brian O'Kelley <bokelley@appnexus.com>
ADD prebid-server prebid-server
COPY static static/
COPY stored_requests/data stored_requests/data
COPY pbs.yaml .
EXPOSE 8000
ENTRYPOINT ["/prebid-server"]
CMD ["-v", "1", "-logtostderr"]
# DEV: docker run -p 8000:8000 --network host -v '/etc/ssl/certs/ca-certificates.crt:/etc/ssl/certs/ca-certificates.crt' -tls-skip-verify -t prebid-server
