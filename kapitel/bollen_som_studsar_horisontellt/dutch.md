# Bollen som studsar horisontellt

![Slutuppgift `Bollen som studsar horisontellt`](bollen_som_studsar_horisontellt_slutuppgift.png)

I den här lektionen ska vi studsa en boll horisontellt.

\pagebreak

## Bollen som studsar horisontellt: uppgift 1

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

Ange den här koden. Ställ in värdet på 'hastighet' till `1`. Vad ser du?

\pagebreak

## Bollen som studsar horisontellt: lösning 1

Du kan se att bollen rör sig långsamt till höger. Om bollen
går ut ur bilden till höger, den visas igen på skärmen från vänster.

```c++
float x = 300;
float snelheid = 1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 1](bulbs_sum_studsar_horisontellt_1.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 2

Ställ in värdet på 'hastighet' till '0'. Vad ser du?

\pagebreak

## Bollen som studsar horisontellt: lösning 2

Bollen står nu stilla

```c++
float x = 300;
float snelheid = 0;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 2](bulbs_sum_studsar_horisontellt_2.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 3

Ställ in värdet på 'hastighet' till '-1'. Vad ser du?

![Solglasögon](EmojiSunglasses.png) | Talet '-1' uttalas som 'minus ett'. Det är nummer ett lägre än noll.
:-----------------:|:-----------------------------:

\pagebreak

## Bollen som studsar horisontellt: lösning 3

Bollen rör sig nu till vänster och syns inte längre.

```c++
float x = 300;
float snelheid = -1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 3](bulbs_sum_studsar_horisontellt_3.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 4

![Bollen som studsar horisontellt: command 4](bulbs_sum_studsar_horisontellt_4.png)

Se till att om bollen går ut ur bilden till vänster, återkommer den till höger.
Gör detta genom att göra ett andra 'if'

\pagebreak

## Bollen som studsar horisontellt: lösning 4

```c++
float x = 300;
float snelheid = -1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 650)
  {
    x = -50;
  }
  if (x < -50)
  {
    x = 650;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: uppgift 5

Tänk: vad måste hända med `hastigheten 'för att få bollen att studsa (vänster till höger)?

Om du vågar, prova detta utan att läsa mer!

\pagebreak

## Bollen som studsar horisontellt: lösning 5

Om den träffar vänster sida ska bollen få bollen att gå åt höger. Om den kommer mot höger sida måste bollen gå bollen till vänster.

![Smiley](EmojiSmiley.png) | Om bollen ... | då måste den ...
:---:|:------:|:------:
![Boll till vänster](bollen_som_studsar_horisontellt_LinksKlein.png) | kommer till vänster | går till höger
![Boll på höger sida](bollen_som_studsar_horisontellt_RechtsKlein.png) | kommer till höger | går till vänster

![Dator](EmojiComputer.png) | `om (...)` | `{}`
:---:|:------:|:------:
![Boll till vänster](bollen_sum_studsar_horisontellt_LinksKlein.png) | `x <50` |` speed = 1; `
![Boll på höger sida](bollen_sum_studsar_horisontellt_RechtsKlein.png) | `x> 550` |` speed = -1; `

\pagebreak

## Bollen som studsar horisontellt: uppgift 6

![Kommando 6](bollen_sum_studsar_horisontellt_6.png)

Låt nu bollen studsa från vänster till höger

\pagebreak

## Bollen som studsar horisontellt: lösning 6

```c++
float x = 300;
float snelheid = 1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + snelheid;
  if (x > 550)
  {
    snelheid = -1;
  }
  if (x < 50)
  {
    snelheid = 1;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: uppgift 7

![Kommando 7](bollen_sum_studsar_horisontellt_7.png)

Låt nu bollen röra sig med en hastighet av 2 pixlar åt gången.

\pagebreak

## Bollen som studsar horisontellt: lösning 7

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + snelheid;
  if (x > 550)
  {
    snelheid = -2;
  }
  if (x < 50)
  {
    snelheid = 2;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: uppgift 8

Ändring av koden:

från | till
--- | ---
`hastighet = 2;` | `hastighet = -hastighet;`
`hastighet = -2;` | `hastighet = -hastighet;`

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`hastighet = -hastighet;` | 'Kära dator, ändra (minus eller plus) tecken på hastighet'

![Solglasögon](EmojiSunglasses.png) | Talet '-1' har ett minustecken 

\pagebreak

## Lökar summa studsar horisontellt: lösning 8

! [Kommando 8] (bollen_sum_studsar_horisontellt_8.png)

```c++
float x = 300;
float snelheid = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + snelheid;
  if (x > 550)
  {
    snelheid = -snelheid;
  }
  if (x < 50)
  {
    snelheid = -snelheid;
  }
}
```

\pagebreak

## Bulb sum studsar horisontellt: slutuppgift

! [bulbs sum studsar horisontellt: final task] (bulbs_sum_studsar_horisontellt_slutuppgift.png)

Låt nu bollen studsa upp och ner.
