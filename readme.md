# PlaywrightDock

A very basic docker base image for getting playwright running. The purpose of this image is so that we don't have to build the playwright dependencies every time we bring a code change.

This Dockerfile assumes you are using poetry. If you are not using poetry, you can remove the poetry install commands and replace it with whatever.

## Usage

```bash
docker build -t playwrightdock:latest .
```

So then in your main Dockerfile you can use this image as a base image.

```Dockerfile
FROM playwrightdock:latest

# add your dockerfile commands here
COPY . /app
```