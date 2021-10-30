# Tangentbord 2: Tron

I den här lektionen ska vi styra en prick med tangentbordet.

![Tron](Tron.png)

\pagebreak

## Tangentbord 2: intro

![Tangentbord 2: intro](tangentbord_2_intro.png)

Detta är vår startkod. Skriv denna kod över:

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  point(x,y);
}
```

Starta programmet och tryck på ADSW för att ändra riktning.

![Solglasögon](EmojiSunglasses.png) | Kontrollerna är inte perfekta! Att göra detta perfekt är lite svårare
:-----------------:|:-----------------------------:

\pagebreak

## Tangentbord 2: Uppgift 1

När spelaren till höger går ut ur bilden, se till att
den visas till höger.

![Tangentbord 2: Uppgift 1](tangentbord_2_1.png)

\pagebreak

## Tangentbord 2: Lösning 1

Du behöver en `if`-sats:

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if (x > width) x = 0;
  point(x,y);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:-----------------------------:
`if (x > width) x = 0`|'Bästa dator, om `x` är större än `width`, ställ `x` till `0`.'

\pagebreak

## Tangentbord 2: Uppgift 2

Se till att *även* om spelaren längst upp på skärmen släcks, att
det visas längst ner.

![Tangentbord 2: Uppgift 2](tangentbord_2_2.png)

\pagebreak

## Tangentbord 2: Lösning 2

```c++
float x = 0;
float y = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);
}
```

\pagebreak

## Tangentbord 2: Slutuppgift

Se till att spelaren alltid finns kvar i bilden.

![Tangentbord 2: Slutuppgift](tangentbord_2_slutuppgift.png)
