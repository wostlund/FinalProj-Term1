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

<style="font-size:200%;">Log:</style>

<b>1/19/16</b>
Jackson Morgan:
 	-- Sorta fixed error where same enemy would always spawn when you had not spawned a enemy
 	-- made quit game bring you back to title screen so that you could start a new game 
 	-- NEW BUG -- when you start a new game things that should be colored turn white. Game still functions.
 	-- NEW BUG -- enemies used to respond to what you spawned spawing in your lane and spawning one of a few soldier types. Now the same enemy keeps being spawned in seemingly random places.
	-- New AI idea -- tally the range, strength, and speed of the incoming row. Deploy unit that responds best to variable with max value.

<b>1/20/16</b>
Will Ostlund:
	-- Created the basic layout for the shop, so far it doesn't do anything, I'll implement that later
	-- NO BUGS were made in the process
	--Reset the game so that it starts out in the shop like the actual games does
	--NO BUGS were made

Jackson Morgan: 
	-Decided to totally to revamp A.I. as it was too random. 
	- made new helper functions to impliment the new A.I. idea. Also made more helper functions that used the helper functions.
	- NO NEW BUGS were created


<b>1/21/16</b>
Jackson Morgan: 
	- completed lane spawn parts of A.I.
	-Made new class chose functions (2/3)  way done
        -When implimented due to spawning times almost always spawns same enemy(must be fixed)
	-NEW BUG: colors for enemy circles screwed up.

Will Ostlund:
	-Created the mouse coordinates to add a unit choice to the army
	-NEW BUG: a null pointer exception shows up when trying to select the new unit
	-BUG FIXED: Increased the size of the array that shows the unit choices

<b>1/22/16</b> 
Jackson Morgan:
	-Fixed issue where A.I. spawned one type of enemy much more often than other types.
        - made the game pause and resume again, but in doing so:
	- NEW BUG: quit game is broken, breaks everytime pause and resume gets fixed
	- Made it so when you lose the game you can go back to the main menu.
	- Made it so that you can proceed to a new game once you win a game.

Will Ostlund:
	-Set the mouse coordinates to that multiple units can be added to the users army
	-Created the shapes for new units
	-Created attributes for all of the new units
	-NO BUGS were made in the process
	-Set a series of booleans that prevent the purchase of one unit multiple times

<b>1/23/16</b>
Jackson Morgan:
	-Made AI work for all soldier types instead of just three.
        -Implemented necessarry helper functions
	-implemented how A.I. would be chosen
        -created cheat codes
	-made balancing fixes that were in place due to bad logic.

Will Ostlund:
	-Created upgrades for current units and future units (i.e. upgrading the spear units will bolster the effects of a Mounted Spearman purchased in teh future)
	-BUG ADDED: Improving the Armour of a unit will weaken it's effects
	-BUG FIXED: Changed a keyword that had significant effects on the program
	-Created a money system restricting the purchase of upgrades and units with insufficient money
	-Improved the user interface in the shop by making it respond to mouse location
	-Added shapes to the shop to show what units look like
	-Made minor upgrades to balance the game play between units
	-NO BUGS were created in the process


