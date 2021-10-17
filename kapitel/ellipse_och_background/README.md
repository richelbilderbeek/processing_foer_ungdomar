# `ellips` och` bakgrund`

I den här lektionen kommer vi att lära oss hur man ritar ovaler.

Här kan du se ett känt spel, Bubble Bobble,
som fungerar mycket med cirklar:

![Bubble Bobble](BubbleBobble.png)

\pagebreak

## `ellips` och` bakgrund`: kommando 1

Kör den här koden

`` c ++
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
}

void draw ()
{
  stroke (x, x, x);
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 50);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: lösning 1

![Lösning 1](EllipseBackground1.png)

\pagebreak

## `ellips` och` bakgrund`: kommando 2

![Kommando 2](EllipseBackground2.png)

Ändra det tredje och fjärde numret för ellipsen (100 -talet),
så att ovalen blir dubbelt så hög.

\pagebreak

## `ellips` och` bakgrund`: lösning 2

`` c ++
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
}

void draw ()
{
  stroke (x, x, x);
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 100);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: kommando 3

![Kommando 3](EllipseBackground3.png)

Lägg till som den första raden i 'draw':

`` c ++
bakgrund (255, 0, 0);
''

\pagebreak

## `ellips` och` bakgrund`: lösning 3

`` c ++
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
}

void draw ()
{
  bakgrund (255, 0, 0);
  stroke (x, x, x);
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 100);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: kommando 4

![Lösning 4](EllipseBackground4.png)

Gör nu bakgrunden magenta.
Gör kanten på cirkeln svart

\pagebreak

## `ellips` och` bakgrund`: lösning 4

''
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
}

void draw ()
{
  bakgrund (255, 0, 255);
  stroke (0, 0, 0);
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 100);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: kommando 5

Lägg nu raden med 'bakgrund' efter 'storlek' (inom 'inställning').

\pagebreak

## `ellips` och` bakgrund`: lösning 5

![Lösning 5](EllipseBackground5.png)

`` c ++
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
  bakgrund (255, 0, 255);
}

void draw ()
{
  stroke (0, 0, 0);
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 100);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: kommando 6

![Kommando 6](EllipseBackground6.png)

Gör linjefärgen på ovalen valfri färg: den röda, gröna och
blått värde måste alla vara slumpmässigt.

\pagebreak

## `ellips` och` bakgrund`: lösning 6

`` c ++
flyta x = -50;
flottörhastighet = 1;

void setup ()
{
  storlek (400, 100);
  bakgrund (255, 0, 255);
}

void draw ()
{
  stroke (random (256), random (256), random (256));
  fyll (x, x, x);
  ellips (x, höjd / 2, 50, 100);
  x = x + hastighet;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
''

\pagebreak

## `ellips` och` bakgrund`: sista kommandot

![Avsluta uppdraget `ellips 'och` bakgrund`](EllipseBackgroundEnd -uppgift.png)

Gör den ovala rundan, samma höjd som skärmen, magenta och med en röd kant.
Bakgrunden ska vara orange (orange är helröd, halvfull grön och ingen blå).
Det ska inte finnas någon sträng från gamla ovaler.
