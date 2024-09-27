class Car {
  String brand;
  String model;
  int year;

Car(this.brand,this.model,this.year);

  int carAge(){
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main(){
  Car car = Car('Toyota','Corolla',2015);

print('Brand: ${car.brand}');
print('Model: ${car.model}');
  print('Year: ${car.year}');
  print('Car Age: ${car.carAge()} years');

}