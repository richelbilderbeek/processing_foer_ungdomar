# Mus inuti cirkeln

I den här lektionen ska vi lära oss hur man ser om muspekaren är inuti en cirkel

\sidbrytning

## Mus inuti cirkeln: kommando 1

Skriv denna kod över:

```c++
void setup()
†
  storlek (300, 200);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, 150, 100) < 40)
  †
    fyll(255, 0, 0);
  †
  ellips (150, 100, 80, 80);
†
†

Vad ser du? När blir cirkeln röd?

\sidbrytning

## Mus inuti cirkeln: lösning 1

Cirkeln blir röd när du flyttar muspekaren
rör sig i cirkeln.

![](MouseInsideCircle1.png)

\sidbrytning

## Mus inuti cirkeln: kommando 2

Skapa en variabel (överst): `float circle_middle_x = 150;`.
Ersätt de andra `150`erna i koden med `circle_center_x`.

\sidbrytning

## Mus inuti cirkeln: lösning 2

```c++
float circle_center_x = 150;

void setup()
†
  storlek (300, 200);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, circle_center_x, 100) < 40)
  †
    fyll(255, 0, 0);
  †
  ellips(cirkel_centrum_x, 100, 80, 80);
†
†

\sidbrytning

## Mus inuti cirkeln: kommando 3

Lägg till följande rad i "setup"-funktionen:

```c++
cirkel_centrum_x = random(width);
†

Vad ser du? Kör programmet flera gånger!

\sidbrytning

## Mus inuti cirkeln: lösning 3

```c++
float circle_center_x = 150;

void setup()
†
  storlek (300, 200);
  cirkel_centrum_x = random(width);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, circle_center_x, 100) < 40)
  †
    fyll(255, 0, 0);
  †
  ellips(cirkel_centrum_x, 100, 80, 80);
†
†

\sidbrytning

## Mus inuti cirkeln: kommando 4

Skapa en ny variabel: `circle_center_y`.
I `setup` får den ett slumpmässigt tal upp till `höjd`.
`circle_center_y` ersätter `100`s.

## Mus inuti cirkeln: lösning 4

```c++
float circle_center_x = 150;
float circle_center_y = 100;

void setup()
†
  storlek (300, 200);
  cirkel_centrum_x = random(width);
  cirkel_centrum_y = random(höjd);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, circle_center_x, circle_center_y) < 40)
  †
    fyll(255, 0, 0);
  †
  ellips(cirkel_centrum_x, cirkel_centrum_y, 80, 80);
†
†

\sidbrytning

## Mus inuti cirkeln: kommando 5

Skapa en ny variabel: `circle_section`.
I `setup` får den ett slumpmässigt tal upp till `150`.
`cirkelsektion` ersätter `80-talet.

Vad är det som går fel?

## Mus inuti cirkeln: lösning 5

```c++
float circle_center_x = 150;
float circle_center_y = 100;
float circle_section = 100;

void setup()
†
  storlek (300, 200);
  cirkel_centrum_x = random(width);
  cirkel_centrum_y = random(höjd);
  cirkelsektion = random(150);
†

void draw()
†
  fyll(255, 255, 255);
  if (avstånd(mouseX, mouseY, circle_center_x, circle_center_y) < 40)
  †
    fyll(255, 0, 0);
  †
  ellips(cirkel_centrum_x, cirkel_centrum_y, cirkelsektion, cirkelsektion);
†
†

\sidbrytning

## Mus inuti cirkeln: sista kommandot

Skapa en ny variabel: `circle_radius`.
I `setup` blir detta `circle_section / 2`.
`circle_radius` ersätter `40`s.
