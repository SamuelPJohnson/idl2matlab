%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% File generated by IDL2Matlab v1.1. %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function testplot_oi()

  x = findgen(100);
  y = 2 .* x + 14;
  window(1);
  [y] = plot_oi('I2M_a1', y, 'I2M_pos', [1]);
  window(2);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'I2M_pos', [1]);
  window(3);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'I2M_pos', [1]);
  window(4);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'max_value', 150, 'I2M_pos', [1]);
  window(5);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'max_value', 150, 'ynozero', 1, 'I2M_pos', [1]);
  window(6);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'max_value', 150, 'ylog', 1, 'I2M_pos', [1]);
  window(7);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'max_value', 150, 'xlog', 1, 'I2M_pos', [1]);
  window(8);
  [y] = plot_oi('I2M_a1', y, 'thick', 4, 'min_value', 50, 'max_value', 150, 'ylog', 1, 'xlog', 1, 'I2M_pos', [1]);
  window(9);
  [y] = plot_oi('I2M_a1', y, 'I2M_a2', y, 'polar', 1, 'I2M_pos', [1]);

return;
% end of function testplot_oi
