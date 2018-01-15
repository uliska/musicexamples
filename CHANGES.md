`musicexamples`
---------------
**Changelog**

----------

#### Current Git

- Discard the efforts to provide support for the generation
  of LilyPond scores. This will be achieved by working with
  the lyluatex package.

- Move fancyref support in separate package xmpFancyref  
  It isn't nice behaviour to load a package like fancyref
  in a package like `musicexamples`.  
  Maybe later we'll move it back in the main package
  but control it with a package option.

#### v0.2
As in the manual v.0.2