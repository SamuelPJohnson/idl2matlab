function  mat=ulon64arr(varargin)
%function ulon64arr(d1, d2, ...)
%******** *********
%**
ln=length(varargin);
if ln == 1; sz=[1 varargin{1}]; else for i=ln:-1:1; sz(i)=varargin{i}; end; end;
mat=zeros(sz);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

