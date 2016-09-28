//Brian Mak

float[] x=new float[100];
float[] y=new float[100];
float[] easing=new float[100];

void setup() {
  size(1920, 1080); 
  noStroke();  
  for (int i = 0; i<100; i++) {
    easing[i]=(i+2)*0.01;
  }
}

void draw() { 
  background(51);

  for (int i = 0; i<100; i++) {
    float targetX = mouseX;
    float dx = targetX - x[i];
    x[i] += dx * easing[i];

    float targetY = mouseY;
    float dy = targetY - y[i];
    y[i] += dy * easing[i];

    ellipse(x[i], y[i], 100/(i+1), 100/(i+1));
  }
}
