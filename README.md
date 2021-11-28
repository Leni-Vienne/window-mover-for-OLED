# window-mover-for-OLED

This program aims at increasing significantly the lifespan of OLED monitors. It's very simple and short, but also has some flaws.

## How it works :
  The program goes through each windows and moves them at a rate of 1 pixel per second for 10 seconds in one direction, then switches to an other in an anti-clockwise manner (right -> top -> left -> down).


## Main flaws at the moment :
- You will notice a lag between the movement of one window from another. That's a limitation of AutoHotKey.
- If you have a taskbar or a wallpaper that is not completely dark then the movement will be very noticible which is not ideal.
- The lower the screen PPI (Pixel Per Inch) is, the more noticible the movement will be.
- Maximized apps like Google Chrome will not be moved, but windowed bordeless games will.
