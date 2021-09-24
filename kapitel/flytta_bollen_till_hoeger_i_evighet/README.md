# Låt bollen åka åt höger i all evighet

Under den här lektionen ska vi få en boll att åka åt höger i all evighet.

Under den här lektionen lär vi oss också vad en `if`-sats är.
Du kan (nästan) inte programmera utan `if`-satser.

![På bosconianska kan du också åka åt höger i all evighet](Bosconian.jpg)

\pagebreak

## Låt bollen åka åt höger i all evighet: intro

![Låt bollen åka höger](flytta_bollen_till_hoeger_i_evigheten_intro.png)

Detta är en boll som åker åt höger:

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

Nackdel: bollen återvänder aldrig till fönstret.

\pagebreak

Vi vill kunna säga, "Kära dator, **om** bollen är för långt bort åt höger,
ska du teleportera bollen till vänster'. `if` är engelska för 'om'.

Så det här kan bli:

```c++
if (x > 200)
{
  x = 100;
}
```

Tecknet `>` betyder 'större än'. 
Mer exakt blir det: "Kära dator, **om** `x` är större än `200`, 
sätt `x` till `100`. `if` är engelska för 'om'.

![Ett `om`](flytta_bollen_till_hoeger_i_evigheten_if.png)

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`if(x> 200) {}` | 'Kära dator, om `x` är större än `200`, gör det som står inom måsvingarna.'
`x = 100;` | 'Kära dator, låt `x` vara `100`.'

\pagebreak

## Låt bollen åka åt höger i all evighet: uppgift 1

![Uppgift 1](flytta_bollen_till_hoeger_i_evigheten_1.png)

Skriv `if` inuti programmets kod. 
Skriv `if` i slutet av `draw`, före den avslutande måsvingen (`}`).

\pagebreak

## Låt bollen åka åt höger i all evighet: lösning 1

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

## Bollen går rätt för alltid: uppgift 2

![Uppgift 2](flytta_bollen_till_hoeger_i_evigheten_2.png)

Se till att ovalen hoppar hela vägen till vänster på skärmen

\pagebreak

## Flytta bollen till höger i evighet: lösning 2

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

## Bollen går rätt för alltid: uppgift 3

![Uppgift 3](flytta_bollen_till_hoeger_i_evigheten_3.png)

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

## Bollen går rätt för alltid: uppgift 4

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

![Uppgift 4](flytta_bollen_till_hoeger_i_evigheten_4.png)

Gör en boll som går åt vänster för alltid:

 * Bollen startar utanför ramen
 * Bollen går helt ur bilden
 * Om bollen bara kommer ur bilden kommer den omedelbart tillbaka på andra sidan

\pagebreak

## Flytta bollen till höger i evighet: lösning 4

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

## Bollen går rätt för alltid: uppgift 5

Vi fick en boll att flytta åt höger och vänster av koordinaten `x`
att förändra. Bollen kan också gå ner och upp genom y -koordinaten
att förändra.

![Uppgift 5](flytta_bollen_till_hoeger_i_evigheten_5.png)

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

## Bollen går rätt för alltid: uppgift 6

Oj, nu när vi har skapat en variabel `x` eller ett `y`, låt oss göra båda!

När vi slår ihop kod gäller följande regler:

 * allt ovanför `setup` -funktionen ska stanna där
 * allt som finns inom `setup`-funktionen måste förbli inom `setup`-funktionen
 * allt som finns i funktionen `draw` måste hålla sig inom funktionen `draw`

![Uppgift 6](flytta_bollen_till_hoeger_i_evigheten_6.png)

 * Slå ihop koden för "Ball going right forever" med "Ball going down forever"
 * Ändra koden så att bollen går nere

\pagebreak

## Flytta bollen till höger i evighet: lösning 6

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

## Flytta bollen till höger i evighet: slutuppgift

![slutuppgift 'Flytta bollen till höger i evighet'](flytta_bollen_till_hoeger_i_evigheten_slutuppgift.png)

Låt nu bollen gå snett till botten till vänster för alltid.


