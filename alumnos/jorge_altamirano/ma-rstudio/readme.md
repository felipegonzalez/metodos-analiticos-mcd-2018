#Build

I build it with this command:
docker build --rm=true --force-rm -v /sys/fs/cgroup:/sys/fs/cgroup -t docker.io/philwebsurfer/ma-rstudio .
