# `text`

Text används ofta, även i spel, till exempel för att visa poäng.

Här kan du se 'Zork, the underground empire', ett av de mest kända
textäventyr någonsin:

![Zork](ZorkKleiner.png)

\pagebreak
 
## `text`: uppgift 1

Kör den här koden:

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;

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
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
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
float hastighet_till_hoger = 1;

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
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
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

Programmet visar nu `x`-koordinaten i fönstret. Visa nu också `y`-koordinaten.

\pagebreak

## `text`: lösning 3

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;

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
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
}
```

\pagebreak

## `text`: uppgift 4

![`text`: uppgift 4](text_4.png)

Med `fill` kan du bestämma färgen på din text.
Ändra texten på den andra raden till grön.

\pagebreak

## `text`: lösning 4

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;

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
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
}
```

\pagebreak

## `text`: uppgift 5

![`text`: uppgift 5](text_5.png)

Skriv ut texten "PONG" med stora bokstäver mitt på skärmen.
Texten ska ha en slumpmässig färg.
Använd `width` för att bestämma vart mitten på texten ska hamna.

\pagebreak

## `text`: lösning 5

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;

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
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
}
```

\pagebreak

## `text`: uppgift 6

![`text`: uppgift 6](text_6.png)

Lägg till en variabel: `studsar`,
som räknar hur många gånger bollen har studsat.
`studsar` har ett startvärde på noll.
Skriv ut detta värde i fönstret med blå text. Ex

\pagebreak

## `text`: lösning 6

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;
float studsar = 0;

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
  text(studsar, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
}
```

\pagebreak

## `text`: uppgift 7

![`text`: uppgift 7](text_7.png)

Öka värdet på `studsar` med ett när bollen träffar höger sida.

\pagebreak

## `text`: lösning 7

```c++
float x = 150;
float y = 100;
float hastighet_till_hoger = 1;
float studsar = 0;

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
  text(studsar, 10, 60);
  fill(random(255), random(255), random(255));
  text("PONG", width / 2, height / 2);
  x = x + hastighet_till_hoger;
  if (x > 275)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
    studsar = studsar + 1;
  }
  if (x < 25)
  {
    hastighet_till_hoger = -hastighet_till_hoger;
  }
}
```

\pagebreak

## `text`: sista uppgift

![`text`: sista uppgift](text_slutuppgift.png)

Skriv ut texten: 'Studsar:' längst upp till vänster i fönstret, med vit text.
Skriv ut värdet på `studsar` i vitt under det.
Ta bort resten av texten.
Antalet studsar ska också öka om ovalen studsar mot vänster sida av fönstret.

