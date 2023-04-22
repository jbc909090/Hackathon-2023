import java.util.Scanner;
import java.io.*;
class A {
  A() {
  }

  void surplus_set() {

    //void setup(){
    float gen;
    float cap;
    String Capacity;
    String Generation;
    if (sc.hasNext()) {
      Capacity=sc.next();
      Generation=sc.nextLine();
      Generation = Generation.replaceAll(",", "");
      cap = Float.parseFloat(Capacity);
      gen = Float.parseFloat(Generation);
      powerSurplus = gen-cap;
      powerSurplus = powerSurplus/10;
      if (powerSurplus>1) {
        powerSurplus=1;
      }
      if (powerSurplus<-1) {
        powerSurplus=-1;
      }
    }
  }
  void set_up() {
    try {
      File file = new File("C:/Users/the_user/Documents/Processing/VideoResultionAdapterProofOfConcept/data/Dummy_data.csv");
      sc = new Scanner(file);
      sc.useDelimiter(",");
    }
    catch(Exception e) {
      println("hdsjfhkd");
      println(e);
    }
  }
}
