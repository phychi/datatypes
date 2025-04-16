# datatypes

Extra data types for GNU Octave

**Content:**

1. [About](#1-about)
2. [Documentation](#2-documentation)
3. [Installation](#3-installation)
4. [Acknowledgements](#4-acknowledgements)

## 1. About

The **datatypes** package is a collection of [classdef Classes](https://docs.octave.org/latest/classdef-Classes.html) for providing extra data types not available in core Octave.  The package was inspired by the `tablicious` package, but it was coded almost entirely from scratch with focus on MATLAB compatibility both in terms of functionality and visual presentation in Octave's terminal. To this end, **datatypes** also overloads the `disp` and `display` methods of the `cell` class, which are responsible for printing the contents of cell arrays to the terminal, so that `cell` arrays are displayed in a MATLAB-like formatted fashion.

The **datatypes** package provides a visually appealing `table` class as well as classes for `calenderDuration`, `categorical`, `datetime`, `duration`, and `string` arrays, some of which are complete and rigorously tested while others are still a work in progress. In addition to the aforementioned classes, there are several class-related standalone functions as well as two supplementary classes. **Note**, that despite the continuous development over the past 15 months, there is still missing functionality and a lot of unit tests required in certain classes before they are considered robust. As a final remark, the `datetime` class is based on a compiled `oct` function as the underlying workforce for the classdef, which relies on the [`date.h`](https://github.com/HowardHinnant/date) standalone header library. This decision was made for maximum speed and efficiency when handling large `datetime` arrays, which cannot be achieved by parsing the tzdata library via native Octave code. Most likely, there will be an additional year of development before the `datetime` class is mature and rigorously tested, before I start developing a `timetable` class, which is not available yet.

## 2. Documentation
All classdef Classes and their respective methods are documented with [texinfo](https://www.gnu.org/software/texinfo/) format, which can be accessed from the Octave command with the `help` function.  Use dot notation to access the help of a particular method. For example:
```
help table
help table.table
help table.sortrows 
```

You can also find the entire documentation of the **datatypes** package along with its classdef index at [https://pr0m1th3as.github.io/datatypes/](https://pr0m1th3as.github.io/datatypes/). Alternatively, you can build the online documentation locally using the [`pkg-octave-doc`](https://github.com/gnu-octave/pkg-octave-doc) package. Assuming both packages are installed and loaded, browse to any directory of your choice with *write* permission and run:
```
package_texi2html ("datatypes")
```

## 3. Installation

To install the latest release, you need Octave (>=9.1.0) installed on your system. Install it by typing:

  `pkg install -forge datatypes`

Install the latest dev version from the Octave command prompt by typing 

 `pkg install "https://github.com/pr0m1th3as/datatypes/archive/refs/heads/main.zip"`

Load the package by typing

  `pkg load datatypes`

**NOTICE !** Loading the **datatypes** package affects the way cell arrays are displayed in the terminal.

**WARNING !!** Unloading the **datatypes** package while variables of data types provided by this package are in Octave's workspace will most likely make Octave unstable.

## 4. Acknowledgements

The **datatypes** package has been developed to support the necessary functionality for the [**csg-toolkit**](https://github.com/pr0m1th3as/csg-toolkit) package as part of my [RECONSTRUCT](https://www.physicalanthropology.gr/reconstruct.php) project, which has received funding from the European Union’s Horizon 2020 research and innovation programme under the Marie Sklodowska-Curie Grant agreement No 101104702.
