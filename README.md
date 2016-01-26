# FinalProj-Term1
Final Project for my first term of APCS


1-Project Description <br>
Our project is a strategy game based off warlords call to arms. In the beginning 
of each round you can buy and upgrade units. Then start the battle. Each soldier type has different stats and spawn time.
This is where the strategy comes in. There are two main types of enemies, ranged and melee. Ranged enemies are slower
but can attack from afar. Melee enemies are faster, but have to attack up close. The goal is to get your soldiers to the other end.
When you do your score goes up one, and the enemy score decreases by one. Whoever gets to 50 first wins.<br>
2-Directions to compile/run<br>
This is very simple. You open processing and click play. <br>
3-Directions to use it.<br>
When in the game you use the arrow keys and the enter key. The left and right keys allow you to select the unit of your choice. The up and down keys allow you to cycle through your lanes. The enter key spawns the selected unit in the selected lane. You can only spawn the units if your box turns blue of if the selected circle turns blue. This indicates that you are past the spawn time required to spawn you soldiers.<br>

There are also cheat codes if you, like us, cannot win. <br>

CHEAT CODES: <br>
The 'i' key wins the game for you. <br>
The 'o' key will lose the game for you.<br>
The 'p' key will increase your score.<br>
The 'l' key will decrease your code.<br>
The Konami Code will find you cleaning bathrooms for the company as it stops game development in favor of pachinko <br>
machines. Just kidding, it doesn't do anything. <br> 

<style="font-size:200%;">Log:</style>

<b>1/19/16</b>
Jackson Morgan:<br>
 	-- Sorta fixed error where same enemy would always spawn when you had not spawned a enemy<br>
 	-- made quit game bring you back to title screen so that you could start a new game <br>
 	-- NEW BUG -- when you start a new game things that should be colored turn white. Game still functions.<br>
 	-- NEW BUG -- enemies used to respond to what you spawned spawing in your lane and spawning one of a few soldier types. Now the same enemy keeps being spawned in seemingly random places.<br>
	-- New AI idea -- tally the range, strength, and speed of the incoming row. Deploy unit that responds best to variable with max value.<br>

<b>1/20/16</b>
Will Ostlund:<br>
	-- Created the basic layout for the shop, so far it doesn't do anything, I'll implement that later<br>
	-- NO BUGS were made in the process<br>
	--Reset the game so that it starts out in the shop like the actual games does<br>
	--NO BUGS were made<br>

Jackson Morgan: <br>
	-Decided to totally to revamp A.I. as it was too random. <br>
	- made new helper functions to impliment the new A.I. idea. Also made more helper functions that used the helper functions.<br>
	- NO NEW BUGS were created<br>


<b>1/21/16</b>
Jackson Morgan: <br>
	- completed lane spawn parts of A.I.<br>
	-Made new class chose functions (2/3)  way done<br>
        -When implimented due to spawning times almost always spawns same enemy(must be fixed)<br>
	-NEW BUG: colors for enemy circles screwed up.<br>

Will Ostlund:<br>
	-Created the mouse coordinates to add a unit choice to the army<br>
	-NEW BUG: a null pointer exception shows up when trying to select the new unit<br>
	-BUG FIXED: Increased the size of the array that shows the unit choices<br>

<b>1/22/16</b> 
Jackson Morgan:<br>
	-Fixed issue where A.I. spawned one type of enemy much more often than other types.<br>
        - made the game pause and resume again, but in doing so:<br>
	- NEW BUG: quit game is broken, breaks everytime pause and resume gets fixed<br>
	- Made it so when you lose the game you can go back to the main menu.<br>
	- Made it so that you can proceed to a new game once you win a game.<br>

Will Ostlund:<br>
	-Set the mouse coordinates to that multiple units can be added to the users army<br>
	-Created the shapes for new units<br>
	-Created attributes for all of the new units<br>
	-NO BUGS were made in the process<br>
	-Set a series of booleans that prevent the purchase of one unit multiple times<br>
	GOAL: To make shapes to represent each unit

<b>1/23/16</b>
Jackson Morgan:<br>
	-Made AI work for all soldier types instead of just three.<br>
        -Implemented necessarry helper functions<br>
	-implemented how A.I. would be chosen<br>
        -created cheat codes<br>
	-made balancing fixes that were in place due to bad logic.<br>

Will Ostlund:<br><br>
	-Created upgrades for current units and future units (i.e. upgrading the spear units will bolster the effects of a Mounted Spearman purchased in teh future)<br>
	-BUG ADDED: Improving the Armour of a unit will weaken it's effects<br>
	-BUG FIXED: Changed a keyword that had significant effects on the program<br>
	-Created a money system restricting the purchase of upgrades and units with insufficient money<br>
	-Improved the user interface in the shop by making it respond to mouse location<br>
	-Added shapes to the shop to show what units look like<br>
	-Made minor upgrades to balance the game play between units<br>
	-NO BUGS were created in the process<br>

<b>1/24/16</b>
Jackson Morgan:<br>
	-Added Cheat Codes<br>
	-Created different levels in the game <br>
	-Made the player and enemy able to be different races<br>
	-Added the ability to chose a race to the homescreen<br>
	-Made it so you faced different race types in each level <br>
	-Made it so once you beat all the levels you could start over<br>
	-Made new screen for when you beat all levels.<br>

Will Ostlund: <br>
    	-Created new units for each individual races<br>
	-Each one of these units have different attributes and can only be spawned by its indivodual race<br>
	-Players can now buy these units at the shop<br>
	-Created a Shape for each unit<br>
	-BUG: When playing there is no indicator of the unit type at the shop other than its shape<br>
	-BUG: When spawning units there is no way for the user to tell what unit is selected <br>
	-BUG FIXED: Added descriptions to regular units will do this for the special ones <br>
	-BUG FIXED: Text is now displayed when showing the user's choice on the screen when he is choosing a unit to spawn <br>
	GOAL FOR TOMORROW: Make a few minor aesthetic changes completely finishing the game

<b>1/25/16</b>
Will Ostlund: <br>
	-Created descriptions for every unit<br>
	-Fixed colors so that they for each race<br>
	-BUG: When the user picks the race, it does not immediately convert the shapes to accomodate this choice<br>
	-BUG FIXED: The shop had already set its shapes by the time the choice was made<br>
	-Made tweaks to the unit attributes
	-Finished our project
