dear diary,

today frontend build tools have frustrated me to the limit, and I have finally read the [gnu make](https://www.gnu.org/software/make/manual/html_node/index.html) user guide and become enamoured by this super cute and clever language agnostic build tool. incidentally I have also been notified of the existence of [watch](https://linux.die.net/man/1/watch) and it is the Best Thing.

here is a simple template to build a static web page using Make, es6, and sass! now I can make quick web sketches and not be super sad about gluing together a build with fucking webpack just so I can write futurejs and use css preprocessors.

first things first:

- `npm i` to install toolz

then to run the project:

- build the project with `watch make`
- serve project with `python -m SimpleHTTPServer`, aim browser at `http://localhost:8000`
- write code in `index.html`, `src/main.js`, and `src/main.scss`


that's it! `watch make` automatically rebuilds project on file changes so just leave it running. feel free to make more `.scss` files in the `/src` folder and import into `src/main.scss`. if I were particularly compelled it'd be simple to add other stuff to the Makefile, like css postprocessors (autoprefix) or browsersync or eslint and whatnot. and it's ready to be pushed straight to github pages.

dear diary, I am so delighted and I love computers somuch.

<3, daiyi.




## BUT WHY

this solves my simple frustrations of:

- I do a lot of simple browser experiments and want a template to quickly get them up, but
- I am not a fan of how needlessly complicated and bloated frontend built systems (webpack, gulp, etc)

my aesthetic:

- speedy
- cute
- minimal

Q: If you're using make to build the project, why didn't you just use npm scripts instead?

A: npm scripts is probably the closest equivalent to the frontend `make`. But like, make is pretty rad, and now that yarn is around it's not a bad idea to be package manager agnostic :P

Q: dude even just `node-sass` and `babel` are bloated af

A: yeah.

Q: But if you want es6/sass/experimental browser stuff can't you just use codepen or jsfiddle or something

A: Aside from the convenience of being able to work offline, e.g. in a spotty-wifi Brooklyn cafe or a hostel in El Chaltén, and not having my custom keybinds and custom window tiling configuration, I'm kinda into decentralised web a la the spirit of [indieweb](https://indieweb.org/). I like the idea of being able to host my code and experiments from my own domain. I mean, I'm totally just using githubpages, but if I wanted to I can pack up and hunker down on my own node, you know?
