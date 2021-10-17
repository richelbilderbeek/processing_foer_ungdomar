# Bollen som studsar horisontellt

![Slutuppgift `Bollen som studsar horisontellt`](bollen_som_studsar_horisontellt_slutuppgift.png)

I den här lektionen ska vi studsa en boll horisontellt.

\sidbrytning

## Bollen som studsar horisontellt: uppgift 1

```c++
flyta x = 300;
flottörhastighet = 2;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 650)
  {
    x = -50;
  }
}
```

Ange den här koden. Ställ in värdet på 'hastighet' till `1`. Vad ser du?

\sidbrytning

## Bollen som studsar horisontellt: lösning 1

Du kan se att bollen rör sig långsamt till höger. Om bollen
går ut ur bilden till höger, den visas igen på skärmen från vänster.

```c++
flyta x = 300;
flottörhastighet = 1;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 1](bulbs_sum_studsar_horisontellt_1.png)

\sidbrytning

## Bollen som studsar horisontellt: uppgift 2

Ställ in värdet på 'hastighet' till '0'. Vad ser du?

\sidbrytning

## Bollen som studsar horisontellt: lösning 2

Bollen står nu stilla

```c++
flyta x = 300;
flottörhastighet = 0;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 2](bulbs_sum_studsar_horisontellt_2.png)

\sidbrytning

## Bollen som studsar horisontellt: uppgift 3

Ställ in värdet på 'hastighet' till '-1'. Vad ser du?

![Solglasögon](EmojiSunglasses.png) | Talet '-1' uttalas som 'minus ett'. Det är nummer ett lägre än noll.
:-----------------:|:-----------------------------:

\sidbrytning

## Bollen som studsar horisontellt: lösning 3

Bollen rör sig nu till vänster och syns inte längre.

```c++
flyta x = 300;
flottörhastighet = -1;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 650)
  {
    x = -50;
  }
}
```

![Bollen som studsar horisontellt: solution 3](bulbs_sum_studsar_horisontellt_3.png)

\sidbrytning

## Bollen som studsar horisontellt: uppgift 4

![Bollen som studsar horisontellt: command 4](bulbs_sum_studsar_horisontellt_4.png)

Se till att om bollen går ut ur bilden till vänster, återkommer den till höger.
Gör detta genom att göra ett andra 'if'

\sidbrytning

## Bollen som studsar horisontellt: lösning 4

```c++
flyta x = 300;
flottörhastighet = -1;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 650)
  {
    x = -50;
  }
  om (x <-50)
  {
    x = 650;
  }
}
```

\sidbrytning

## Bollen som studsar horisontellt: uppgift 5

Tänk: vad måste hända med `hastigheten 'för att få bollen att studsa (vänster till höger)?

Om du vågar, prova detta utan att läsa mer!

\sidbrytning

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

\sidbrytning

## Bollen som studsar horisontellt: uppgift 6

![Kommando 6](bollen_sum_studsar_horisontellt_6.png)

Låt nu bollen studsa från vänster till höger

\sidbrytning

## Bollen som studsar horisontellt: lösning 6

```c++
flyta x = 300;
flottörhastighet = 1;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50,100,100);
  x = x + hastighet;
  om (x> 550)
  {
    hastighet = -1;
  }
  om (x <50)
  {
    hastighet = 1;
  }
}
```

\sidbrytning

## Bollen som studsar horisontellt: uppgift 7

![Kommando 7](bollen_sum_studsar_horisontellt_7.png)

Låt nu bollen röra sig med en hastighet av 2 pixlar åt gången.

\sidbrytning

## Bollen som studsar horisontellt: lösning 7

```c++
flyta x = 300;
flottörhastighet = 2;

void setup ()
{
  storlek (600, 100);
}

