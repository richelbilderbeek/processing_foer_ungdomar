# Tangentbord 1: Qix

I den här lektionen ska vi flytta en prick med tangentbordet.

![Qix](Qix.png)

\sidbrytning

## Tangentbord 1: intro

![Intro](Intro.png)

Detta är vår startkod. Skriv denna kod över:

```c++
float x = 0;
flytande y = 0;

void setup()
{
  storlek(200 200);
  x = bredd/2;
  y = höjd / 2;
}

void draw()
{
  om (knapptryckt)
  {
    om (nyckel == 'w') y = y - 1;
    if (nyckel == 'd') x = x + 1;
    om (nyckel == 's') y = y + 1;
    om (nyckel == 'a') x = x - 1;
  }
  punkt(x,y);
}
```

Starta programmet och tryck på ADSW för att flytta.

![Solglasögon](EmojiSunglasses.png) | Kontrollerna är inte perfekta! Att göra detta perfekt är lite svårare
:-----------------:|:---------------------- ------- :

\sidbrytning

## Tangentbord 1: Kommando 1

När spelaren till höger går ut ur bilden, se till att
den visas till höger.

![Tangentbord 1: Kommando 1](Keyboard1_1.png)

\sidbrytning

## Tangentbord 1: Lösning 1

Du behöver en "om"-sats:

```c++
float x = 0;
flytande y = 0;

void setup()
{
  storlek(200 200);
  x = bredd/2;
  y = höjd / 2;
}

void draw()
{
  om (knapptryckt)
  {
    om (nyckel == 'w') y = y - 1;
    if (nyckel == 'd') x = x + 1;
    om (nyckel == 's') y = y + 1;
    om (nyckel == 'a') x = x - 1;
  }
  om (x > bredd) x = 0;
  punkt(x,y);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`if (x > width) x = 0`|'Bästa dator, om `x` är större än `width`, ställ `x` till noll.'

\sidbrytning

## Tangentbord 1: Kommando 2

Se till att *även* om spelaren längst upp på skärmen släcks, att
det visas längst ner.

![Tangentbord 1: Kommando 2](Keyboard1_2.png)

\sidbrytning

## Tangentbord 1: Lösning 2

```c++
float x = 0;
flytande y = 0;

void setup()
{
  storlek (200 200);
  x = bredd/2;
  y = höjd / 2;
}

void draw()
{
  om (knapptryckt)
  {
    om (nyckel == 'w') y = y - 1;
    if (nyckel == 'd') x = x + 1;
    om (nyckel == 's') y = y + 1;
    om (nyckel == 'a') x = x - 1;
  }
  om (x > bredd) x = 0;
  om (y < 0) y = höjd;
  punkt(x,y);
}
```

\sidbrytning

## Tangentbord 1: sista kommandot

Se till att spelaren alltid finns kvar i bilden.

![Keyboard 1: Final Assignment](Keyboard1_End Assignment.png)
