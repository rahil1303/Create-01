# Tutorial 3 – Classes and Methods


Notes you can say out loud in the lab (maps to the PDF)

Constructor & method separation: See Rotor — constructor initializes ([2.3.2.3]); update() and display() separated ([2.3.2.8]).

Transforms: translate + rotate(radians(angle)) wrapped in pushMatrix/popMatrix ([2.3.2.5], [2.3.2.6]).

Modulo: angle = (angle + angularSpeed) % 360 to keep bounded ([2.3.2.7]).

Speed control: increaseSpeed/decreaseSpeed check isOver(...) and clamp speed (−45..45) ([2.3.2.9], [2.3.2.10]).

Passing parameters not globals: rotor methods take mouseX, mouseY ([2.3.2.11]).

Encapsulation: Blob/Band/Puck own their state + behavior; main only orchestrates ([2.3.3.1], [2.3.6.2]).

Scalability: Puck uses r everywhere so size changes don’t break collisions ([2.3.6.1]).





This tutorial builds on **abstraction** (Tutorial 2) and introduces **Object-Oriented Programming (OOP)** in Processing.  
Main concepts: **classes, constructors, methods, encapsulation**.

---

## 2.3.1 Messy Program

**Issues identified in `Tut3ObjectsMessyStart.pde`:**
1. Mouse position handled directly in `draw()` instead of encapsulated.
2. Keyboard handling inline in `draw()` (should be in `keyPressed()`).
3. Inconsistent layout, missing brackets.
4. Poor variable names (`xptl`, `yptl`).
5. Code duplication.
6. Inconsistent conditions and dead code.
7. No clear comments or structure.

**Fixes:**
- Use meaningful names (`rectX`, `rectY`).
- Move keyboard logic to event methods.
- Simplify if-conditions.
- Remove duplication and dead code.
- Structure program with functions/classes.

---

## 2.3.2 Rotor Class

### 2.3.2.1 Create a rotor

Rotor r1;

void setup() {
  size(400,400);
  r1 = new Rotor(100,200);
}

void draw() {
  background(200);
  r1.display();
}
-----
Second Rotor

Rotor r1, r2;

void setup() {
  size(400,400);
  r1 = new Rotor(100,200);
  r2 = new Rotor(300,200);
}

void draw() {
  background(200);
  r1.display();
  r2.display();
}