void draw ()
{
  ellips (x, 50, 100, 100);
  x = x + hastighet;
  om (x> 550)
  {
    hastighet = -2;
  }
  om (x <50)
  {
    hastighet = 2;
  }
}
```

\sidbrytning

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

# Bollen som studsar horisontellt

![Slutuppgift `Bal Die Horizontaal Stuitert`](bollen_som_studsar_horisontellt_slutuppgift.png)

In deze les gaan we een bal horizontaal laten stuiteren.

\pagebreak

## Bollen som studsar horisontellt: opdracht 1

````c++
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

Type deze code over. Zet de waarde van `snelheid` op `1`. Wat zie je?

\pagebreak

## Bollen som studsar horisontellt: oplossing 1

Je ziet dat de bal rustig naar rechts beweegt. Als de bal
rechts het beeld uit gaat, komt deze vanaf links weer in het beeldscherm.

````c++
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

![Bollen som studsar horisontellt: oplossing 1](bollen_som_studsar_horisontellt_1.png)

\pagebreak

## Bollen som studsar horisontellt: opdracht 2

Zet de waarde van `snelheid` op `0`. Wat zie je?

\pagebreak

## Bollen som studsar horisontellt: oplossing 2

De bal staat nu stil

````c++
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

![Bollen som studsar horisontellt: oplossing 2](bollen_som_studsar_horisontellt_2.png)

\pagebreak

## Bollen som studsar horisontellt: opdracht 3

Zet de waarde van `snelheid` op `-1`. Wat zie je?

![Sunglasses](EmojiSunglasses.png) | Het getal `-1` spreek je uit als 'min een'. Het is het getal een lager dan nul.
:-------------:|:----------------------------------------: 

\pagebreak

## Bollen som studsar horisontellt: oplossing 3

De bal gaat nu naar links en komt niet meer in beeld.

````c++
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

![Bollen som studsar horisontellt: oplossing 3](bollen_som_studsar_horisontellt_3.png)

\pagebreak

## Bollen som studsar horisontellt: opdracht 4

![Bollen som studsar horisontellt: opdracht 4](bollen_som_studsar_horisontellt_4.png)

Zorg dat als de bal links uit beeld gaat, deze weer rechts verschijnt.
Doe dit door een tweede `if` te maken

\pagebreak

## Bollen som studsar horisontellt: oplossing 4

````c++
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

## Bollen som studsar horisontellt: opdracht 5

Denk na: wat moet er met de `snelheid` gebeuren om de bal te laten stuiteren (van links naar rechst)? 

Als je durft: probeer dit zonder verder te lezen!

\pagebreak

## Bollen som studsar horisontellt: oplossing 5

Als tegen de linkerkant komt, moet de bal de bal naar rechts gaan. Als tegen de rechterkant komt, moet de bal de bal naar links gaan.

![Smiley](EmojiSmiley.png)|Als de bal ...|dan moet deze ...
:---:|:------:|:------:
![Bal aan linkerkant](bollen_som_studsar_horisontellt_LinksKlein.png)|aan de linkerkant komt|naar rechts gaan
![Bal aan rechterkant](bollen_som_studsar_horisontellt_RechtsKlein.png)|aan de rechtkant komt|naar links gaan

![Computer](EmojiComputer.png)|`if (...)` | `{ }`
:---:|:------:|:------:
![Bal aan linkerkant](bollen_som_studsar_horisontellt_LinksKlein.png)|`x < 50`|`snelheid = 1;`
![Bal aan rechterkant](bollen_som_studsar_horisontellt_RechtsKlein.png)|`x > 550`|`snelheid = -1;`

\pagebreak

## Bollen som studsar horisontellt: opdracht 6

![Opdracht 6](bollen_som_studsar_horisontellt_6.png)

Laat de bal nu van links naar rechts stuiteren

\pagebreak

## Bollen som studsar horisontellt: oplossing 6

````c++
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

## Bollen som studsar horisontellt: opdracht 7

![Opdracht 7](bollen_som_studsar_horisontellt_7.png)

Laat de bal nu met een snelheid van 2 pixels per keer bewegen.

\pagebreak

## Bollen som studsar horisontellt: oplossing 7

````c++
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

## Bollen som studsar horisontellt: opdracht 8

Verander in de code:

van|naar
---|---
`snelheid = 2;`|`snelheid = -snelheid;`
`snelheid = -2;`|`snelheid = -snelheid;`

![Computer](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-------------:|:----------------------------------------: 
`snelheid = -snelheid;`|'Lieve computer, verander het (min of plus)teken van snelheid'

![Sunglasses](EmojiSunglasses.png) | Het getal `-1` heeft een minteken. Het getal `1` (ook goed: `+1`) heeft een plusteken.
:-------------:|:----------------------------------------: 

\pagebreak

## Bollen som studsar horisontellt: oplossing 8

![Opdracht 8](bollen_som_studsar_horisontellt_8.png)

````c++
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

## Bollen som studsar horisontellt: slutuppgift

![Bollen som studsar horisontellt: slutuppgift](bulbs_sum_studsar_horisontellt_slutuppgift.png)

Låt nu bollen studsa upp och ner.
