# Tangentbord 3: Terminator II

I den här lektionen ska vi styra en prick med tangentbordet.

![Terminator 2 (arkadspel)](Terminator2.jpg)

\pagebreak

## Tangentbord 3: intro

![Intro](Keyboard3_Intro.png)

Detta är vår startkod. Skriv denna kod över:

```c++
float x = 0;
float y = 0;

float dx = 0; // Snelheid naar rechts
float dy = 0; // Snelheid naar onder

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
    if (key == 'w') dy = dy - 0.01;
    if (key == 'd') dx = dx + 0.01;
    if (key == 's') dy = dy + 0.01;
    if (key == 'a') dx = dx - 0.01;
  }
  x = x + dx;
  y = y + dy;
  point(x,y);
}
```

Starta programmet och tryck på ADSW för att ändra riktning.

![Solglasögon](EmojiSunglasses.png) | På engelska använder du en punkt i ett kommanummer
:-----------------:|:---------------------- ------- :

\pagebreak

## Tangentbord 3: Kommando 1

När spelaren till höger går ut ur bilden, se till att
den visas till höger.

![Kommando 1](Keyboard3_1.png)

\pagebreak

## Tangentbord 3: Lösning 1

Du behöver en "om"-sats:

```c++
float x = 0;
float y = 0;

float dx = 0; // Snelheid naar rechts
float dy = 0; // Snelheid naar onder

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
    if (key == 'w') dy = dy - 0.01;
    if (key == 'd') dx = dx + 0.01;
    if (key == 's') dy = dy + 0.01;
    if (key == 'a') dx = dx - 0.01;
  }
  x = x + dx;
  y = y + dy;
  if (x > width) x = 0;
  point(x,y);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`if (x > width) x = 0`|'Bästa dator, om `x` är större än `width`, ställ `x` till noll.'

\pagebreak

## Tangentbord 3: Kommando 2

Se till att *även* om spelaren längst upp på skärmen släcks, att
det visas längst ner.

![Kommando 2](Keyboard3_2.png)

\pagebreak

## Tangentbord 3: Lösning 2

```c++
float x = 0;
float y = 0;

float dx = 0; // Snelheid naar rechts
float dy = 0; // Snelheid naar onder

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
    if (key == 'w') dy = dy - 0.01;
    if (key == 'd') dx = dx + 0.01;
    if (key == 's') dy = dy + 0.01;
    if (key == 'a') dx = dx - 0.01;
  }
  x = x + dx;
  y = y + dy;
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);
}
```

\pagebreak

## Tangentbord 3: Sista kommando

Se till att spelaren alltid finns kvar i bilden.

![End Assignment](Keyboard3_End Assignment.png)
