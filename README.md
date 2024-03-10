# Minimum Reproducable Example

Create a docker container:
```bash
docker build . -t ultralytics_test
```

Run it and log to TXT (should take less than 1min to execute):
```bash
docker run ultralytics_test &> log.txt
```
