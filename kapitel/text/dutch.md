# `text`

Text används ofta, även i spel, till exempel för en poäng.

Här kan du se 'Zork, det underjordiska imperiet', ett av de mest kända
textäventyr någonsin:

![Zork](ZorkKleiner.png)

\pagebreak
 
## `text`: kommando 1

Kör den här koden:

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: lösning 1

![`text`: lösning 1](Text1.png)

\pagebreak

## Övning 2

Efter 'ellips' lägg till följande rad:

```c++
text(x, 10, 20);
```

\pagebreak

## `text`: lösning 2

![`text`: lösning 2](Text2.png)

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
''

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`text (100, 200, 300);` | 'Kära dator, lägg texten' 100 'på skärmen med det övre vänstra hörnet `(200, 300)`
`text (" Hej ", 100, 200);` | 'Kära dator, lägg texten' Hej 'på skärmen med det övre vänstra hörnet `(100, 200)`

\pagebreak

## `text`: kommando 3

![`text`: kommando 3](Text3.png)

Programmet visar nu 'x'. Visa nu också y -koordinaten på skärmen nedan.

\pagebreak

## `text`: lösning 3

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  text(y, 10, 40);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: kommando 4

![`text`: kommando 4](Text4.png)

Med "fyllning" kan du bestämma färgen på din text.
Efter den första texten, ställ in fyllningen till grön.

\pagebreak

## `text`: lösning 4

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  fill(0, 255, 0);
  text(y, 10, 40);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: kommando 5

![`text`: kommando 5](Text5.png)

Sätt texten "PONG" högst upp och mitt på skärmen.
Texten ska vara en slumpmässig färg.
Använd "bredd" för att bestämma mitten.

\pagebreak

## `text`: lösning 5

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  fill(0, 255, 0);
  text(y, 10, 40);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: kommando 6

![`text`: kommando 6](Text6.png)

Lägg till en variabel: `number_collisions`.
`number_collisions` har ett initialvärde på noll.
Sätt detta värde på skärmen, i vitt. Ex

\pagebreak

## `text`: lösning 6

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float botsingen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  fill(0, 255, 0);
  text(y, 10, 40);
  fill(0, 0, 255);
  text(botsingen, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: kommando 7

![`text`: kommando 7](Text7.png)

Gör "kollisioner" högre när bollen träffar höger vägg.

\pagebreak

## `text`: lösning 7

```c++
float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
float botsingen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0, 0, 0);
  stroke(128, 0, 0);
  fill(255, 0, 0);
  ellipse(x, y, 50, 50);
  text(x, 10, 20);
  fill(0, 255, 0);
  text(y, 10, 40);
  fill(0, 0, 255);
  text(botsingen, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
    botsingen = botsingen + 1;
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
  }
}
```

\pagebreak

## `text`: sista kommandot

![`text`: sista kommandot](TextEnd command.png)

Längst upp till vänster lägger du texten: 'antal kollisioner:' i vitt.
Sätt värdet på 'kollisioner' i vitt under det.
Radera resten av texten.
Antalet kollisioner bör också öka om du kolliderar till vänster.

