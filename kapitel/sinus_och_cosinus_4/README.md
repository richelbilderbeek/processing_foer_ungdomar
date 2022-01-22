# Sinus och cosinus 4: skjutning

Under den här lektionen ska vi använda en sinus och cosinus för att skjuta en kula

![Xybots](Xybots.jpg)

\pagebreak

## Sinus och cosinus 4: uppgift 1

Skriv denna kod över:

```c++
float vinkel_kanon = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);  
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
}
```

Vad ser du?

\pagebreak

## Sinus och cosinus 4: lösning 1

![Sinus och cosinus 4: lösning 1](sinus_och_cosinus_4_1.png)

Du ser en cirkel i mitten, med en kanon

\pagebreak

## Sinus och cosinus 4: uppgift 2

 * Få kanonen att rotera genom att göra `angle_gun` mer och mer `0.1`

![Sinus och cosinus 4: kommando 2](sinus_och_cosinus_4_2.png)

\pagebreak

## Sinus och cosinus 4: lösning 2

```c++
float vinkel_kanon = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);  
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
  vinkel_kanon += 0.1;
}
```

\pagebreak

## Sinus och cosinus 4: uppgift 3

 * Se till att `angle_gun` blir noll när du trycker på mellanslagstangenten

Dricks:

```c++
if (keyPressed)
{
  if (key == ' ')
  {
    //Zet vinkel_kanon op nul
  }
}
```


\pagebreak

## Sinus och cosinus 4: lösning 3

![Sinus och cosinus 4: kommando 3](sinus_och_cosinus_4_3.png)

```c++
float vinkel_kanon = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);  
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
  vinkel_kanon += 0.1;
  if (keyPressed)
  {
    if (key == ' ')
    {
      vinkel_kanon = 0;
    }
  }
}
```

\pagebreak

## Sinus och cosinus 4: uppgift 4

 * Gör variablerna `x_ball` och `y_kogel` högst upp
 * Ställ in de initiala värdena för `x_kogel` och `y_kogel` till noll
 * Rita en kula med mitten `(x_bullet, y_bullet)` med en cirkel som är 5 pixlar bred och hög

![Sinus och cosinus 4: kommando 4](sinus_och_cosinus_4_4.png)

\pagebreak

## Sinus och cosinus 4: lösning 4

```c++
float vinkel_kanon = 0;
float x_kogel = 0;
float y_kogel = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);  
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
  ellipse(x_kogel, y_kogel, 5, 5);
  vinkel_kanon += 0.1;
  if (keyPressed)
  {
    if (key == ' ')
    {
      angle_gun = 0;
    }
  }
}
```

\pagebreak

## Sinus och cosinus 4: uppgift 5

 * Om du trycker på mellanslagstangenten så ...
    * får `x_bullet` värdet av `x_gun`
    * får `y_bullet` värdet för `y_gun`
    * kanonen bara fortsätter snurra

![Sinus och cosinus 4: kommando 5](sinus_och_cosinus_4_5.png)

\pagebreak

## Sinus och cosinus 4: lösning 5

```c++
float vinkel_kanon = 0;
float x_kogel = 0;
float y_kogel = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);  
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
  ellipse(x_kogel, y_kogel, 5, 5);
  vinkel_kanon += 0.1;
  if (keyPressed)
  {
    if (key == ' ')
    {
      x_kogel = x_kanon;
      y_kogel = y_kanon;
    }
  }
}
```

\pagebreak

## Sinus och cosinus 4: uppgift 6

 * Skapa en ny variabel ovanför `setup-funktionen` med namnet `angle_ball`
 * Ge `corner_ball` startvärdet noll
 * Låt `x_ball` bli mer och mer med cosinus av `angle_ball`
 * Låt `y_ball` bli *mindre* med sinus för `angle_ball`

![Sinus och cosinus 4: kommando 6](sinus_och_cosinus_4_6.png)

\pagebreak

## Sinus och cosinus 4: lösning 6

```c++
float vinkel_kanon = 0;
float x_kogel = 0;
float y_kogel = 0;
float vinkel_kogel = 0;

void setup()
{
  size(300, 200);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x_mitten = width / 2;
  final float y_mitten = height / 2;
  final float x_kanon = x_mitten + (cos(vinkel_kanon) * 20);
  final float y_kanon = y_mitten - (sin(vinkel_kanon) * 20);
  x_kogel += cos(vinkel_kogel);
  y_kogel -= sin(vinkel_kogel);
  line(x_mitten, y_mitten, x_kanon, y_kanon);
  ellipse(x_mitten, y_mitten, 20, 20);
  ellipse(x_kogel, y_kogel, 5, 5);
  vinkel_kanon += 0.1;
  if (keyPressed)
  {
    if (key == ' ')
    {
      x_kogel = x_kanon;
      y_kogel = y_kanon;
    }
  }
}
```

\pagebreak

## Sinus och cosinus 4: Slutuppgift

Nu avslutar vi spelet:

 * Se till att kulan inte är synlig i början (tips: ställ in `y_kogel` på minus hundra)
 * Om du trycker på blanksteg, ställ in `corner_bullet` lika med `corner_gun`

![Sinus och cosinus 4: Slutuppgift](sinus_och_cosinus_4_End assignment.png)

