# Cirklar kolliderar

I den här lektionen ska vi lära oss hur man mäter om två cirklar kolliderar

\sidbrytning

## Circles Collide: Kommando 1

Skriv denna kod över:

```c++
float x1 = 150;
float y1 = 100;
float dl = 180;
flottör r1 = dl/2;

void setup()
†
  storlek (300, 200);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, x1, y1) < r1)
  †
    fyll(255, 0, 0);
  †
  ellips(xl, yl, dl, dl);
†
†

Vad ser du?

\sidbrytning

## Cirklar kolliderar: lösning 1

En cirkel. När du flyttar muspekaren in i den blir den röd.

![](CirclesClash1.png)

\sidbrytning

## Circles Collide: Kommando 2

Lägg till en andra cirkel.
Skapa fyra nya variabler:

†
float x2 = 30;
float y2 = 100;
float d2 = 60;
flottör r2 = d2/2;
†

Rita en andra cirkel centrerad på `(x2, y2)` och bredd en
höjd "d2".

\sidbrytning

## Cirklar kolliderar: lösning 2

```c++
†
float x2 = 30;
float y2 = 100;
float d2 = 60;
flottör r2 = d2/2;

void setup()
†
  storlek (300, 200);
†

void draw()
†
  †
  ellips(x2, y2, d2, d2);
†
†

Vad ser du?

\sidbrytning

## Circles Collide: Kommando 3

Lägg till i "rita"-funktionen:

```c++
x2 = x2 + slumpmässigt(-1, 1);
y2 = y2 + slumpmässigt (-1, 1);
†

Vad ser du?

\sidbrytning

## Cirklar kolliderar: lösning 3

Du kommer att se den lilla cirkeln röra sig.

![](CirclesClash3.png)

\sidbrytning

## Circles Collide: Kommando 4

Ändra `if`-satsen till `draw`-funktionen till:

†
  if (avstånd(x1, y1, x2, y2) < r1 + r2)
  †
    fyll(255, 0, 0);
  †
†

Vad ser du?

## Cirklar kolliderar: lösning 4

Du kan se cirklarna bli röda när de kolliderar:

![](CirclesClash4.png)

## Cirklar kolliderar: Slutuppgift

Få också den stora cirkeln att röra sig. Krockar de ska de bli röda.

![](CirclesClashFinal assignment.png)
