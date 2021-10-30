# Tangentbord 3: Terminator II

I den här lektionen ska vi styra en prick med tangentbordet.

![Terminator 2 (arkadspel)](Terminator2.jpg)

\sidbrytning

## Tangentbord 3: intro

![Intro](Keyboard3_Intro.png)

Detta är vår startkod. Skriv denna kod över:

```c++
float x = 0;
flytande y = 0;

float dx = 0; // Hastighet till höger
float dy = 0; // Sänk hastigheten

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
    if (nyckel == 'w') dy = dy - 0,01;
    if (nyckel == 'd') dx = dx + 0,01;
    if (nyckel == 's') dy = dy + 0,01;
    if (nyckel == 'a') dx = dx - 0,01;
  }
  x = x + dx;
  y = y + dy;
  punkt(x,y);
}
```

Starta programmet och tryck på ADSW för att ändra riktning.

![Solglasögon](EmojiSunglasses.png) | På engelska använder du en punkt i ett kommanummer
:-----------------:|:---------------------- ------- :

\sidbrytning

## Tangentbord 3: Kommando 1

När spelaren till höger går ut ur bilden, se till att
den visas till höger.

![Kommando 1](Keyboard3_1.png)

\sidbrytning

## Tangentbord 3: Lösning 1

Du behöver en "om"-sats:

```c++
float x = 0;
flytande y = 0;

float dx = 0; // Hastighet till höger
float dy = 0; // Sänk hastigheten

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
    if (nyckel == 'w') dy = dy - 0,01;
    if (nyckel == 'd') dx = dx + 0,01;
    if (nyckel == 's') dy = dy + 0,01;
    if (nyckel == 'a') dx = dx - 0,01;
  }
  x = x + dx;
  y = y + dy;
  om (x > bredd) x = 0;
  punkt(x,y);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`if (x > width) x = 0`|'Bästa dator, om `x` är större än `width`, ställ `x` till noll.'

\sidbrytning

## Tangentbord 3: Kommando 2

Se till att *även* om spelaren längst upp på skärmen släcks, att
det visas längst ner.

![Kommando 2](Keyboard3_2.png)

\sidbrytning

## Tangentbord 3: Lösning 2

```c++
float x = 0;
flytande y = 0;

float dx = 0; // Hastighet till höger
float dy = 0; // Sänk hastigheten

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
    if (nyckel == 'w') dy = dy - 0,01;
    if (nyckel == 'd') dx = dx + 0,01;
    if (nyckel == 's') dy = dy + 0,01;
    if (nyckel == 'a') dx = dx - 0,01;
  }
  x = x + dx;
  y = y + dy;
  om (x > bredd) x = 0;
  om (y < 0) y = höjd;
  punkt(x,y);
}
```

\sidbrytning

## Tangentbord 3: Sista kommando

Se till att spelaren alltid finns kvar i bilden.

![End Assignment](Keyboard3_End Assignment.png)
