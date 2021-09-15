# Flytta bollen till höger i evighet

I den här lektionen ska vi få en boll att gå till höger för alltid.

I den här lektionen lär vi oss vad ett 'om' -uttalande är.
Du kan (nästan) inte programmera utan 'if' -uttalanden.

![På boskanska kan du också gå rätt för alltid](Bosconian.jpg)

\pagebreak

## Flytta bollen till höger i evighet: intro

![Missfärga bollen till höger](flytta_bollen_till_hoeger_i_evigheten_intro.png)

Detta är en boll som går till höger:

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x, 50, 50, 50);
  x = x + 1;
}
```

Nackdel: bollen återvänder aldrig till skärmen.

\pagebreak

Vi vill kunna säga, "Kära dator, **om** bollen är för långt till höger,
sedan teleporterar du bollen till höger '. `if` är engelska för 'om'.

Så det här kan vara:

```c++
if (x > 200)
{
  x = 100;
}
```

Tecknet `>` betyder 'större än'. 
Mer exakt säger du: "Kära dator, **om** `x` är mer än `200`, 
ställ in `x` som till `100`. `if` är engelska för 'om'.

![Ett `om`](BallEternalToRightIf.png)

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`om (x> 200) {}` | 'Kära dator, om `x` är större än `200`, gör det som finns inom måsvingarna.'
`x = 100;` | 'Kära dator, sätt siffran `100` i `x`.'

\pagebreak

## Bollen går rätt för alltid: kommando 1

![Uppgift 1](BalEeeuwigNaarRechts1.png)

Sätt `if` mellan programmets kod. 
Sätt `if` i slutet av `draw`, före den avslutande måsvingen (`}`).

\pagebreak

## Boll som går till höger för alltid: lösning 1

Koden blir då:

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,100,100,100);
  x = x + 1;
  if (x > 200)
  {
    x = 100;
  }
}
```

\pagebreak

## Bollen går rätt för alltid: kommando 2

![Uppgift 2](BalEeuwigNaarRechts2.png)

Se till att ovalen hoppar hela vägen till vänster på skärmen

\pagebreak

## Boll som går till höger för alltid: lösning 2

 * Ändra `float x = 50` till `float x = 0` eller `float x = -50`: båda är bra.
 * Ändra `x = 100` till `x = 0` eller `x = -50`: båda är bra.

```c++
float x = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,100,100,100);
  x = x + 1;
  if (x > 200)
  {
    x = 0;
  }
}
```

\pagebreak

## Bollen går rätt för alltid: kommando 3

![Uppgift 3](BalEeuwigNaarRechts3.png)

Se till att ovalen rör sig hela vägen till höger 
innan den hoppar till vänster på skärmen

\pagebreak

## Flytta bollen till höger i evighet: lösning 3

Ändra `if (x > 200)` till `if (x > 650)`.

```c++
float x = -50;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + 1;
  if (x > 650)
  {
    x = 0;
  }
}
```

\pagebreak

## Bollen går rätt för alltid: kommando 4

Lurad! 
Även om lektionen heter 'Bollen som går till höger för alltid', 
går vi fortfarande bollen annan låt det gå åt sidan.

Vi ska nu programmera en boll som rör sig till vänster för alltid.

Det du behöver veta nu är `if`-uttalandet för att säga när `x` är för litet:

```c++
if (x < 100)
{
  x = 500;
}
```

Med detta säger du: 'Kära dator, om `x` är mindre (`<`) än hundra,
ställ sedan in `x` till femhundra'.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`om (x <100) {}` | 'Kära dator, om' x 'är mindre än 100, gör det som finns inom lockiga parenteser.'

![Uppgift 4](BalEeeuwigToRechts4.png)

Gör en boll som går åt vänster för alltid:

 * Bollen startar utanför ramen
 * Bollen går helt ur bilden
 * Om bollen bara kommer ur bilden kommer den omedelbart tillbaka på andra sidan

\pagebreak

## Boll som går till höger för alltid: lösning 4

Detta är en evig boll som går till vänster:

```c++
float x = 650;

void setup()
{
  size(600, 400);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x - 1;
  if (x < -50)
  {
    x = 650;
  }
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`x = x - 1` | 'Kära dator, gör `x` till en lägre.'
`x -= 1` | 'Kära dator, gör `x` till en lägre.'
`x-` | 'Kära dator, gör `x` till en lägre.'
`--x` | 'Kära dator, gör` x` till en lägre.'

\pagebreak

## Bollen går rätt för alltid: kommando 5

Vi fick en boll att flytta åt höger och vänster av koordinaten `x`
att förändra. Bollen kan också gå ner och upp genom y -koordinaten
att förändra.

![Uppgift 5](BalEeeuwigNaarRechts5.png)

Skriv ett program där en boll går ner för alltid:

 * gör skärmen 300 pixlar bred och 200 pixlar hög
 * använd en variabel som heter 'y'
 * ersätt koden `ellips (x, 50, 100, 100)` med `elllipse (50, y, 100, 100)`
 * om bollen går ner från skärmen måste bollen komma upp igen

\pagebreak

## Flytta bollen till höger i evighet: lösning 5

```c++
float y = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(50,y,100,100);
  y = y + 1;
  if (y > 250)
  {
    y = -50;
  }
}
```

\pagebreak

## Bollen går rätt för alltid: kommando 6

Oj, nu när vi har skapat en variabel `x` eller ett `y`, låt oss göra båda!

När vi slår ihop kod gäller följande regler:

 * allt ovanför `setup` -funktionen ska stanna där
 * allt som finns inom `setup`-funktionen måste förbli inom `setup`-funktionen
 * allt som finns i funktionen `draw` måste hålla sig inom funktionen `draw`

![Uppgift 6](BalEeeuwigToRechts6.png)

 * Slå ihop koden för "Ball going right forever" med "Ball going down forever"
 * Ändra koden så att bollen går nere

\pagebreak

## Boll som går till höger för alltid: lösning 6

```c++
float x = -50;
float y = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x,y,100,100);
  x = x + 1;
  y = y + 1;
  if (x > 350)
  {
    x = -50;
  }
  if (y > 250)
  {
    y = -50;
  }
}
```

\pagebreak

## Boll som går till höger för alltid: slutuppdrag

![Avsluta uppdraget `Ball Eternal To the Right`](flytta_bollen_till_hoeger_i_evigheten_End Assignment.png)

Låt nu bollen gå snett till botten till vänster för alltid.


