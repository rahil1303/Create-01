## Excercise Notes

1. Messy Program Cleanup (Tut3ObjectsMessyStart.pde)

Students get a deliberately messy program.

Problems: poor naming, duplicated code, wrong scoping, drawing in draw(), keyboard handling inline, etc.

Task: refactor into clean structure:

clear variable names,

consistent logic,

proper brackets & comments,

remove dead code & duplication.

2. Rotor Class (Rotor.pde + Tut3ObjectsRotorStart.pde)

Starter class Rotor with attributes: (x, y, angularSpeed, angle).

Exercises:

2.3.2.1–2: Create 1 rotor at (100,200), then a second at (300,200).

2.3.2.3: Explain constructor: Rotor(float xInit, float yInit). Runs when object is created.

2.3.2.4: Distinguish method declaration (inside class) vs method call (in main tab).

2.3.2.5–2.3.2.7: Explore pushMatrix()/popMatrix(), translate/rotate, radians(), and modulo % 360.

2.3.2.8: Refactor: split drawing (display()) vs updating (update()).

2.3.2.9–11: Add interactivity: increase/decrease speed with clicks, constrain angular speed, implement isOver(), pass mouse coords as parameters instead of using globals.

3. Blob & Band Program (Tut3ObjectsBlobBandStart.pde + Blob.pde + Band.pde)

Starter sketch has two obvious entities: a pulsing blob and a colorful band.

Initially written without classes (all in one draw() with global vars).

Exercises:

2.3.3.1: Refactor into Blob and Band classes, with attributes + constructor + display + update.

2.3.3.2: Draw a call graph (methods calling methods).

2.3.3.3: Add second band (top of screen) + second blob (to the right).

2.3.3.4: Add 2 rotors to the same sketch.


4. Creature with Encapsulation (Programming Assignment)

Build your own creature (continuation from Tut 2).

Now it must be a class:

Attributes (position, size, color, etc.).

Constructor.

display() and update() methods.

Handle events inside the class, not in the main tab.

Achievement focus: Encapsulation — no drawing/updating the creature directly in the main tab. The main tab should only create the creature and call its methods.


5. 5. Group Exercise: Puck Class (Tut3ObjectsGroupStart.pde)

Given: a bouncing puck controlled with the mouse.

Task:

Encapsulate puck into its own Puck class.

Add constructor, display, update, select, deselect, drag.

Create two pucks (puck1, puck2) at different positions, animate them.

