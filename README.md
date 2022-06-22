# alt-ergo docker images :  ![example workflow](https://github.com/EliasGit2017/alt-ergo-docker-images/actions/workflows/makefile.yml/badge.svg)

[Alt-Ergo](https://alt-ergo.ocamlpro.com/) is an open-source automatic solver of mathematical formulas designed for program verification. It is based on [Satisfiability Modulo Theories](https://en.wikipedia.org/wiki/Satisfiability_modulo_theories) (SMT). Solvers of this family have made impressive advances and became very popular during the last decade. They are now used is various domains such as hardware design, software verification and formal testing. It was developed at [LRI](https://www.lri.fr/), and is now improved and maintained at [OCamlPro](https://www.ocamlpro.com/), and friendly collaboration is maintained with the [Why3](http://why3.lri.fr/) development team.

You can [try Alt-Ergo](https://alt-ergo.ocamlpro.com/try.html) online. Also see the [Alt-Ergo Users' Club](https://alt-ergo.ocamlpro.com/#club).

### Contents :

##### Slim images : images tagged with `*-slim`

The images contain :

* an alpine base (v3.16)

* the alt-ergo binary (corresponding to the version specified in the tag) and the GNU Multiple Precision Arithmetic Library `gmp-dev`.

The default user is named `iamproof` and has no sudo rights (as sudo is not installed in the current version ).  
You can however launch your container with the option `--user=root` to install the alpine packages you wish to add while using the container.

##### GUI image : image(s) tagged with `*-gui` **(X11 only)**

The image(s) contain(s) :

* a debian base (buster-slim)

* the altgr-ergo binary and the following packages : `autoconf libgmp-dev libgtk+2.0-dev libgtk2.0-dev pkgconf zlib1g-dev libgtksourceview2.0-dev`

The default user is kept to `root` for images providing GUI support.

### Usage :

The alt-ergo version is specified in each image tag.

* Slim images :
  
  * Run your container with a volume to the files you want alt-ergo to run on (`.ae`, `.smt2`, `.psmt2` or a `.zip`  containing the previous file formats. Older alt-ergo versions (pre `2.4.0`) use the  `.why` and `.mlw` file format )
  
  * Example (for `alt-ergo.2.3.2`) :
    
    * `docker run --rm -it -v ~/path/to-the-files-on-your-system/:/home/ocaml elias2049/ae_mono:alt-ergo.2.3.2-slim`
    
    * inside the container, you can run alt-ergo : `alt-ergo-2.3.2 -vp yourfile.why # or .mlw`  (`-v` is for the verbose option and `-p` enables pretty printing) 

* Images with GUI support : **(X11 only)** and **altgr-ergo.2.4.1 only**
  
  Please note that if your windowing system is not X11, the following might not work for you (as the containerized application needs to access your Xserver):
  
  * Allow access to non-network local connections by running `xhost +local:root` (you can remove this access with `xhost -local:root`)
  
  * Pull and run the image with a volume to where your `.ae`, `.smt2` files (or associated `.zip`) are located :  
    `docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/path/to-your-ae-files/:/home -e DISPLAY=unix$DISPLAY elias2049/altgr-ergo_gui:latest`
    
    The first volume is used to forward the X11 socket to the container and the second one points to the files on your systems. The `DISPLAY` environment variable needs to be forwarded as well.
  
  * Please note that the graphical user interface for alt-ergo has not been updated for a while and the main interaction for this solver is through the CLI (as it is done in the slim images).

### Source :

[GitHub - EliasGit2017/alt-ergo-docker-images: Generate light alt-ergo docker images](https://github.com/EliasGit2017/alt-ergo-docker-images.git)
