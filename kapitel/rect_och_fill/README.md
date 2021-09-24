# `rect` och `fill`

Här ser du ett av de mest berömda spel någonsin,
som är gjort med enkla fyrkanter som är ifyllda med olika färger:

![Tetris](Tetris.png)

Du kan göra en fyrkant med fyra linjer,
men `rect` är lättare.

\pagebreak

## `rect` och `fill`: uppgift 1

Kör denna kod.

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` och `fill`: lösning 1

![lösning 1](RectFill1.png)

\pagebreak

## `rect` och `fill`: uppgift 2

Lägg till följande text, efter `ellipse(x, height / 2, 100, 100);`:

```c++
  rect(x, height / 2, 100, 100);
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:------------------------:|:---------------------------------------------------:
`rect (100, 200, 300, 400)` | 'Kära dator, rita ut en fyrkant med övre vänstra hörnet på `(100, 200)`, `300` pixlar bred och `400` pixlar hög.'

\pagebreak

## `rect` och `fill`: lösning 2

![lösning 2](RectFill2.png)

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  rect(x, height / 2, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` och `fill`: uppgift 3

![Uppdrag 3](RectFill3.png)

Rita ut fyrkanten ovanpå bollen.
Gör det genom att minska `x` och `y`-koordinaterna med 50.

\pagebreak

## `rect` och `fill`: lösning 3

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  ellipse(x, height / 2, 100, 100);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` och `fill`: uppgift 4

![Uppdrag 4](RectFill4.png)

Ta nu bort den dolda bollen.
På denna plats, använd `stroke` igen, men nu med färgen gul.
Kolla på färgbollen nedanför:

![Färgenbollen](AdditiveColor3.png)

\pagebreak

## `rect` och `fill`: lösning 4

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  if (x > width + 50)
  {
    x = -50;
  }
}
```

\pagebreak

## `rect` och `fill`: uppgift 5

Lägg till följande text under `stroke(255, 255, 0);`:

```c++
fill(x, 0, 255);
```

\pagebreak

## `rect` och `fill`: lösning 5

![Uppdrag 5](RectFill5.png)

```c++
float x = -50;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, 0, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  om (x> bredd + 50)
  {
    x = -50;
  }
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:----------------:|:----------------------------------------:
`fill(0, 128, 255);` | 'Kära dator, fyll i med en färg utan rött, som är halvt grön och helt blå.'

\pagebreak

## `rect` och `fill`: uppgift 6

Gör en ny variabel som heter `gron` (datorn gillar inte ord med `ö`).
`gron` ska ha startvärdet noll.
`gron` är det andra talet i `fill` (platsen efter `0`).
Varje gång ökar `gron` med två.

\pagebreak

### `rect` och `fill`: lösning 6

```c++
float x = -50;
float gron = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, gron, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  gron = gron + 2;
  if (x > width + 50)
  {
    x = -50;
  }
}
```
 
\pagebreak

## `rect` och `fill`: uppgift 7

![Uppdrag 7](RectFill7.png)

Variabeln `gron` kan inte bli högre än `255`. Gör en ny `if`-sats:
om `gron` är mer än `255`, ska `gron` bli `0`.

\pagebreak

## `rect` och `fill`: lösning 7

```c++
float x = -50;
float gron = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, gron, 255);
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  gron = gron + 2;
  if (x > width + 50)
  {
    x = -50;
  }
  if (gron > 255)
  {
    gron = 0;
  }
}
```

\pagebreak

## `rect` och `fill`: uppgift 8

![Uppdrag 8](RectFill8.png)

Den ifyllda färgen ska nu ha ett blåvärde
som är ett slumpmässigt tal mellan `0` och `256`.

\pagebreak

## `rect` och `fill`: lösning 8

```c++
float x = -50;
float gron = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 255, 0);
  fill(x, gron, random(256));
  rect(x - 50, height / 2 - 50, 100, 100);
  x = x + 1;
  gron = gron + 2;
  if (x > width + 50)
  {
    x = -50;
  }
  if (gron > 255)
  {
    gron = 0;
  }
}
```

\pagebreak

## `rect` och `fill`: slutuppgift

![Slutuppgift `rect` och `fill`](RectFillEindopdracht.png)

Nu ska du ändra både linjefärg och ifyllnadsfärg.
Linjefärgen ska vara röd, men det röda värdet ska vara slumpmässigt mellan `0` och `256`.
Ifyllnadsfärgen ska vara grön, och öka från `0` till `256` med `3` steg åt gången.
Om grönvärdet är större än `256`, måste den sättas till `0` igen.

