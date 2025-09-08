Basic Drawing

 Does the creature have a face (main circle)?

 Are the eyes drawn (two black circles)?

 Is there a mouth, and can it show happy vs sad?

Use of Proportions

 Are eyes, mouth, and stroke thickness scaled relative to face diameter (not fixed values)?

 Does resizing still look consistent (features don’t stretch weirdly)?

Interactivity

 Click inside creature → it turns happy

 Click outside creature → it turns sad

Dragging & Resizing

 If you press inside and drag → the whole creature moves

 If you press outside and drag → the creature resizes (mouse sets the new radius)

Constraints

 Minimum size limit (not disappearing when too small)

 Maximum size limit (not oversized beyond canvas)

 While moving/resizing, the creature stays visible on the canvas (not cut off)

 ------------------------------------------------------------------------------------------------------------------------------------
 ====================================================================================================================================

 Abstraction & Modularity

 Is there a separate drawEmoi(...) (or drawCreature(...)) function that handles drawing, instead of everything inside draw()?

 Are helper functions used where appropriate (pointInCircle, setEmoiDiameterLimited, etc.) instead of repeating logic?

 Is the mood represented by a boolean (happy = true/false) rather than duplicating drawing code?

Variables

 Are global variables used only for the creature’s state (position, diameter, mood)?

 Are local variables used inside functions for temporary calculations (eye offset, radius, etc.)?

 No unnecessary global variables for things that could be calculated inside the function.

Scalability (Proportions)

 Are features (eyes, mouth, stroke weight) expressed as fractions of the diameter d?

 If the diameter changes, does everything scale smoothly? (good sign of abstraction).

Event Handling

 Are Processing event functions (mousePressed, mouseDragged, mouseReleased, mouseClicked) used correctly?

 Is there a clear separation of concerns (e.g., mousePressed decides drag vs resize, mouseDragged does the action)?

Constraints & Logic

 Is constrain() (or equivalent logic) used to keep the creature inside the canvas and within size limits?

 Is the code robust (no crashes if you click near edges or drag too fast)?

Code Clarity & Style

 Are function and variable names meaningful (emoiX, emoiY, happy) instead of vague (a, b)?

 Are there minimal but clear comments (especially noting which exercise each part solves)?

 Is indentation consistent and easy to read?
