# cm1102_assessment

This is the repository for our coursework for CM1102. 

The file called 'full code.R' is the complete implemented code for our 2 Player Combat Game.

The code found here for each attributes might be different from the one found in the file called 'full code.R'. This is because implementing each of the attributes alongwith all other attributes being dependant and using each other was not possible with the code that was used to develop each attribute independently. 

The game was developed(implemented) on the model that there is a set number of steps in each game (say 10), at the end of which the health of the two players is looked at. The one with the lower health loses, and the one with the higher health at the end of the 10 steps wins. 

In those 10 steps, each player inflicts some damage to the other player at every step. Due to this, the health of each player at every step updates based on the damage inflicted on that player by the other player, and the recovery that is generated at the beginning of the game once for both the players (which stays the same for that game).

You cannot run the file 'full code.R' by selecting the whole code at once and hitting on RUN. This is because of the input behaviour that we implemented in the code, where the user can decide on which players the game should be in between by inputting the player number. 
On selecting the whole code at once and running it, the code usually breaks.

Follow the steps below to run the code:
1) Run from line 1 to line 15
2) in the console in R(terminal in R), type in the player number that you want as the first player based on the instructions in the code guiding which number corresponds to which character.
3) Hit enter after entering your first player. The code makes variables based on the character you chose for the first player.
4) Now run the code from line 17 to line 22.
5) Repeat the same steps to enter your character choice for the second player.
6) Hit enter after entering your second character. The code makes variables based on the character you chose for the second player. 
7) Run the code from line 24 to line 99(until the end). This will run the whole code, and make plots and update the attributes for both the characters for each of the 10 steps(the code is written for 10 steps of the game to make things simple. This can very easily be scaled upto as many steps as one wishes by just making changes in the values of some variables and size of the vectors.)
