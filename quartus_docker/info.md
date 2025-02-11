# Run Quartus

```cmd
xhost +local:root
docker run -it -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix quartus:13.0
```

ou

```cmd
docker run -dit --name quartus-cli -e DISPLAY=$DISPLAY -e QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix quartus:13.0
```

## Copy exercises files

```cmd
docker cp /home/jakunzler/Downloads/Quartus_Prime_Foundation_17_1_v1.zip <container_id>:/home
```
