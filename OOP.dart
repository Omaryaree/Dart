// Define an interface
abstract class Shape {
  double area();
}

// Define a base class implementing the Shape interface
class TwoDimensionalShape implements Shape {
  double area() {
    return 0.0;
  }
}

// Define a subclass that inherits from TwoDimensionalShape and overrides the area method
class Circle extends TwoDimensionalShape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius; //
  }
}

// Define a subclass that inherits from TwoDimensionalShape and overrides the area method
class Rectangle extends TwoDimensionalShape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

// Method that demonstrates the use of a loop
void printShapeAreas(List<Shape> shapes) {
  for (var shape in shapes) {
    print('Area of the shape: ${shape.area()}');
  }
}

void main() {
  // Create instances of Circle and Rectangle
  var circle = Circle(5);
  var rectangle = Rectangle(4, 6);

  // Demonstrate overriding of methods
  print('Area of the circle: ${circle.area()}');
  print('Area of the rectangle: ${rectangle.area()}');

  // Create a list of shapes
  var shapes = [circle, rectangle];

  // Demonstrate the use of a loop
  printShapeAreas(shapes);
}
