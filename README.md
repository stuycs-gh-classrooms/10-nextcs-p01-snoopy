[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Name0: Sarah Yu
### Name1: Michelle Ye
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Breakout

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- Bouncing ball
- Collision check
- The paddle
- Array of bricks that disappear when hit
- Score
- Lives
- Play/pause
- Reset

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

- Powerups (double balls, slower ball, longer paddle)
- Control the ball speed
- Rainbow bricks
- Custom ball with a complex shape
- Control paddle with arrow/wasd keys

### Array Usage
How will you be using arrays in this project?

1D Array:
- Potentially can create one row of reinforced bricks at the very top of the screen

2D Array:
- Other rows of bricks


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Space (play/pause)
- r for reset
- Optional: f to make the ball faster, s to make the ball slower

Mouse Control:
- Mouse movement: mouseX
- Mouse pressed: possibly click for play/pause instead of using space


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

Ball
- Instance variables:
  - PVector center
  - int bsize
  - int xspeed
  - int yspeed
- METHODS
  - void Display
  - void Move
  - void Bounce
  - void Pause to pause the motion of the ball
  - void Reset to reset the position of the ball

Paddle
- Instance variables:
  - PVector corner
- METHODS
  - void Display
  - void Move (see Tile lab)
  - boolean Collision check

Bricks
- Instance variables:
  - PVector corner
- METHODS
  - void Display
  - void Disappear to remove a brick when it is hit
  - boolean Collision check
 
Brick grid
- Instance variables:
  - Brick[][] grid
  - int brickSize
- METHODS
  - void Display
  - void Reset to reset the bricks (would it be possible to call display again on the grid to make it reset?)
