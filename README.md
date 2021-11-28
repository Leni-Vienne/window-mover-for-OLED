# window-mover-for-OLED

This program aims at increasing significantly OLED monitors lifespan. It's very simple and short, but also has some flaws. Feel free to use it :)

## How it works :
  The program go through each windows and moves them at a rate of 1 pixel per second for 10 seconds in one direction, then switches to an other in an anti-clockwise manner (right -> top -> left -> down).


## Main flaws at the moment :
- You will notice a lag between the movement of one window from another. That's a limitation of AutoHotKey.
- If you have a taskbar or a wallpaper that is not completely dark then the movement will be very noticible which is not ideal.
- the lower the screen PPI (Pixel Per Inch) is, the more noticible the movement will be.
