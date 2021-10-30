# Arrayer 1

Med arrayer kan du få datorn att komma ihåg många värden:
koordinaterna för kulor, meteoriter, fiender.

![Galaga är ett känt spel med många fiender och kulor](Galaga.png)

\pagebreak

## Arrays 1: Uppgift 1

Kör den här koden. Vad gör det?

```c++
float x = 0;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x,25,50,50);
  x = x + 1;
  if (x > 625)
  {
    x = -25;
  }
}
```

\pagebreak

## Arrays 1: lösning 1

En boll som går åt höger för alltid!

![Arrays 1: lösning 1](Arrays1_1.png)

\pagebreak

## Arrays 1: Uppgift 2

Se till att lägga till en andra boll.

![Två bollar går rätt för alltid](Arrays1_tva_bollar.png)

![Solglasögon](EmojiSunglasses.png) | Tips: ändra namnet `x` till `x1`.
:-----------------:|:-----------------------------:

![Bowtie](EmojiBowtie.png) | Skapa sedan en ny variabel som heter `x2`
:-----------------:|:-----------------------------:

\pagebreak

## Arrays 1: lösning 2

```c++
float x1 = 0;
float x2 = 100;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x1,25,50,50);
  ellipse(x2,25,50,50);
  x1 = x1 + 1;
  x2 = x2 + 1;
  if (x1 > 625)
  {
    x1 = -25;
  }
  if (x2 > 625)
  {
    x2 = -25;
  }
}
```

![Solglasögon](EmojiSunglasses.png) | Detta var sju rader extraarbete
:-----------------:|:-----------------------------:

\pagebreak

## Arrayer 1: Uppgift 3

Lägg till en tredje boll.

![Arrays 1: command 3](Arrays1_tre_bollar.png)

\pagebreak

## Arrays 1: lösning 3

```c++
float x1 = 0;
float x2 = 100;
float x3 = 200;

void setup()
{
  size(600, 50);
}

void draw()
{
  ellipse(x1,25,50,50);
  ellipse(x2,25,50,50);
  ellipse(x3,25,50,50);
  x1 = x1 + 1;
  x2 = x2 + 1;
  x3 = x3 + 1;
  if (x1 > 625)
  {
    x1 = -25;
  }
  if (x2 > 625)
  {
    x2 = -25;
  }
  if (x3 > 625)
  {
    x3 = -25;
  }
}
```

![Solglasögon](EmojiSunglasses.png) | Detta var ytterligare sju rader extraarbete
:-----------------:|:-----------------------------:

![Bowtie](EmojiBowtie.png) | Detta kan göras smartare, med arrayer!
:-----------------:|:-----------------------------:

\pagebreak

## Arrays 1: vad är en array?

En array är som ett skåp med lådor.

![Skåp med låda](skap_med_lada.png)

Varje låda har ett nummer och varje låda kan rymma ett nummer.

Här ser du lådans nummer och numret som finns i den:

![Skåp med numrerade lådor](skap_med_numerad_lada_och_siffar.png)

![Solglasögon](EmojiSunglasses.png) | Den första lådan i en array har nummer `0`
:-----------------:|:-----------------------------:

Lådan har nummer *noll* (vänster) och den ligger i lådan
nummer fyrtiotvå.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`punkt i array med index noll`|'den första platsen i arrayen'

\pagebreak

## Arrays 1: arbeta med en array

![Array med namnet 'hemliga_nummer' och en låda](Arrays1_case_hemliga_nummer.png)

Anta att vi vill skapa en array av bråktal (`float`s) som kallas `hemliga_tal`,
då måste vi skriva följande ovanför `inställningen`:

```
float[] geheime_getallen;
```

Med denna rad skapar du en array som heter `hemliga_nummer`.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`float[] hemliga_nummer`|'Bästa dator, kom ihåg många bråktal som kallas `hemliga_nummer`'


Det har ännu inte sagts *hur många* bråktal det är.
Ofta används "setup"-funktionen för att säga hur många nummer som ska komma ihåg:

```
geheime_getallen = new float[1];
```

Detta gör arrayen `hemliga_nummer` 1 låda stor.


