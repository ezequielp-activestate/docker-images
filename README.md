# docker-images

## 1. Build images
```bash
$ ./build.sh  # optional flag: --channel=master
```

## 2. Create containers

> Available images: `centos8:testing`, `ubuntu22.04:testing`

```
docker run -it --name <container_name> <image_name>
```

or add to `~/bashrc`:

```bash
function launch() {
    if [ "$#" -ne 2 ]; then
        echo "Usage: launch <image> <container name>"
        return 1
    fi

    if docker ps -a --format '{{.Names}}' | grep -qw "$2"; then
        docker start -ai "$2"
    else
        docker run -it --name "$2" "$1"
    fi
}
```
(create a new container or restart an existing one)

### 3. Deploy a project

```bash
# inside a container
$ deploy <project url>  # optional flag: --portable
```
