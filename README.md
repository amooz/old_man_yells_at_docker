# old_man_yells_at_docker
A docker contianer for creating emojis of Abe yelling at stuff.  It will look for each image it sees in the `<INPUT>` directory and then produce the `old-man-yells-at-<FILENAME>.png` output in the `<OUTPUT>` directory

I take no credit for the script that actually makes Abe yell at stuff; all credit goes to 
Dominik Roos, the author of [oncilla/old-man-yells-at](https://github.com/oncilla/old-man-yells-at)

## Build the container

To build the container:

```bash
docker build . -t old-man-yells-at
```

## Running the container

You will need to specify the `<INPUT>` and the `<OUTPUT>` directories (relative to the local file system.)

```bash
docker run -v <INPUT_DIR>:/input -v <OUTPUT_DIR>:/output old-man-yells-at
```