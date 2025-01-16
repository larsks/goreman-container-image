# Goreman container image

This is an Alpine Linux based [Goreman] image.

[goreman]: https://github.com/mattn/goreman

By default, this runs `goreman start` from the `/app` directory; a typical use case would look something like this:

```
FROM ghcr.io/larsks/goreman:latest

# ... install packages here ....

COPY Procfile ./
```
