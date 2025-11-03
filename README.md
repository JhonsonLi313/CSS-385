<h1>Performance Concerns</h1>

A game similar to mine is Guacamelee!, a 2D platformer that also features a world-swapping mechanic. In that game, the player can instantly shift between two parallel worlds while platforming. These quick transitions raise several performance concerns that also apply to my project:

1. Performance issues due to both versions being loaded at the same time. Too many sprite and tiles being called at the same time could cause a lot of frame rate.
2. The change in collision boxes can also cause a sudden drop in frame rate and overall performance due to the switching.
3. If the entire map is reloaded each time we switch that could also cause frame rate issues when a swap occurs.

---
<h1>Strategy for Concerns</h1>

When it comes to the issue of both versions being loaded at the same time, I can work around this by having both layouts being loaded in memory and only render the active layout. This way when The switch does happen it still happens seamlessly while not making the GPU do extra work.

The performance drop when collision boxes change can be fixed in a similar way to the first concern. I can make it so only active regions have to update collision boxes.

In the case that the entire map is reloaded each time, I can keep both layouts cached in memory and just toggle visibility and other properties.

---
<h1>How Strategies Can Be Implemented In My Game</h1>

In my platformer, I’ll preload both versions of the stage and toggle between them using visibility and collision. Only the active layout will render and update physics at any given time. I also plan to partition the level so only visible regions are processed, reducing unnecessary work on both the CPU and GPU. These optimizations will make the swapping mechanic feel instantaneous and responsive while maintaining smooth performance
