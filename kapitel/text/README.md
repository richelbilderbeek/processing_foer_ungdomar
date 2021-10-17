# `text`

Text används ofta, även i spel, till exempel för en poäng.

Här kan du se 'Zork, the underground empire', ett av de mest kända
textäventyr någonsin:

![Zork](ZorkKleiner.png)

\pagebreak
 
## `text`: uppgift 1

Kör den här koden:

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;

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
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: lösning 1

![`text`: lösning 1](text_1.png)

\pagebreak

## Övning 2

Efter `ellips` lägg till följande rad:

```c++
text(x, 10, 20);
```

\pagebreak

## `text`: lösning 2

![`text`: lösning 2](text_2.png)

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;

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
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`text(100, 200, 300);`   | 'Kära dator, lägg texten `100` på skärmen med det övre vänstra hörnet `(200, 300)`
`text("Hej", 100, 200);` | 'Kära dator, lägg texten `Hej` på skärmen med det övre vänstra hörnet `(100, 200)`

\pagebreak

## `text`: uppgift 3

![`text`: uppgift 3](text_3.png)

Programmet visar nu `x`. Visa nu också `y`-koordinaten på skärmen nedan.

\pagebreak

## `text`: lösning 3

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;

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
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: uppgift 4

![`text`: uppgift 4](text_4.png)

Med `fill` kan du bestämma färgen på din text.
Efter den första texten, ställ in fyllningen till grön.

\pagebreak

## `text`: lösning 4

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;

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
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: uppgift 5

![`text`: uppgift 5](text_5.png)

Sätt texten "PONG" högst upp och mitt på skärmen.
Texten ska vara en slumpmässig färg.
Använd `width` för att bestämma mitten.

\pagebreak

## `text`: lösning 5

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;

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
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: uppgift 6

![`text`: uppgift 6](text_6.png)

Lägg till en variabel: `studsingar`,
som minne hur ofta bollen har studsit.
`studsingar` har ett initialvärde på noll.
Sätt detta värde på skärmen, i vitt. Ex

\pagebreak

## `text`: lösning 6

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;
float studsingar = 0;

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
  text(studsingar, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: uppgift 7

![`text`: uppgift 7](text_7.png)

Gör `studsingar` högre när bollen träffar höger vägg.

\pagebreak

## `text`: lösning 7

```c++
float x = 150;
float y = 100;
float hastighet_till_hoeger = 1;
float studsingar = 0;

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
  text(studsingar, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + hastighet_till_hoeger;
  if (x > 275)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
    studsingar = studsingar + 1;
  }
  if (x < 25)
  {
    hastighet_till_hoeger = -hastighet_till_hoeger;
  }
}
```

\pagebreak

## `text`: sista uppgiftt

![`text`: sista uppgiftt](text_slutuppgift.png)

Längst upp till vänster lägger du texten: 'Studsingar:' i vitt.
Sätt värdet på `studsingar` i vitt under det.
Radera resten av texten.
Antalet kollisioner bör också öka om du kolliderar till vänster.

