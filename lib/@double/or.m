%|   Logical OR.
%   A | B is a matrix whose elements are 1's where either A or B
%   has a non-zero element, and 0's where both have zero elements.
%   A and B must have the same dimensions unless one is a scalar.
%
%   C = OR(A,B) is called for the syntax 'A | B' when A or B is an
%   object.
%
%   See also XOR.

%   Copyright 1984-2001 The MathWorks, Inc. 
%   $Revision: 1.9 $  $Date: 2001/04/15 12:00:26 $

function c=or(a,b)

if length(b)==1, if b>1, c=bitor(a,b); return; end; end;
c=builtin('or',a,b);
