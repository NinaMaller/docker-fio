# docker-fio
To run:
Clone the repository
Change the "filename" in randread.fio to the disk you want to benchmark
Build the image:
```
docker build -t docker-fio .
```
Run the container:
```
docker run -it --privileged docker-fio
```

Options in running the container:
use -it to get updates on job while running

You can also comment out the last line in the Dockerfile and change it to "ENTRYPOINT bash", then build the image and run the container. This way you have the environment set up with fio running, so you can create your own jobfile and run it there.
