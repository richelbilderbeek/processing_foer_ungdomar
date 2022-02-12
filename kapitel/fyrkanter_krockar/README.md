# Kvadrater kolliderar

I den här lektionen ska vi lära oss hur man mäter om två rutor kolliderar

\pagebreak

## Kolliderande kvadrater: Kommando 1

Skriv denna kod över:

```c++
float x1 = 150;
float y1 = 100;
float w1 = 75;
float h1 = 50;
float x2 = 75;
float y2 = 50;
float w2 = 75;
float h2 = 50;

void setup()
{
  size(300, 200);
}

void draw()
{
  x2 = mouseX;
  y2 = mouseY;
  fill(255, 255, 255);
  if (x2 + w2 > x1)
  {
    fill(255, 0, 0);  
  }
  rect(x1, y1, w1, h1);  
  rect(x2, y2, w2, h2);  
}
```

Vad ser du?

\pagebreak

## Krockande rutor: lösning 1

Två rutor. En fyrkant följer musen.
Ibland när den rörliga fyrkanten vidrör den stationära blir den röd.

![](SquaresClash1.png)

\pagebreak

## Kolliderande kvadrater: Kommando 2

Ändra 'om' till:

```
if (x2 + w2 > x1 && x2 + w2 < x1 + w1)
†

Vad ser du?

\pagebreak

## Krockande rutor: lösning 2

Rutorna kolliderar nu horisontellt.

![](SquaresClash1.png)

```c++
// ...

void setup()
{
  size(300, 200);
}

void draw()
{
  // ...
  if (x2 + w2 > x1 && x2 < x1 + w1)
  {
    fill(255, 0, 0);  
  }
  rect(x1, y1, w1, h1);  
  rect(x2, y2, w2, h2);  
}
```

\pagebreak

## Kolliderande kvadrater: Kommando 3

Ändra 'om' till:

```
if (x2 + w2 > x1 && x2 < x1 + w1 && y2 + h2 > y1)
```

Vad ser du?

\pagebreak

## Krockande rutor: lösning 3

Rutorna kolliderar just nu förutom på toppen.

![](SquaresClash1.png)

## Collidering Squares: Final Command

Gör 'om' ännu längre så att rutorna kolliderar.

![](SquaresClashFinal assignment.png)
