FROM golang:1.16-alpine3.12
RUN apk add build-base
RUN go get github.com/consbio/mbtileserver
RUN apk add curl gzip
RUN mkdir tilesets
RUN mkdir tilesets/au
RUN mkdir tilesets/nz
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/LGA-2020-06/AUSLGA.mbtiles.gz | gunzip > tilesets/au/lga_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/NZ-2021-04/NZ.mbtiles.gz | gunzip > tilesets/nz/locality_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/2021-05/AUS.mbtiles.gz | gunzip > tilesets/au/locality_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/POA-2016/AUSPOA.mbtiles.gz | gunzip > tilesets/au/poa_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05-multistate/gnaf.ACT.mbtiles.gz | gunzip > tilesets/au/act_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05-multistate/gnaf.NSW.mbtiles.gz | gunzip > tilesets/au/nsw_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05-multistate/gnaf.NT.mbtiles.gz | gunzip > tilesets/au/nt_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05-multistate/gnaf.TAS.mbtiles.gz | gunzip > tilesets/au/tas_gnaf_point.mbtiles
ENTRYPOINT ["mbtileserver"]
