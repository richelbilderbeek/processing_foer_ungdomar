# Gravity

I den här lektionen ska vi programmera gravitationen.

Vi kommer att använda två variabler och två "om"-satser i den här lektionen.

\pagebreak

## Gravity: Kommando 1

Vad gör den här koden?

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float snelheid_omlaag = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, y, 50, 50);
  x = x + snelheid_naar_rechts;
  y = y + snelheid_omlaag;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (y > 175)
  {
    snelheid_omlaag = -snelheid_omlaag;
  }
}
```

\pagebreak

## Gravity: Lösning 1

![Gravity: Solution 1](Gravity1.png)

\pagebreak

## Gravity: Kommando 2

Se till att programmet är i helskärm

![Gravity: Kommando 2](Gravity2.png)

\pagebreak

## Gravity: Lösning 2

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float snelheid_omlaag = 1;

void setup()
{
  fullScreen();
}

void draw()
{
  ellipse(x, y, 50, 50);
  x = x + snelheid_naar_rechts;
  y = y + snelheid_omlaag;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (y > 175)
  {
    snelheid_omlaag = -snelheid_omlaag;
  }
}
```

\pagebreak

## Gravity: Kommando 3

![Gravity: Kommando 3](Gravity3.png)

Se till att bollen studsar bra i botten.

![Solglasögon](EmojiSunglasses.png) | Tips: ersätt `175` med `höjd - 25`
:-----------------:|:---------------------- ------- :

\pagebreak

## Gravity: Lösning 3

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float snelheid_omlaag = 1;

void setup()
{
  fullScreen();
}

void draw()
{
  ellipse(x, y, 50, 50);
  x = x + snelheid_naar_rechts;
  y = y + snelheid_omlaag;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (y > height - 25)
  {
    snelheid_omlaag = -snelheid_omlaag;
  }
}
```

\pagebreak

## Gravity: Kommando 4

Se till att bollen studsar bra på höger sida.

![Gravity: Kommando 4](Gravity4.png)

\pagebreak

## Gravity: Lösning 4

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float snelheid_omlaag = 1;

void setup()
{
  fullScreen();
}

void draw()
{
  ellipse(x, y, 50, 50);
  x = x + snelheid_naar_rechts;
  y = y + snelheid_omlaag;
  if (x > width - 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (y > height - 25)
  {
    snelheid_omlaag = -snelheid_omlaag;
  }
}
```

\pagebreak

## Gravity: Final Command

Lägg till "rita"-funktionen längst ned:

```c++
snelheid_omlaag += 0.1;
```

Gör bollen dubbelt så stor.

![Gravity: Final Command](Gravity Final Command1.png)

Om din figur får 'Gravity Final Assignment also right' får du också
ett klistermärke.

![Solglasögon](EmojiSunglasses.png) | Ibland händer oväntade saker i programmering!
:-----------------:|:---------------------- ------- :

![Gravity Final Assignment också OK](Gravity Final Assignment2.png)
