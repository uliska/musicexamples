Extending to a `lilypond-book` package
---

The idea to create a `lilypond-book` that can be run inline of a LaTeX run is important.
Instead of doing it with LuaLaTeX I now think it's better to do it with Python:

- the `python` package
- https://github.com/hgrecco/python-sty

Python seems better because it can be integrated with other tools like Frescobaldi and because it's the language of
the `lilypond-book` script so probably there is much to be reused.

The idea would be to completely duplicate the syntax of `lilypond-book` so existing `.lytex` files can
be directly used with the new pacakge 
