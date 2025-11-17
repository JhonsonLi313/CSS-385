<h1>Common Use of Media Items</h1>
Puzzle driven 2D platformers like Celeste and Fez make us of media items that are very simple but adds a lot to the game itself. Some of the things it uses are:

* Sound Effects: Specifically sound effect used for mechanics like jumping, landing, hazards, etc. which helps player identify when they have performed an action.
* Collectibles: Items like Strawberries and Cassettes or more commonly coins in a lot of games give players something to work towards if they wish to.
* Particle Effects: Like sound effects, this help provide visual calrify to the player's action with whatever mechanic they are performing. Could be dust from jumping, collectible sparkles, or damage flashing indicator.

---
<h1>Integration Strategy</h1>
With Integrating the media into my game there are a few ways to go about this. Since my game is focused on using a key press to switch the layout that would need to be the main focus of sound effect and particle effects.

One strategy is to have entirely different sets of media load depending on which map state the player is on. When a player presses the swap button the game swaps tilesetse, color, and possibly different sound effects.
| Pros  | Cons |
| ------------- | ------------- |
| Reinforces the core mechanic of swapping  | Requires double the workload which is not ideal for how much time we have left  |
| Clear feedback for the player  | If not done well could overwhelm the players or confuse them instead |

Another strategy is to use particle effects and sound effects to indicate a swap has occurred.
| Pros  | Cons |
| ------------- | ------------- |
| Makes the game feel more interactive | If too many elements are making sound or have particle effects it'll do the opposite and make it confusing |
| Players get contextual feedback when they perform an action  | Requires level design balancing between clarity of other effects being performed |

---
<h1>Integration Strategy Approach</h1>
For my game Flipside, the ideal approach would be to use a bit of both strategies I have mentioned:

Focusing on clarity, simplicity, and feasibility within the project timeline. Since the core mechanic of the game is swapping between two map states with a single key press, the media needs to reinforce that action without overwhelming the player or requiring a massive art and audio workload. 

I would use state dependent changes for the most important gameplay elements such as switching the color of tiles, changing the appearance of platforms, or using slightly different sound effects during the swap. This ensures players always know which state they are in and can visually distinguish hazards from safe ground.

To add on to that, I would use particle and sound effects to highlight the moment of swapping. A short particle release and a quick audio cue will give clear feedback. These effects would also help the swap feel satisfying while staying readable and not visually noisy.
