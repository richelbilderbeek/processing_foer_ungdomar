# `line` och `stroke`

![Moria, ett av de allra första spelen med färg](line_och_stroke_moria.png)

Under den här lektionen kommer vi att lära oss att rita färgade linjer.

\pagebreak

## `line` och `stroke`: uppgift 1

Kör den här koden:

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 100, 300, 200);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----:|:--------------------------------------------:
`line(0, 100, 300, 200);` | 'Kära dator, rita ut en linje från `(0, 100)` till `(300, 200)`.'

![Solglasögon](EmojiSunglasses.png) | `(100, 200)` är pixeln som är `100` pixlar till höger om och `200` pixlar under fönstrets övre vänstra hörn
:-----------------:|:-----------------------------:

\pagebreak

## `line` och `stroke`: lösning 1

![Lösning 1](line_och_stroke_1_extra.png)

\pagebreak

## `line` och `stroke`: uppgift 2

![Uppgift 2](line_och_stroke_2.png)

Ändra linjen så att den går till det övre högra hörnet,
istället för till den nedre högra hörnet.

\pagebreak

## `line` och `stroke`: lösning 2

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 100, 300, 0);
}
```

\pagebreak

## `line` och `stroke`: uppgift 3


Ändra linjen så att den börjar längst ner till vänster
istället för i mitten på vänster sida.

![Uppgift 3](line_och_stroke_3.png)

\pagebreak

## `line` och `stroke`: lösning 3

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 200, 300, 0);
}
```

\pagebreak

## `line` och `stroke`: uppgift 4

Låt linjen gå från nedre vänster till överst till höger, 
men använd nu `width` och `height` istället.

![Uppgift 4](line_och_stroke_4.png)

\pagebreak

## `line` och `stroke`: lösning 4

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, height, width, 0);
}
```

\pagebreak

## `line` och `stroke`: uppgift 5

![Uppgift 5](line_och_stroke_5.png)

Låt nu linjen starta i vänstra kanten på en slumpmässig höjd. 
Du gör detta med `random`.

\pagebreak

## `line` och `stroke`: lösning 5

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, random(height), width, 0);
}
```

\pagebreak

## `line` och `stroke`: uppgift 6

![Uppgift 6](line_och_stroke_6.png)

Låt linjen nu också sluta på en slumpmässig höjd i högra kanten.

\pagebreak

## `line` och `stroke`: lösning 6

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, random(height), width, random(height));
}
```

\pagebreak

## `line` och `stroke`: uppgift 7

![Uppgift 7](line_och_stroke_7.png)

Precis ovanför meningen med `line`, skriv nu texten `stroke(255, 0, 0);`.

\pagebreak

## `line` och `stroke`: lösning 7

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(255, 0, 0);
  line(0, random(height), width, random(height));
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----:|:--------------------------------------------:
`stroke (255, 0, 0);` | 'Kära dator, färga linjerna röda.'
`stroke (255, 0, 0);` | 'Kära dator, färga linjerna helt röda, utan grönt och utan blått.'

\pagebreak

## `line` och `stroke`: uppgift 8

![Uppgift 8](line_och_stroke_8.png)

Gör linjerna cyan (ljusblå) nu. Titta på figuren 'Färgcirkel' hur du gör det

![Färgcirkel](AdditiveColor3.png)

\pagebreak

## `line` och `stroke`: lösning 8

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(0, 255, 255);
  line(0, random(height), width, random(height));
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----:|:--------------------------------------------:
`stroke (0, 255, 255);` | 'Kära dator, färga linjerna cyan.'
`stroke (0, 255, 255);` | 'Kära dator, färga linjerna utan rött, helt gröna och helt blåa.'

\pagebreak

## `line` och `stroke`: uppgift 9

![Uppgift 9](line_och_stroke_9.png)

Sätt nu det röda värdet till ett slumpmässigt tal mellan 0 och 256.

\pagebreak

## `line` och `stroke`: lösning 9

```processing
void setup()
{
  size(300, 200);
}

void draw()
{
  stroke(random(256), 255, 255);
  line(0, random(height), width, random(height));
}
```

\pagebreak

## `line` och `stroke`: slutuppgift

![Slutuppgift `line` och `stroke`](line_och_stroke_slutuppgift.png)

Låt nu linjer börja och sluta på slumpmässiga platser. 
Linjefärgen måste också vara slumpmässig.

