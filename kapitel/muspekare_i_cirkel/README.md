# Mus inuti cirkeln

I den här lektionen ska vi lära oss hur man ser om muspekaren är inuti en cirkel

\sidbrytning

## Mus inuti cirkeln: kommando 1

Skriv denna kod över:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, 150, 100) < 40)
  {
    fill(255, 0, 0);  
  }
  ellipse(150, 100, 80, 80);  
}
```

Vad ser du? När blir cirkeln röd?

\pagebreak

## Mus inuti cirkeln: lösning 1

Cirkeln blir röd när du flyttar muspekaren
rör sig i cirkeln.

![](MouseInsideCircle1.png)

\sidbrytning

## Mus inuti cirkeln: kommando 2

Skapa en variabel (överst): `float circle_middle_x = 150;`.
Ersätt de andra `150`erna i koden med `circle_center_x`.

\pagebreak

## Mus inuti cirkeln: lösning 2

```c++
float cirkel_midden_x = 150;

void setup()
{
  size(300, 200);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, cirkel_midden_x, 100) < 40)
  {
    fill(255, 0, 0);  
  }
  ellipse(cirkel_midden_x, 100, 80, 80);  
}
```

\pagebreak

## Mus inuti cirkeln: kommando 3

Lägg till följande rad i "setup"-funktionen:

```c++
cirkel_midden_x = random(width);
```

Vad ser du? Kör programmet flera gånger!

\pagebreak

## Mus inuti cirkeln: lösning 3

```c++
float cirkel_midden_x = 150;

void setup()
{
  size(300, 200);
  cirkel_midden_x = random(width);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, cirkel_midden_x, 100) < 40)
  {
    fill(255, 0, 0);  
  }
  ellipse(cirkel_midden_x, 100, 80, 80);  
}
```

\pagebreak

## Mus inuti cirkeln: kommando 4

Skapa en ny variabel: `circle_center_y`.
I `setup` får den ett slumpmässigt tal upp till `höjd`.
`circle_center_y` ersätter `100`s.

## Mus inuti cirkeln: lösning 4

```c++
float cirkel_midden_x = 150;
float cirkel_midden_y = 100;

void setup()
{
  size(300, 200);
  cirkel_midden_x = random(width);
  cirkel_midden_y = random(height);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, cirkel_midden_x, cirkel_midden_y) < 40)
  {
    fill(255, 0, 0);  
  }
  ellipse(cirkel_midden_x, cirkel_midden_y, 80, 80);  
}
```

\pagebreak

## Mus inuti cirkeln: kommando 5

Skapa en ny variabel: `circle_section`.
I `setup` får den ett slumpmässigt tal upp till `150`.
`cirkelsektion` ersätter `80-talet.

Vad är det som går fel?

## Mus inuti cirkeln: lösning 5

```c++
float cirkel_midden_x = 150;
float cirkel_midden_y = 100;
float cirkel_doorsnede = 100;

void setup()
{
  size(300, 200);
  cirkel_midden_x = random(width);
  cirkel_midden_y = random(height);
  cirkel_doorsnede = random(150);
}

void draw()
{
  fill(255, 255, 255);
  if (dist(mouseX, mouseY, cirkel_midden_x, cirkel_midden_y) < 40)
  {
    fill(255, 0, 0);  
  }
  ellipse(cirkel_midden_x, cirkel_midden_y, cirkel_doorsnede, cirkel_doorsnede);  
}
```

\pagebreak

## Mus inuti cirkeln: sista kommandot

Skapa en ny variabel: `circle_radius`.
I `setup` blir detta `circle_section / 2`.
`circle_radius` ersätter `40`s.
