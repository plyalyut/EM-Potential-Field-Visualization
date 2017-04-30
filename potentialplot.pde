float cap = .4;
Charge c1;
Charge c2;
Charge c3;
float[][] value;
int w;
int h;

void setup(){
size(400, 400);
w = width;
h = height;


c1 = new Charge(20, 200, 200);
c2 = new Charge(50, 100, 150);
c3 = new Charge(-40, 100, 100);
noSmooth();
colorMode(HSB, 360, 100, 100);
value = new float[width][height];
for(int i = 0; i<width; i++){
  for(int j = 0; j<height; j++){
   value[i][j]= constrain(c1.q/(sqrt(
   (i-c1.x)*(i-c1.x)+(j-c1.y)*(j-c1.y)
   ))+c2.q/(sqrt(
   (i-c2.x)*(i-c2.x)+(j-c2.y)*(j-c2.y)
   ))+c3.q/(sqrt(
   (i-c3.x)*(i-c3.x)+(j-c3.y)*(j-c3.y))),-cap,cap);
   
   value[i][j] = map(value[i][j], -cap, cap, 180, 0);
   
   stroke(value[i][j], 100, 100);
   point(i,j);
  } 
}
}

float x =0;
void draw(){
cap = 0.5*sin(x)+0.6;
x+=0.04;
for(int i = 0; i<width; i++){
  for(int j = 0; j<height; j++){
   value[i][j]= constrain(c1.q/(sqrt(
   (i-c1.x)*(i-c1.x)+(j-c1.y)*(j-c1.y)
   ))+c2.q/(sqrt(
   (i-c2.x)*(i-c2.x)+(j-c2.y)*(j-c2.y)
   ))+c3.q/(sqrt(
   (i-c3.x)*(i-c3.x)+(j-c3.y)*(j-c3.y))),-cap,cap);
   
   value[i][j] = map(value[i][j], -cap, cap, 180, 0);
   
   stroke(value[i][j], 100, 100);
   point(i,j);
  } 
}
}