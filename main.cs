using System;

class Car {
    public string Type { get; set; }
    public string Color { get; set; }

    public Car(string type, string color) {
        Type = type;
        Color = color;
    }

    public void Display() {
        Console.WriteLine($"Car Type: {Type}\nCar Color:  {Color}");
    }
}

class Program {
  public static int Add(int a, int b) {
    return a + b;
  }
  public static void Main (string[] args) {
    Console.WriteLine ("Hello World");
    Console.WriteLine("The sum is " + Add(5, 3));
    Car myCar = new Car("Sedan", "Red");
    myCar.Display();
  }
}