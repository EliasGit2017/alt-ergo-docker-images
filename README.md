# alt-ergo docker images :  ![example workflow](https://github.com/EliasGit2017/alt-ergo-docker-images/actions/workflows/makefile.yml/badge.svg)

### Contents :

##### Slim images : images tagged with `*-slim`

The images contain :

* an alpine base (v3.16)

* the alt-ergo binary (corresponding to the version specified in the tag) and the GNU Multiple Precision Arithmetic Library `gmp-dev`.

The default user is named `iamproof` and has no sudo rights (as sudo is not installed in the current version ).  
You can however launch your container with the option `--user=root` to install the alpine packages you wish to add.

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
    
    * `docker run --rm -it -v ~/path/to-your-files-on-your-system/:/home/ocaml elias2049/ae_mono:alt-ergo.2.3.2-slim`
    
    * inside the container, you can run alt-ergo : `alt-ergo-2.3.2 yourfile.why # or .mlw`  

* Images with GUI support : (X11 only)
  
  * 

### Source :
