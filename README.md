This assumes you have docker ready to go

```
cd /into/this/directory

# build the lamdera-dev:latest image
./deploy/build.sh

# run bash inside a container, note my script has ~/code/ assumed, you can either conform to that or change that directory
./deploy/bash.sh


# this will mount this directory to the root user's home code directory /root/code
# You can then run `lamdera init` in the container, and it'll create files for you that get saved to your host machine
```

you'll now see a bash terminal inside our container, and you can continue with the lamdera guide.
After running `lamdera init` you should see a `src` directory with Elm files on your host machine. If you don't, double check your mounting things
correctly in `bash.sh`
