# 3D-lektion 1: klotet rör sig

Under den här lektionen ska vi programmera 3D.

\pagebreak

## 3D 1: uppgift 1

Skriv denna kod över:

```c++
float x = 0;

void setup() 
{
  size(300, 200, P3D);
  noStroke();
}

void draw() 
{
  background(255, 255, 255);
  translate(x, 100, 0);
  lights();
  sphere(20);
  x = x + 1;
}
```

Vad ser du?

\pagebreak

## 3D 1: lösning 1

![3D 1: lösning 1](3D1_1.png)

Du ser en boll som rör sig från vänster till höger.

Om man tittar noga kan man se att den vitaste delen av bollen också byter plats.

\pagebreak

## 3D 1: uppgift 2

 * Låt nu bollen gå längst ner till höger
 * Skapa en ny variabel, till exempel `y`

![3D 1: uppgift 2](3D1_2.png)

\pagebreak

## 3D 1: lösning 2

```c++
float x = 0;
float y = 0;

void setup() 
{
  size(300, 200, P3D);
  noStroke();
}

void draw() 
{
  background(255, 255, 255);
  translate(x, y, 0);
  lights();
  sphere(20);
  x = x + 1;
  y = y + 1;
}
```

\pagebreak

## 3D 1: uppgift 3

 * Låt nu bollen gå framåt
 * Skapa en ny variabel, till exempel `z`

Det här kan se annorlunda ut än du förväntar dig!

![3D 1: uppgift 3](3D1_3.png)

\pagebreak

## 3D 1: lösning 3

```c++
float x = 0;
float y = 0;
float z = 0;

void setup() 
{
  size(300, 200, P3D);
  noStroke();
}

void draw() 
{
  background(255, 255, 255);
  translate(x, y, z);
  lights();
  sphere(20);
  x = x + 1;
  y = y + 1;
  z = z + 1;
}
```


## 3D 1: Slutuppgift

 * Gör storleken på sfären lika med `x`.
 * Ta bort `noStroke`

Det här kan se annorlunda ut än du förväntar dig!

![3D 1: Slutuppgift](3D1_slutuppgift.png) 

