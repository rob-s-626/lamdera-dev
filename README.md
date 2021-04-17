I ran into some issues resolving Elm dependencies when getting started with lamdera. I'm using Windows 10 + WSL/Ubuntu, this workaround was only tested on such a setup

This assumes you have docker ready to go

```
cd /into/this/directory

# build the lamdera-dev:latest image
./shell-scripts/build.sh

# run bash inside a container, note my script has ~/code/ assumed, you can either conform to that or change that directory
./shell-scripts/bash.sh
```

you'll now see a bash terminal inside our container, and you can continue with the lamdera guide.

After running `lamdera init` you should see a `src` directory with Elm files on your host machine. If you don't, double check your mounting things
correctly in `bash.sh`. Also note if you want to use a non-default port for `lamdera live`, you'll need to update the `bash.sh` script accordingly
