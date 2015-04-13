%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab v1.1. %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function testvarsysp()

  global i2mvs_p % SYSTEM VARIABLES

  a = findgen(100);
  i2mvs_p.position = 0;
  i2mvs_p.region = 0;
  i2mvs_p.position = 0;
  i2mvs_p.position = 0;
  i2mvs_p.region = 0;
  window(17);
  i2mvs_p.position = 0;
  i2mvs_p.region = d1_array(-5,0.2,5,0.6);
  plott('I2M_a1', a + 1, 'title', '!!P.POSITION = 0 !!P.REGION = [-5,0.2,5,0.6]');
  oplott(a + 5);
  window(18);
  i2mvs_p.region = 0;
  i2mvs_p.position = d1_array(0.2,-1.0,0.9,1.5);
  plott('I2M_a1', a + 1, 'title', '!!P.POSITION = 0 !!P.REGION = [-5,0.2,5,0.6]');
  oplott(a + 5);

return;
% end of function testvarsysp
