abstract class Shape {
  String color;

  Shape(this.color);
  double getArea();

  @override
  String toString(){
    return 'Color: $color';
  }
}
class Triangle extends Shape{
  int base;
  int height;
  Triangle(this.base, this.height, super.color);

  @override
  double getArea() {
    return (base * height)/2;
  }

  @override
  String toString() {
    return'Triangle: base= $base, height= $height,color = $color';
  }
}