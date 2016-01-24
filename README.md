# FinalProj-Term1
Final Project for my first term of APCS


1-Project Description
2-Directions to compile/run
3-Directions to use it.

CHEAT CODES:
The 'i' key wins the game for you.
The 'o' key will lose the game for you.
The 'p; key will increase your score.
The 'l' key will decrease your code.
The Konami Code will find you cleaning bathrooms for the company as it stops game development in favor of pachinko 
machines. Just kidding, it doesn't do anything.  

Log: 

1/19/16
Jackson Morgan:
 	-- Sorta fixed error where same enemy would always spawn when you had not spawned a enemy
 	-- made quit game bring you back to title screen so that you could start a new game 
 	-- NEW BUG -- when you start a new game things that should be colored turn white. Game still functions.
 	-- NEW BUG -- enemies used to respond to what you spawned spawing in your lane and spawning one of a few soldier types. Now the same enemy keeps being spawned in seemingly random places.
	-- New AI idea -- tally the range, strength, and speed of the incoming row. Deploy unit that responds best to variable with max value. 


1/20/16 
Jackson Morgan: 
	-Decided to totally to revamp A.I. as it was too random. 
	- made new helper functions to impliment the new A.I. idea. Also made more helper functions that used the helper functions.
	- NO NEW BUGS were created


1/21/16 
Jackson Morgan: 
	- completed lane spawn parts of A.I.
	-Made new class chose functions (2/3)  way done
        -When implimented due to spawning times almost always spawns same enemy(must be fixed)
	-NEW BUG: colors for enemy circles screwed up. 

1/22/16 
Jackson Morgan:
	-Fixed issue where A.I. spawned one type of enemy much more often than other types.
        - made the game pause and resume again, but in doing so:
	- NEW BUG: quit game is broken, breaks everytime pause and resume gets fixed
	- Made it so when you lose the game you can go back to the main menu.
	- Made it so that you can proceed to a new game once you win a game. 

1/23/16 
Jackson Morgan:
	-Made AI work for all soldier types instead of just three.
        -Implemented necessarry helper functions
	-implemented how A.I. would be chosen
        -created cheat codes
	-made balancing fixes that were in place due to bad logic.


