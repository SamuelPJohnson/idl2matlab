function num=xregistered(name)
%******* ***************
%**
global I2Mfig I2Mfevn I2Mfgap I2Mreg

num=0;
if isstruct(I2Mreg),
   f=eval('getfield(I2Mreg,lower(name))','0');
   if f > 0; if eval('I2Mfig(int16(f),6) == 3','0'); num=1; end; end;
end;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
