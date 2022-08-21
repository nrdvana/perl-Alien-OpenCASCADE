About Open CASCADE
=================

Open CASCADE is a collection of libraries encompassing all aspects
of CAD software, released under the LGPL by OPEN CASCADE SAS.
You can read all the details at https://dev.opencascade.org

Lots of official documentation refers to this software as "lib OCCT",
however there is no file named "libocct.so" (in fact there are dozens
of libraries none of whcich have occt in the name) and the include
files are distributed as /usr/include/opencascade, so I named the Perl
module Alien::OpenCASCADE.

The Open CASCADE collection of libraries is large, and takes a while
to build, and has a lot of dependencies.  To reduce the dependencies,
(so for example, you don't need OpenGL just to perform some 3D solid
shape processing on a headless server) Debian breaks the libraries up
into 7 groupings: Foundation, Modeling Data, Modeling Algorithms,
Data Exchange, Draw, Visualization, and Application Features.
(as well as usual Debian divisions like -dev, -docs, and -misc)

Alien::OpenCASCADE
==================

This Alien distribution uses the same sub-divisions as Debian, so
that the low-level libraries can be installed without all the
dependencies of the high-level ones.

However, if you were to download/compile/install each of these
separately, it would be a massive waste of bandwith and effort.
The source code is 200MB+, and compilation of the higher-level
libraries can take several minutes, and it compounds if each high-
level library has to compile the lower-level libraries in an empty
build tree.

To solve this problem, this collection of modules allows you to
set environment variables:

  OPENCASCADE_SOURCE_TARBALL=...
  OPENCASCADE_BUILD_DIR=...

so that the source code only downloads once and the individual
libraries only get built once, cumulatively building in the same
build directory.

As a guard against future versions of this library, I decided to
include the major version in the name published on CPAN.  So the
names you install would be

  cpanm Alien::OpenCASCADE7::Foundation
  cpanm Alien::OpenCASCADE7::ModelingData
  cpanm Alien::OpenCASCADE7::ModelingAlgorithms

(the bundling of these libraries is not complete)
(patches welcome)
