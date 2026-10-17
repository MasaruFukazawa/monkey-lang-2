FROM golang:1.27-alpine

WORKDIR /app

# cgo（C 言語連携）を使わない。alpine には gcc が無いため
ENV CGO_ENABLED=0
