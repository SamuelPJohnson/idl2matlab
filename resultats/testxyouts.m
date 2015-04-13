%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab v1.1. %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function testxyouts()

  a = findgen(100);
  y = 2 .* a + 5;
  b = 20;
  c = 15;
  t = 'test!Cvariable!!';
  red = d1_array(0,1,1,0,0,1);
  green = d1_array(0,1,0,1,0,1);
  blue = d1_array(0,1,0,0,1,0);
  loadct(35);
  [a, y] = plott('I2M_a1', a, 'I2M_a2', y, 'color', 100, 'I2M_pos', [1, 2]);
  xyouts('I2M_a1', d1_array(10,10,10,10,10), 'I2M_a2', d1_array(20,30,40,50,60), 'I2M_a3', d1_array('rouge','vert','bleu','blanc','jaune'), 'color', d1_array(2,3,4,1,5));
  loadct(0);

return;
% end of function testxyouts
