# Tangentbord 1: Qix

I den här lektionen ska vi flytta en prick med tangentbordet.

![Qix](Qix.png)

\pagebreak

## Tangentbord 1: intro

![Intro](Intro.png)

Detta är vår startkod. Skriv denna kod över:

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  point(x,y);
}
```

Starta programmet och tryck på ADSW för att flytta.

![Solglasögon](EmojiSunglasses.png) | Kontrollerna är inte perfekta! Att göra detta perfekt är lite svårare
:-----------------:|:---------------------- ------- :

\pagebreak

## Tangentbord 1: Kommando 1

När spelaren till höger går ut ur bilden, se till att
den visas till höger.

![Tangentbord 1: Kommando 1](Keyboard1_1.png)

\pagebreak

## Tangentbord 1: Lösning 1

Du behöver en "om"-sats:

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if (x > width) x = 0;
  point(x,y);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`if (x > width) x = 0`|'Bästa dator, om `x` är större än `width`, ställ `x` till noll.'

\pagebreak

## Tangentbord 1: Kommando 2

Se till att *även* om spelaren längst upp på skärmen släcks, att
det visas längst ner.

![Tangentbord 1: Kommando 2](Keyboard1_2.png)

\pagebreak

## Tangentbord 1: Lösning 2

```c++
float x = 0;
float y = 0;

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
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);
}
```

\pagebreak

## Tangentbord 1: sista kommandot

Se till att spelaren alltid finns kvar i bilden.

![Keyboard 1: Final Assignment](Keyboard1_End Assignment.png)
