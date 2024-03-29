FROM golang:1.16-alpine3.12
RUN apk add build-base
RUN go get github.com/consbio/mbtileserver
RUN apk add curl gzip
RUN mkdir tilesets
RUN mkdir tilesets/au
RUN mkdir tilesets/au/asgsed3
RUN mkdir tilesets/nz
RUN mkdir tilesets/test
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/LGA-2020-06/AUSLGA.mbtiles.gz | gunzip > tilesets/au/lga_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/NZ-2021-04/NZ.mbtiles.gz | gunzip > tilesets/nz/locality_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/2021-05/AUS.mbtiles.gz | gunzip > tilesets/au/locality_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSPOA.mbtiles.gz | gunzip > tilesets/au/poa_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSSA1.mbtiles.gz | gunzip > tilesets/au/sa1_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSSA2.mbtiles.gz | gunzip > tilesets/au/sa2_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSSA3.mbtiles.gz | gunzip > tilesets/au/sa3_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSSA4.mbtiles.gz | gunzip > tilesets/au/sa4_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSGCCSA.mbtiles.gz | gunzip > tilesets/au/gccsa_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2016/ABSSTE.mbtiles.gz | gunzip > tilesets/au/ste_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.ACT.mbtiles.gz | gunzip > tilesets/au/act_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.QLD.mbtiles.gz | gunzip > tilesets/au/qld_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.VIC.mbtiles.gz | gunzip > tilesets/au/vic_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.OT.mbtiles.gz | gunzip > tilesets/au/ot_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.SA.mbtiles.gz | gunzip > tilesets/au/sa_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.WA.mbtiles.gz | gunzip > tilesets/au/wa_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.NSW.mbtiles.gz | gunzip > tilesets/au/nsw_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.NT.mbtiles.gz | gunzip > tilesets/au/nt_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.TAS.mbtiles.gz | gunzip > tilesets/au/tas_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/GNAF-2021-05/gnaf.TAS.mbtiles.gz | gunzip > tilesets/au/tas_gnaf_point.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSPOA.mbtiles.gz | gunzip > tilesets/au/asgsed3/poa_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSSTE.mbtiles.gz | gunzip > tilesets/au/asgsed3/ste_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSSA1.mbtiles.gz | gunzip > tilesets/au/asgsed3/sa1_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSSA2.mbtiles.gz | gunzip > tilesets/au/asgsed3/sa2_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSSA3.mbtiles.gz | gunzip > tilesets/au/asgsed3/sa3_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSSA4.mbtiles.gz | gunzip > tilesets/au/asgsed3/sa4_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/admin-boundaries-mbtiles/releases/download/ABS-2021/ABSMB.mbtiles.gz | gunzip > tilesets/au/asgsed3/mb_boundary.mbtiles
RUN curl -L https://github.com/jxeeno/omt-vector-tiles/releases/download/australia-tilemaker-nolatin/australia.mbtiles.gz | gunzip > tilesets/au/omt.mbtiles
ENTRYPOINT ["mbtileserver"]
