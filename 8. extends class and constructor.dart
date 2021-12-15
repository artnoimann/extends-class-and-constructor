void main() {
/*Определите следующие классы.
1) Кубоид
Конструктор объекта для класса Cuboid должен получить ровно три аргумента в следующем порядке: 
длина, ширина, высота и сохранить эти три значения в length, width и height соответственно.
Класс Cuboid должен иметь геттер SurfaceArea, который возвращает площадь поверхности кубоида, 
и геттер Volume, который возвращает объем кубоида.

2) Куб
Класс Cube является подклассом класса Cuboid. Функция конструктора Cube должна получить 
только один аргумент, его длину (length) и использовать это переданное значение, 
чтобы установить length, width и height.
Подсказка: используйте super, чтобы передать правильные параметры.
Входные данные:
Cuboid(1, 2, 3)
Cube(2)
Выходные данные:
Cuboid Volume = 6
Cuboid Surface Area = 22
Cube Volume = 8
Cube Surface Area = 24
*/
  
var varCuboid = Cuboid(1,2,3);  
var varCube = Cube(2); 
print("Cuboid Surface Area ${varCuboid.SurfaceArea}");
print("Cuboid Volume ${varCuboid.Volume}");
  
print("Cube Surface Area ${varCube.SurfaceArea}");
print("Cube Volume ${varCube.Volume}");
}

class Cuboid{
  double lenght;
  double width;
  double height;
  
  Cuboid(this.lenght,this.width,this.height);
  
  double get SurfaceArea{
    double result;
    result = 2*(lenght*width + width*height + lenght*height);
    return result;
  }
  
  double get Volume{
    double result;
    result = lenght*width*height;
    return result;
  }
}

class Cube extends Cuboid{
  Cube(lenght): super(lenght, lenght, lenght); 
}