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

## Getting Started

### User interface
You can access the *Rack* tool through the `Apps` menu in the world main docking bar. When it opens the first time you only see an empty `root`. Right-clicking on it gives you a menu which allows you to create a folder.

In order to use drag and drop to add objects to the *Rack* you have to activate the Rack drag and drop setting in `Apps>Preferences`. After activating it you can drag objects from the *object inspector* to any Rack folder.

### Programming Interface
Upon loading the global rack instance is available as `TheRack`. You can access entries of a folder using the `/` message, regardless of whether they are folders or objects:

```Smalltalk
TheRack / 'writings' / 'essays 2017' / 'on racks and boxes'
```

In order to add an object to a folder simply use the `add:` and `add:named:` messages:

```Smalltalk
TheRack / 'writings' add: 'First sketch of a new essay without a title'.

TheRack / 'writings' add: 'First sketch of a new essay' named: 'essay without a title yet'
```

Correspondingly, the messages `remove: entryName` and `rename: entryName to: newEntryName` provide other ways to modify the folders.

## How to cite this work
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
