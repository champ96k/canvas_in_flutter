# Example

| [Cut Corners](https://github.com/champ96k/canvas_in_flutter/tree/main/custom_clipper/lib/src/cut_corners) |     | [Quadratic Bezier](https://github.com/champ96k/canvas_in_flutter/tree/main/custom_clipper/lib/src/quadratic_bezier) |     | [Clipper](https://github.com/champ96k/canvas_in_flutter/tree/main/custom_clipper/lib/src/clipper) |
| --------------------------------------------------------------------------------- | --- | ------------------------------------------------------------------------------------------------------------------- | --- | ------------------------------------------------------------------------------------------------- |
| ![ScreenShot](https://i.ibb.co/6bjG5nL/Screenshot-2021-11-03-at-10-56-00-AM.png)   |     | ![ScreenShot](https://i.ibb.co/rM8QbYd/Screenshot-2021-11-03-at-1-03-09-AM.png)                                     |     | ![ScreenShot](https://i.ibb.co/k32Vyxq/Screenshot-2021-11-03-at-1-03-16-AM.png)                   |

</br>

Canvas in flutter

<b>Canvas</b>

- An interface for recording graphical operations.
- Canvas objects are used in creating Picture objects, which can themselves be used with a SceneBuilder to build a Scene. In normal usage, however, this is all handled by the framework.
- A canvas has a current transformation matrix which is applied to all operations. Initially, the transformation matrix is the identity transform. It can be modified using the translate, scale, rotate, skew, and transform methods.
- A canvas also has a current clip region which is applied to all operations. Initially, the clip region is infinite. It can be modified using the clipRect, clipRRect, and clipPath methods.
- The current transform and clip can be saved and restored using the stack managed by the save, saveLayer, and restore methods.

<b>CustomPainter class</b>

- The interface used by CustomPaint (in the widgets library) and RenderCustomPaint (in the rendering library).
- To implement a custom painter, either subclass or implement this interface to define your custom paint delegate. CustomPaint subclasses must implement the paint and shouldRepaint methods, and may optionally also implement the hitTest and shouldRebuildSemantics methods, and the semanticsBuilder getter.
- The paint method is called whenever the custom object needs to be repainted.
- The shouldRepaint method is called when a new instance of the class is provided, to check if the new instance actually represents different information.

<b>paint(Canvas canvas,Size size)</b>

- Called whenever the object needs to paint. The given Canvas has its coordinate space configured such that the origin is at the top left of the box. The area of the box is the size of the size argument.

<b>shouldRepaint()</b>

- Called whenever a new instance of the custom painter delegate class is provided to the RenderCustomPaint object, or any time that a new CustomPaint object is created with a new instance of the custom painter delegate class (which amounts to the same thing, because the latter is implemented in terms of the former).
- If the new instance represents different information than the old instance, then the method should return true, otherwise it should return false.
- If the method returns false, then the paint call might be optimized away.
- It's possible that the paint method will get called even if shouldRepaint returns false (e.g. if an ancestor or descendant needed to be repainted). It's also possible that the paint method will get called without shouldRepaint being called at all (e.g. if the box changes size).
- If a custom delegate has a particularly expensive paint function such that repaints should be avoided as much as possible, a RepaintBoundary or RenderRepaintBoundary (or other render object with RenderObject.isRepaintBoundary set to true) might be helpful.
- The oldDelegate argument will never be null.

<b>Paint</b>

- A description of the style to use when drawing on a Canvas.
- Most APIs on Canvas take a Paint object to describe the style to use for that operation.

<b>Path</b>

- A complex, one-dimensional subset of a plane.
- A path consists of a number of sub-paths, and a current point.
- Sub-paths consist of segments of various types, such as lines, arcs, or beziers. Sub-paths can be open or closed, and can self-intersect.
- Closed sub-paths enclose a (possibly discontiguous) region of the plane based on the current fillType.
- The current point is initially at the origin. After each operation adding a segment to a sub-path, the current point is updated to the end of that segment.
- Paths can be drawn on canvases using Canvas.drawPath, and can used to create clip regions using Canvas.clipPath.

<b>save() :</b> This method is used to save the current state of Canvas.<br></br>
<b>restore() :</b> This method is used to restore the saved state from stack.
We can use any number of save before restore and the stack will remember all entries,
i.e. restore will always pop the most recent entry.

# Animating the Shapes Drawn using Canvas

<b>AnimationController</b> class Null safety
A controller for an animation.
This class lets you perform tasks such as:

- Play an animation forward or in reverse, or stop an animation.
- Set the animation to a specific value.
- Define the upperBound and lowerBound values of an animation.
- Create a fling animation effect using a physics simulation.

Methods & Variables of AnimationController class

- <b>forward() :</b> Takes away the animation in forward direction
- <b>stop() :</b> Stops the currently onGoing animation
- <b>reverse() :</b> Takes away the animation in reverse direction .
- <b>duration :</b> It is the length of time this animation should last.
- <b>lowerBound :</b> It is the smallest value this animation can obtain and the value at which this animation is deemed to be dismissed.
  It cannot be null.
- <b>upperBound :</b> It is the largest value this animation can obtain and the value at which this animation is deemed to be completed. It cannot be null.
- <b>vsync : </b> It is the TickerProvider for the current context. It can be changed by calling resync. It is required and must not be null. See TickerProvider for advice on obtaining a ticker provider.

<b>Important Notes Regarding AnimationController class in flutter</b><br></br>

- An <b>AnimationController</b> should be <b>disposed</b> when it is no longer needed.
- This reduces the likelihood of leaks. When used with a <b>StatefulWidget</b>, it is common for an <b>AnimationController</b> to be created in the
- <b>State.initState</b> method and then disposed in the <b>State.dispose</b> method.
