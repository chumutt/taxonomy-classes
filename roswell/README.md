
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/taxonomy-classes.ros
    ./roswell/taxonomy-classes.ros

Build a binary:

    ros build roswell/taxonomy-classes.ros

and run it:

    ./roswell/taxonomy-classes

Or install it in ~/.roswell/bin:

    ros install roswell/taxonomy-classes.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/taxonomy-classes [name]~&

Your users can install the script with ros install chu/taxonomy-classes

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
