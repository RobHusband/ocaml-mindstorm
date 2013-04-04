Mindstorm
=========

Prerequisite under Unix
-----------------------

You need the package "libbluetooth2-dev" (under Debian) or equivalent.
For the USB connection, you must install the package libusb-1.0-0-dev
(its presence should be automatically detected).

Prerequisite under Windows
--------------------------

Do not install the LEGO® fantom drivers.  (If you know how to make
this library work with the LEGO® drivers installed, email us.)

Prerequisite under Mac OS X
---------------------------

None.

Compilation
-----------

In order to compile you need GNU make and "ocaml" in our PATH.  Just
type:

  make

Installation
------------

The installation requires findlib.  Just type:

  make install