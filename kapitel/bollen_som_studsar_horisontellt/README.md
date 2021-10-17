# Bollen som studsar horisontellt

![Bollen som studsar horisontellt: lösning 2](bollen_som_studsar_horisontellt_2.png)

I den här lektionen ska vi studsa en boll horisontellt från sida till sida.

\pagebreak

## Bollen som studsar horisontellt: uppgift 1

```c++
float x = 300;
float hastighet = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
  if (x > 650)
  {
    x = -50;
  }
}
```

Skriv in den här koden. Sätt värdet på `hastighet` till `1`. Vad ser du?

\pagebreak

## Bollen som studsar horisontellt: lösning 1

Du kan se att bollen rör sig långsamt åt höger. Om bollen
åker ut ur fönstret till höger, ska den dyka upp igen på fönstrets vänstra sida.

```c++
float x = 300;
float hastighet = 1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: lösning 1](bollen_som_studsar_horisontellt_1.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 2

Sätt värdet på `hastighet` till `0`. Vad ser du?

\pagebreak

## Bollen som studsar horisontellt: lösning 2

Bollen är nu stilla.

```c++
float x = 300;
float hastighet = 0;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: lösning 2](bollen_som_studsar_horisontellt_2.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 3

Sätt värdet på `hastighet` till `-1`. Vad ser du?

![Sunglasses](EmojiSunglasses.png) | Talet `-1` uttalas som 'minus ett'. Det är nummer ett lägre än noll.
:-----------------:|:-----------------------------:

\pagebreak

## Bollen som studsar horisontellt: lösning 3

Bollen rör sig nu åt vänster och syns inte längre.

```c++
float x = 300;
float hastighet = -1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
  if (x > 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: lösning 3](bollen_som_studsar_horisontellt_3.png)

\pagebreak

## Bollen som studsar horisontellt: uppgift 4

![Bollen som studsar horisontellt: command 4](bollen_som_studsar_horisontellt_4.png)

Se till att om bollen åker ut ur fönstret till vänster, så återkommer den på höger sida.
Gör detta genom att göra en till `if`-sats.

\pagebreak

## Bollen som studsar horisontellt: lösning 4

```c++
float x = 300;
float hastighet = -1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
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

Tänk efter nu, vad måste göras med `hastighet` för att få bollen att studsa (från vänster till höger)?

Om du vågar, prova detta utan att läsa mer!

\pagebreak

## Bollen som studsar horisontellt: lösning 5

Om den träffar vänster sida ska bollen åka åt höger. Om den träffar höger sida måste bollen åka åt vänster.

![Smiley](EmojiSmiley.png) | Om bollen ... | då måste den ...
:---:|:------:|:------:
![Boll till vänster](bollen_som_studsar_horisontellt_vaenster_smaa.png) | kommer till vänster | går till höger
![Boll på höger sida](bollen_som_studsar_horisontellt_hoeger_smaa.png) | kommer till höger | går till vänster

![Dator](EmojiComputer.png) | `if(...)` | `{}`
:---:|:------:|:------:
![Boll till vänster](bollen_som_studsar_horisontellt_vaenster_smaa.png)| `x < 50`  |`hastighet =  1;`
![Boll på höger sida](bollen_som_studsar_horisontellt_hoeger_smaa.png) | `x > 550` |`hastighet = -1;`

\pagebreak

## Bollen som studsar horisontellt: uppgift 6

![Uppgift 6](bollen_som_studsar_horisontellt_6.png)

Låt nu bollen studsa från vänster till höger.

\pagebreak

## Bollen som studsar horisontellt: lösning 6

```c++
float x = 300;
float hastighet = 1;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x,50,100,100);
  x = x + hastighet;
  if (x > 550)
  {
    hastighet = -1;
  }
  if (x < 50)
  {
    hastighet = 1;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: uppgift 7

![Uppgift 7](bollen_som_studsar_horisontellt_7.png)

Låt nu bollen åka med en hastighet av 2 pixlar åt gången.

\pagebreak

## Bollen som studsar horisontellt: lösning 7

```c++
float x = 300;
float hastighet = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + hastighet;
  if (x > 550)
  {
    hastighet = -2;
  }
  if (x < 50)
  {
    hastighet = 2;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: uppgift 8

Ändra koden:

från              | till
------------------|----------------------------
`hastighet = 2;`  | `hastighet = -hastighet;`
`hastighet = -2;` | `hastighet = -hastighet;`

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`hastighet = -hastighet;` | 'Kära dator, ändra minus- eller plustecknet på hastighet'

![Sunglasses](EmojiSunglasses.png) | Talet '-1' har ett minustecken 
:-----------------:|:-----------------------------:

\pagebreak

## Bollen som studsar horisontellt: lösning 8

![Uppgift 8](bollen_som_studsar_horisontellt_8.png)

```c++
float x = 300;
float hastighet = 2;

void setup()
{
  size(600, 100);
}

void draw()
{
  ellipse(x, 50, 100, 100);
  x = x + hastighet;
  if (x > 550)
  {
    hastighet = -hastighet;
  }
  if (x < 50)
  {
    hastighet = -hastighet;
  }
}
```

\pagebreak

## Bollen som studsar horisontellt: slutuppgift

![bollen som studsar horisontellt: slutuppgift](bollen_som_studsar_horisontellt_slutuppgift.png)

Låt nu bollen studsa upp och ner.

