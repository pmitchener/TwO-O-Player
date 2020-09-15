# **2 Player math game**

*	2 players
*	Both players have 3 lives to start. Lives will deplete for each wrong answer
*	Game over when any player reaches zero lives
*	Math addition
*	Generate math addition question of 2 numbers between 1 and 20.
*	Output score at the end of the game.
*	Announce winner of game

### **Classes /Modules**
*	Player 
* TrackPlayer
* Util

## **Class / Module description**
Player (*Class*)  
  This class will hold name, lives of each player

TrackPlayer (*Class*)  
  This class will hold a reference to the players so that it can deplete lives of the correct player on each wrong answer.
  This class will ask the question to the current player and evaluate the players answer
  it will deduct a life on an incorrect answer and out put response to the screen.

Util (*Module*)  
  This module will hold misc. helper functions and constants that the game 
  This class will hold a private random generator that generate and return a number between 1 and 20

