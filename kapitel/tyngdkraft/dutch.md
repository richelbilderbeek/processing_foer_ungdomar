# Gravity

I den här lektionen ska vi programmera gravitationen.

Vi kommer att använda två variabler och två "om"-satser i den här lektionen.

\sidbrytning

## Gravity: Kommando 1

Vad gör den här koden?

```c++
float x = 150;
flytande y = 100;
float speed_to_right = 1;
float rate_down = 1;

void setup()
{
  storlek(300, 200);
}

void draw()
{
  ellips (x, y, 50, 50);
  x = x + hastighet_till_höger;
  y = y + speed_down;
  om (x > 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x < 25)
  {
    speed_to_right = -speed_to_right;
  }
  om (y > 175)
  {
    speed_down = -speed_down;
  }
}
```

\sidbrytning

## Gravity: Lösning 1

![Gravity: Solution 1](Gravity1.png)

\sidbrytning

## Gravity: Kommando 2

Se till att programmet är i helskärm

![Gravity: Kommando 2](Gravity2.png)

\sidbrytning

## Gravity: Lösning 2

```c++
float x = 150;
flytande y = 100;
float speed_to_right = 1;
float rate_down = 1;

void setup()
{
  fullskärm();
}

void draw()
{
  ellips (x, y, 50, 50);
  x = x + hastighet_till_höger;
  y = y + speed_down;
  om (x > 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x < 25)
  {
    speed_to_right = -speed_to_right;
  }
  om (y > 175)
  {
    speed_down = -speed_down;
  }
}
```

\sidbrytning

## Gravity: Kommando 3

![Gravity: Kommando 3](Gravity3.png)

Se till att bollen studsar bra i botten.

![Solglasögon](EmojiSunglasses.png) | Tips: ersätt `175` med `höjd - 25`
:-----------------:|:---------------------- ------- :

\sidbrytning

## Gravity: Lösning 3

```c++
float x = 150;
flytande y = 100;
float speed_to_right = 1;
float rate_down = 1;

void setup()
{
  fullskärm();
}

void draw()
{
  ellips (x, y, 50, 50);
  x = x + hastighet_till_höger;
  y = y + speed_down;
  om (x > 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x < 25)
  {
    speed_to_right = -speed_to_right;
  }
  if (y > höjd - 25)
  {
    speed_down = -speed_down;
  }
}
```

\sidbrytning

## Gravity: Kommando 4

Se till att bollen studsar bra på höger sida.

![Gravity: Kommando 4](Gravity4.png)

\sidbrytning

## Gravity: Lösning 4

```c++
float x = 150;
flytande y = 100;
float speed_to_right = 1;
float rate_down = 1;

void setup()
{
  fullskärm();
}

void draw()
{
  ellips (x, y, 50, 50);
  x = x + hastighet_till_höger;
  y = y + speed_down;
  if (x > bredd - 25)
  {
    speed_to_right = -speed_to_right;
  }
  om (x < 25)
  {
    speed_to_right = -speed_to_right;
  }
  if (y > höjd - 25)
  {
    speed_down = -speed_down;
  }
}
```

\sidbrytning

## Gravity: Final Command

Lägg till "rita"-funktionen längst ned:

```c++
speed_down += 0,1;
```

Gör bollen dubbelt så stor.

![Gravity: Final Command](Gravity Final Command1.png)

Om din figur får 'Gravity Final Assignment also right' får du också
ett klistermärke.

![Solglasögon](EmojiSunglasses.png) | Ibland händer oväntade saker i programmering!
:-----------------:|:---------------------- ------- :

![Gravity Final Assignment också OK](Gravity Final Assignment2.png)
