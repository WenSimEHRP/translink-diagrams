![banner-art](./misc/readme-banner-art.png)

## Compiling

In order to compile the diagrams, you will need [typst](https://typst.app)
and [paiagram](https://github.com/WenSimEHRP/paiagram). Once you've installed
typst and placed paiagram at your [local package folder](https://github.com/typst/packages#local-packages),
you can simply compile them by typing

```sh
typst c <filename>
```

whereas `<filename>` is the name of the file that you want to compile.

You can also compile using `make`. Make sure you have an sh-compatible
shell environment (you could use `git-bash` on Windows) and installed `make`.
You can compile using the following command:

```sh
make
```

Compiling however requires the `MetaPro` font. You can get a copy of it
at [online-fonts.com](https://online-fonts.com/fonts/metapro).
