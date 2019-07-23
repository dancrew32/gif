# GIF

A simple workflow for creating animated GIF files from image sequences rendered in [Blender](https://www.blender.org/).

```bash
make deps scrape run play
```

![Example](./out.gif)

* `deps` installs [ImageMagick](https://imagemagick.org/index.php).
* `scrape` moves `/tmp/*.png` files to the `./images` directory.
* `run` creates an animated `out.gif` file.
* `play` opens and plays out.gif

You may want to adjust the settings in the `makefile` to match your desired framerate. The default framerate is 24fps.

