float tempo = 0;
int x = 0, y = 0, z = 0;
color cor1 = 255, cor2 = 255;
boolean mudou = false;

void setup ()
{
  size (600,600);
  frameRate (12);
  background (0);
  
  noStroke ();
  fill ((int)random(217, 249), (int)random(2, 25), (int)random(5, 14)); // Vermelho
  rect(0, 0, width, 100);
  
  noStroke ();
  fill ((int)random(253, 254), (int)random(138, 161), (int)random(10, 25)); // Laranja
  rect(0, 100, width, 100);
  
  noStroke ();
  fill ((int)random(230, 255), (int)random(230, 255), (int)random(82, 90)); // Amarelo
  rect(0, 200, width, 100);
  
  noStroke ();
  fill ((int)random(23, 78), (int)random(106, 136), (int)random(54, 58)); // Verde
  rect(0, 300, width, 100);
  
  noStroke ();
  fill ((int)random(1, 5), (int)random(167, 191), (int)random(201, 222)); // Azul
  rect(0, 400, width, 100);
  
  noStroke ();
  fill ((int)random(137, 157), (int)random(30, 35), (int)random(160, 187)); // Violeta
  rect(0, 500, width, 100);
  
  fill(255);
  stroke (10);
  rectMode(CENTER);
  rect (300, 300, 350, 100);
  
  textSize(30);
  fill (0); // Texto em preto
  text("CORES", 250, 310);
  
  fill(255);
  stroke (10);
  rectMode(CENTER);
  rect (300, 560, 200, 50);
  
  textSize(15);
  fill (0); // Texto em preto
  text("@2021 PATRICK inc.", 225, 565);
}

void draw ()
{
  tempo = tempo + 1;
  
  y = 0;
  
  if (tempo >= 25)
  {
    background(0);
    
    textSize(30);
    fill (#FEFF03); // Texto em amarelo
    text("CLIQUE PARA TROCAR", 150, 300);
    
    textSize(30);
    fill (#FEFF03); // Texto em amarelo
    text("AS CORES COMPLEMENTARES", 100, 350);
  }
  
  if (tempo >= 40 && y <= 600)
  { 
   background(255);
   frameRate (6);
   
   for (y = 0; y < 600; y = y + 5) 
   {
     stroke (5);
     fill (cor1);
     rect (0, y, ((int)random (0, width)), 50);
   }
   
   for (y = 0; y < 600; y = y + 5) 
   {
     stroke (5);
     fill (cor2);
     rect (600, y, ((int)random (0, width)), 50);
   }
  } 
}

void mousePressed ()
{
  loop ();
  if (mudou == false && z == 0)
  {
    cor1 = color((int)random(217, 249), (int)random(2, 25), (int)random(5, 14)); // Vermelho 
    cor2 = color((int)random(23, 78), (int)random(106, 136), (int)random(54, 58)); // Verde
   
    mudou = true;
    z = z + 5;
  }
  
  else if (mudou == true && z == 5)
  {
    cor1 = color((int)random(253, 254), (int)random(138, 161), (int)random(10, 25)); // Laranja
    cor2 = color((int)random(1, 5), (int)random(167, 191), (int)random(201, 222)); // Azul
    
    mudou = false;
    z = z + 5;
  }
  
  else if (mudou == false && z == 10)
  {
    cor1 = color((int)random(230, 255), (int)random(230, 255), (int)random(82, 90)); // Amarelo
    cor2 = color((int)random(137, 157), (int)random(30, 35), (int)random(160, 187)); // Violeta
    z = 0;
  }  
}

void keyPressed ()
{
  noLoop ();
}
