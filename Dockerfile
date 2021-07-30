FROM golang:1.16-alpine3.12
RUN apk add build-base
RUN go get github.com/consbio/mbtileserver
RUN apk add curl gzip
RUN mkdir tilesets
RUN mkdir tilesets/au
RUN mkdir tilesets/nz
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/LGA-2020-06/AUSLGA.mbtiles.gz | gunzip > tilesets/au/lga_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/NZ-2021-04/NZ.mbtiles.gz | gunzip > tilesets/nz/locality_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/2021-02/AUS.mbtiles.gz | gunzip > tilesets/au/locality_boundary.mbtiles
ENTRYPOINT ["mbtileserver"]