![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`hemliga_nummer = new float[1]`|'Bästa dator, gör `hemliga_nummer` 1 låda stor`'


\pagebreak

För att exakt replikera skåpet med lådorna kan du använda följande kod:

```
geheime_getallen[0] = 42;
```

Detta sätter siffran 42 på första plats i arrayen.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`hemliga_nummer[0] = 42`|'Bästa dator, sätt siffran `42` på första platsen i arrayen `hemliga_nummer`'

Du kan också läsa värdet i lådorna:

```
float x = geheime_getallen[0];
```

Med detta läser du den första platsen (lådan med index noll) och sätter den i `x`.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`float x = hemliga_nummer[0]`|'Bästa dator, se vad som finns i lådan med index noll och kom ihåg det som `x`'

Tillsammans får du detta program:

```c++
float[] geheime_getallen;

void setup()
{
  size(400, 400);
  geheime_getallen = new float[1];
  geheime_getallen[0] = 42;
}

void draw() 
{
  float x = geheime_getallen[0];
  ellipse(x, 200, 300, 400);
}
```
Det här programmet ser inte särskilt trevligt ut. Det är tänkt att visa dig hur du skapar, fyller i och läser arrayer.

\pagebreak

## Arrays 1: Uppgift 4

Kör koden nedan.

```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[3];
  xs[0] = 0;
  xs[1] = 100;
  xs[2] = 200;
}

void draw()
{
  ellipse(xs[0],25,50,50);
  ellipse(xs[1],25,50,50);
  ellipse(xs[2],25,50,50);
  xs[0] = xs[0] + 1;
  xs[1] = xs[1] + 1;
  xs[2] = xs[2] + 1;
  if (xs[0] > 625)
  {
    xs[0] = -25;
  }
  if (xs[1] > 625)
  {
    xs[1] = -25;
  }
  if (xs[2] > 625)
  {
    xs[2] = -25;
  }
}
```

\pagebreak

## Arrays 1: lösning 4

Hej, samma som förut!

![Arrays 1: lösning 4](Arrays1_tre_bollar.png)

\pagebreak

## Arrayer 1: Uppgift 5

Kör den här koden:

```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[3];
  for (int i=0; i<3; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<3; ++i)
  {
    ellipse(xs[i],25,50,50);
    xs[i] = xs[i] + 1;
    if (xs[i] > 625)
    {
      xs[i] = -25;
    }
  }
}
```

![Solglasögon](EmojiSunglasses.png) | Bra programmerare använder hellre `för`-loopar än dumma klipp och klistra
:-----------------:|:-----------------------------:

\pagebreak

## Arrays 1: lösning 5

Hej, samma som förut!

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`for (int i=0; i<3; ++i) {}`|'Bästa dator, gör vad som står mellan klammerparenteser med värden på `i` från `0` till `3` i steg om `1`'

![Dator](EmojiComputer.png) | Jag är en dum dator
:-----------------:|:-----------------------------:
 |`xs[0] = 0;`
 |`xs[1] = 100;`
 |`xs[2] = 200;`

![Dator](EmojiComputer.png) | Jag är en smart dator
:-----------------|:-------------------------------------
 |`för (int i=0; i<3; ++i)`.
 |`{`
 | ` xs[i] = i * 100;`
 |`}`

\pagebreak

## Arrays 1: Uppgift 6

![Arrays 1: command 6](Arrays1_fyra_bollar.png)

Lägg nu till en fjärde boll.

![Bowtie](EmojiBowtie.png) | Tips: förvandla en `3` till en `4`.
:-----------------:|:-----------------------------:

\pagebreak

## Arrays 1: lösning 6


```c++
float[] xs;

void setup()
{
  size(600, 50);
  xs = new float[4];
  for (int i=0; i<4; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    ellipse(xs[i], 25, 50, 50);
    xs[i] = xs[i] + 1;
    if (xs[i] > 625)
    {
      xs[i] = -25;
    }
  }
}
```

\pagebreak

## Arrays 1: Uppgift 7

Gör nu programmet i helskärm. När bollarna lämnar skärmen till höger får du dem att börja igen till vänster. Använd `width` för detta

![Arrays 1: command 7](Arrays1_7.png)

\pagebreak

## Arrays 1: lösning 7

```c++
float[] xs;

void setup()
{
  fullScreen();
  xs = new float[4];
  for (int i=0; i<4; ++i)
  {
    xs[i] = i * 100;
  }
}

void draw()
{
  for (int i=0; i<4; ++i)
  {
    ellipse(xs[i], 25, 50, 50);
    xs[i] = xs[i] + 1;
    if (xs[i] > width + 25)
    {
      xs[i] = -25;
    }
  }
}
```

\pagebreak

## Arrays 1: slutuppgift

![Arrays 1: slutuppgift](Arrays1_slutuppgift.png)

Gör nu koden så att:

 * Det finns sex bollar
 * Bollarna går vänster för alltid

