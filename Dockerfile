FROM n8nio/n8n:latest

USER root

# ImageMagick ve gerekli paketleri kur
RUN apk add --no-cache \
    imagemagick \
    imagemagick-dev

# İzinleri düzelt
RUN chmod +x /usr/bin/convert /usr/bin/identify /usr/bin/magick || true

USER node

CMD ["n8n"]
