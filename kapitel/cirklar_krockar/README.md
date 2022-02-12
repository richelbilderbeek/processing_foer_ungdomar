# Cirklar kolliderar

I den här lektionen ska vi lära oss hur man mäter om två cirklar kolliderar

\pagebreak

## Circles Collide: Kommando 1

Skriv denna kod över:

```c++
float x1 = 150;
float y1 = 100;
float d1 = 180;
float r1 = d1 / 2;

void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, x1, y1) < r1)
  {
    fill(255, 0, 0);  
  }
  ellipse(x1, y1, d1, d1);  
}
```

Vad ser du?

\pagebreak

## Cirklar kolliderar: lösning 1

En cirkel. När du flyttar muspekaren in i den blir den röd.

![](CirclesClash1.png)

\sidbrytning

## Circles Collide: Kommando 2

Lägg till en andra cirkel.
Skapa fyra nya variabler:

```
float x2 = 30;
float y2 = 100;
float d2 = 60;
float r2 = d2 / 2;
```

Rita en andra cirkel centrerad på `(x2, y2)` och bredd en
höjd "d2".

\pagebreak

## Cirklar kolliderar: lösning 2

```c++
// ...
float x2 = 30;
float y2 = 100;
float d2 = 60;
float r2 = d2 / 2;

void setup()
{
  size(300, 200);
}

void draw()
{
  // ...
  ellipse(x2, y2, d2, d2);  
}
```

Vad ser du?

\pagebreak

## Circles Collide: Kommando 3

Lägg till i "rita"-funktionen:

```c++
x2 = x2 + random(-1, 1);
y2 = y2 + random(-1, 1);
```

Vad ser du?

\pagebreak

## Cirklar kolliderar: lösning 3

Du kommer att se den lilla cirkeln röra sig.

![](CirclesClash3.png)

\pagebreak

## Circles Collide: Kommando 4

Ändra `if`-satsen till `draw`-funktionen till:

```
  if (dist(x1, y1, x2, y2) < r1 + r2)
  {
    fill(255, 0, 0);  
  }
```

Vad ser du?

## Cirklar kolliderar: lösning 4

Du kan se cirklarna bli röda när de kolliderar:

![](CirclesClash4.png)

## Cirklar kolliderar: Slutuppgift

Få också den stora cirkeln att röra sig. Krockar de ska de bli röda.

![](CirclesClashFinal assignment.png)
