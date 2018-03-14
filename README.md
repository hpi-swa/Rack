# Rack [![Build Status](https://travis-ci.org/hpi-swa/Rack.svg?branch=master)](https://travis-ci.org/hpi-swa/Rack) [![Coverage Status](https://coveralls.io/repos/github/hpi-swa/Rack/badge.svg?branch=master)](https://coveralls.io/github/hpi-swa/Rack?branch=master)
A hierarchical ordering system for objects in Squeak/Smalltalk with a graphical interface

## How to install
1. Get [Squeak 5.0 or later](http://www.squeak.org)
2. Load [Metacello](https://github.com/dalehenrich/metacello-work)
3. Finally, load the Rack with the following command:

```Smalltalk
Metacello new
  baseline: 'Rack';
  repository: 'github://hpi-swa/Rack/repository';
  load.
```

### How to cite this work
If you did work based on / or build using the Rack and want to write about the work, you can reference the Rack through the reference at the bottom.

````Bibtex
inproceedings{Rein2017LYP,
 author = {Rein, Patrick and Lincke, Jens and Ramson, Stefan and Mattis, Toni and Hirschfeld, Robert},
 title = {Living in Your Programming Environment: Towards an Environment for Exploratory Adaptations of Productivity Tools},
 booktitle = {Proceedings of the 3rd ACM SIGPLAN International Workshop on Programming Experience},
 series = {PX/17.2},
 year = {2017},
 isbn = {978-1-4503-5522-3},
 location = {Vancouver, BC, Canada},
 pages = {17--27},
 numpages = {11},
 url = {http://doi.acm.org/10.1145/3167108},
 doi = {10.1145/3167108},
 acmid = {3167108},
 publisher = {ACM},
 address = {New York, NY, USA},
 keywords = {desktop environment, exploratory programming, live programming, productivity tools, programming environment},
} 
````
