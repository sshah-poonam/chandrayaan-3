## Chandrayaan 3 Lunar Craft: Galactic Space Craft Control

As a scientist at ISRO controlling the latest lunar spacecraft Chandrayaan 3, your task is to develop a program that translates commands sent from Earth into instructions understood by the spacecraft. The spacecraft navigates through the galaxy using galactic coordinates, represented by x, y, z coordinates (x for east or west location, y for north or south location, and z for distance above or below the galactic plane).

## Requirements

You will be given the initial starting point (x, y, z) of the spacecraft and the direction it is facing (N, S, E, W, Up, Down). The spacecraft receives a character array of commands, and you are required to implement the following functionalities:

  1. Move the spacecraft forward/backward (f, b): The spacecraft moves one step forward or backward based on its current direction.
  2. Turn the spacecraft left/right (l, r): The spacecraft rotates 90 degrees to the left or right, changing its facing direction.
  3. Turn the spacecraft up/down (u, d): The spacecraft changes its angle, rotating upwards or downwards.

  ### Note:

    * The spacecraft’s initial direction (N, S, E, W, Up, Down) represents the reference frame for movement and rotation.
    * The spacecraft cannot move or rotate diagonally; it can only move in the direction it is currently facing.
    * Assume that the spacecraft’s movement and rotations are rigid, and it cannot move beyond the galactic boundaries.

## Example

Given the starting point (0, 0, 0) following (x, y, z) and initial direction N, the following commands should result in the indicated final position and direction:

    1. Commands: [“f”, “r”, “u”, “b”, “l”]
    2. Starting Position: (0, 0, 0)
    3. Initial Direction: N
        * “f” - (0, 1, 0) - N
        * “r” - (0, 1, 0) - E
        * “u” - (0, 1, 0) - U
        * “b” - (0, 1, -1) - U
        * “l” - (0, 1, -1) - N
    4. Final Position: (0, 1, -1)
    5. Final Direction: N

## Prerequisites
  * Ruby 2.7.4
  * Rspec 3.13.0

## Getting Started

1.  Clone this rails project into your local machine:

    > `https://github.com/sshah-poonam/chandrayaan-3.git`

2.  CD into your new local repository:

    > `cd chandrayaan-3`

3.  To run the Rspec:

    > `rspec spec/space_craft_spec.rb`
