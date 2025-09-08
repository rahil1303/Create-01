### Try me 1

Q: What is the difference between && and || in an if-condition?
A: && means both conditions must be true; || means at least one must be true.

Q: In Processing, what happens if you don’t use else after an if?
A: The program simply skips the block when the condition is false — no alternative action happens.

Q: If two different code snippets give different results at x == 50, what concept is being tested?
A: Boundary conditions — whether equality is included or excluded in the condition.

Q: Why is nesting two if-statements less clear than combining them with &&?
A: Because combining makes the logic explicit in one place, easier to read and less error-prone.

Q: What does map(x, 0, width, 10, 80) do?
A: It converts x from the range [0,width] into a proportional value between 10 and 80.

Q: Why use a for loop to draw circles instead of copy-pasting circle()?
A: It avoids repetition, makes the code shorter, and lets you easily change spacing or number of circles.

Q: How does changing the loop step size affect the spacing of objects?
A: A larger step gives more spacing, a smaller step places objects closer together.

Q: What does abstraction mean when writing a function like pointInRect?
A: It hides the details of checking inside a rectangle, so you can reuse it cleanly elsewhere.

Q: How does pointInRect reduce repetition?
A: Instead of rewriting mouse logic, you just call pointInRect() whenever you need that check.

Q: Why pass cx, cy, d, happy into drawEmoi instead of using globals?
A: It makes the function reusable — you can draw multiple Emois with different properties.

Q: If you wanted two Emois on screen, what would you need to change?
A: Call drawEmoi() twice with different coordinates/diameters, no changes inside the function.

Q: What’s the purpose of constrain() when moving or resizing the Emoi?
A: To keep the Emoi inside the screen and prevent it from becoming too small or too large.

Q: How do you detect if a click was inside the Emoi’s face?
A: Check the distance from the click to the center and compare it to the radius.

Q: Why should eye and mouth sizes be derived from the Emoi’s diameter d?
A: So the Emoi scales proportionally — it looks the same at any size.

Q: How does dragging differ from clicking in interactions?
A: Clicking is a one-time event; dragging continuously updates position or size while the mouse is held.



### Try me 2

General (both Highlight & Emoi)

Why did you put some variables inside setup() and some outside?
A: Globals store state across frames (like position/size), locals inside setup() are only needed once for initialization.

What happens if you remove background() from draw()?
A: The old frames remain, so moving shapes leave trails on screen.

Why did you use a function instead of repeating the same code?
A: To avoid duplication, make the code reusable, and easier to update in one place.

How would you draw two creatures instead of one?
A: Just call the drawing function twice with different parameters.

### try me 3

Why check mouseX and mouseY in pointInRect()?
A: Because we need to compare the current mouse position against the rectangle’s bounds.

What happens if you change >= to > in your rectangle check?
A: The edges of the rectangle stop counting as “inside.”

How does the nested for-loop build the 10×8 grid?
A: The outer loop goes over columns, the inner loop over rows, producing every cell in the grid.

What happens if you remove the inner loop?
A: Only a single row of cells is drawn instead of the full grid.


### Try me 4


In Emoi, the parameter d is the diameter of the face.
If you draw the eyes and mouth with fixed values (say 20px eyes, 60px mouth), the proportions look okay for one size — but break when you resize.

Example
// Bad: fixed values
void drawEmoi_fixed(float cx, float cy, float d) {
  circle(cx, cy, d);                // face
  circle(cx - 50, cy - 30, 20);     // left eye (always 20px)
  circle(cx + 50, cy - 30, 20);     // right eye
  arc(cx, cy + 40, 60, 40, 0, PI);  // mouth (always 60px wide)
}


If d = 200, eyes and mouth look normal.

If d = 50, the eyes cover almost the whole face!

If d = 400, the eyes look tiny, stuck in the middle.

// Good: proportional values
void drawEmoi_prop(float cx, float cy, float d) {
  circle(cx, cy, d);                   // face
  float eyeD = d * 0.125;              // 12.5% of face diameter
  float eyeOffsetX = d * 0.25;         
  float eyeOffsetY = d * 0.20;
  circle(cx - eyeOffsetX, cy - eyeOffsetY, eyeD);
  circle(cx + eyeOffsetX, cy - eyeOffsetY, eyeD);
  arc(cx, cy + d*0.25, d*0.55, d*0.35, 0, PI);
}


If d = 50, the eyes become small and close together.

If d = 400, the eyes and mouth enlarge automatically, keeping the same “cartoon face” proportions.

👉 So the reason: Using proportions of d makes the whole Emoi scalable. No matter the face size, it always looks like the same character, just zoomed in or out.

Why use proportions of d instead of fixed values?
A: So the Emoi scales consistently — eyes, mouth, and stroke all resize with the face.

How do you check if a click is inside the Emoi’s face?
A: By measuring the distance from the click to the center and checking if it’s ≤ radius.

Why reset draggingMove and draggingResize in mouseReleased()?
A: To stop the drag action when the mouse button is released.

What happens if you don’t use constrain() when moving or resizing?
A: The Emoi can leave the screen or shrink/grow beyond limits.

How do you toggle happy/sad with a click?
A: Flip the happy boolean depending on whether the click was inside or outside the face.

What’s the difference between mousePressed, mouseClicked, and mouseDragged?
A: mousePressed: fires once when pressed; mouseClicked: fires on press+release without drag; mouseDragged: fires continuously while moving with button held.

Where would you add color changes when resizing?
A: Inside the mouseDragged() block under the resize condition, since that’s where size changes happen.
