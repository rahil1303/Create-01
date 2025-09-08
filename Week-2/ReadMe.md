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
