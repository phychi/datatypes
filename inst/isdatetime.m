## Copyright (C) 2024-2025 Andreas Bertsatos <abertsatos@biol.uoa.gr>
##
## This file is part of the statistics package for GNU Octave.
##
## This program is free software; you can redistribute it and/or modify it under
## the terms of the GNU General Public License as published by the Free Software
## Foundation; either version 3 of the License, or (at your option) any later
## version.
##
## This program is distributed in the hope that it will be useful, but WITHOUT
## ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
## FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
## details.
##
## You should have received a copy of the GNU General Public License along with
## this program; if not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {datatypes} {@var{TF} =} isdatetime (@var{X})
##
## True if input is a @code{datetime} array, false otherwise.
##
## @code{@var{TF} = isdatetime (@var{X})} always returns a logical scalar,
## irrespective of the size of @var{X}.
##
## @end deftypefn
function TF = isdatetime (x)
  TF = isa (x, 'datetime');
endfunction

%!assert (isdatetime (datetime ([1, 2, 3])), true);
%!assert (isdatetime (datetime ([1, 2, 0; 1, 4, 0])), true);
%!assert (isdatetime ([0, 1, 2]), false);
%!assert (isdatetime ({true, false}), false);
%!assert (isdatetime ({datetime([1, 2, 3])}), false);
