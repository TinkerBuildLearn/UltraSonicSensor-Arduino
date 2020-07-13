import processing.serial.*;

Serial port;
String distance = "00";

void setup() {
  size(400,250);
    port = new Serial(this, "COM1", 9600);
    port.bufferUntil('\n');     
}

void draw() {
 background(0);
 textSize(72);
 fill(37,236,0);
 text("Distance",50, 100); 
 fill(37,236,0);
 text(brightness,70, 200); 
 fill(37,236,0);
 text(" cm", 200, 200);
}

void serialEvent (Serial port)
{
  distance = port.readStringUntil('\n');
}
