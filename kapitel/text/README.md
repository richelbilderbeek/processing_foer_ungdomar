# `text`

Text används ofta, även i spel, till exempel för en poäng.

Här kan du se 'Zork, det underjordiska imperiet', ett av de mest kända
textäventyr någonsin:

![Zork](ZorkKleiner.png)

\pagebreak
 
## `text`: kommando 1

Kör den här koden:

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: lösning 1

![`text`: lösning 1](Text1.png)

\pagebreak

## Övning 2

Efter 'ellips' lägg till följande rad:

`` c ++
text (x, 10, 20);
''

\pagebreak

## `text`: lösning 2

![`text`: lösning 2](Text2.png)

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
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

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  text (y, 10, 40);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: kommando 4

![`text`: kommando 4](Text4.png)

Med "fyllning" kan du bestämma färgen på din text.
Efter den första texten, ställ in fyllningen till grön.

\pagebreak

## `text`: lösning 4

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  fyllning (0, 255, 0);
  text (y, 10, 40);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: kommando 5

![`text`: kommando 5](Text5.png)

Sätt texten "PONG" högst upp och mitt på skärmen.
Texten ska vara en slumpmässig färg.
Använd "bredd" för att bestämma mitten.

\pagebreak

## `text`: lösning 5

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  fyllning (0, 255, 0);
  text (y, 10, 40);
  fill (random (255), random (255), random (255));
  text ("PONG", bredd / 2, höjd / 2);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: kommando 6

![`text`: kommando 6](Text6.png)

Lägg till en variabel: `number_collisions`.
`number_collisions` har ett initialvärde på noll.
Sätt detta värde på skärmen, i vitt. Ex

\pagebreak

## `text`: lösning 6

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;
flottörkollisioner = 0;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  fyllning (0, 255, 0);
  text (y, 10, 40);
  fyllning (0, 0, 255);
  text (kollisioner, 10, 60);
  fill (random (255), random (255), random (255));
  text ("PONG", bredd / 2, höjd / 2);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: kommando 7

![`text`: kommando 7](Text7.png)

Gör "kollisioner" högre när bollen träffar höger vägg.

\pagebreak

## `text`: lösning 7

`` c ++
flyta x = 150;
flyta y = 100;
float speed_to_right = 1;
flottörkollisioner = 0;

void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  bakgrund (0, 0, 0);
  stroke (128, 0, 0);
  fyllning (255, 0, 0);
  ellips (x, y, 50, 50);
  text (x, 10, 20);
  fyllning (0, 255, 0);
  text (y, 10, 40);
  fyllning (0, 0, 255);
  text (kollisioner, 10, 60);
  fill (random (255), random (255), random (255));
  text ("PONG", bredd / 2, höjd / 2);
  x = x + speed_to_right;
  om (x> 275)
  {
    speed_to_right = -speed_to_right;
    kollisioner = kollisioner + 1;
  }
  om (x <25)
  {
    speed_to_right = -speed_to_right;
  }
}
''

\pagebreak

## `text`: sista kommandot

![`text`: sista kommandot](TextEnd command.png)

Längst upp till vänster lägger du texten: 'antal kollisioner:' i vitt.
Sätt värdet på 'kollisioner' i vitt under det.
Radera resten av texten.
Antalet kollisioner bör också öka om du kolliderar till vänster.

