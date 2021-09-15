# `linje` och` stroke '

! [Moria, ett av de allra första spelen med färg] (LineStrokeMoria.png)

I den här lektionen kommer vi att lära oss att rita färgade linjer.

\pagebreak

## `rad` och` stroke ': kommando 1

Kör den här koden:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  line(0, 100, 300, 200);
}
```

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: -----: |: ---------------------------------- ------- ---:
`rad (0, 100, 300, 200);` | 'Kära dator, dra en linje från `(0, 100)` till `(300, 200)`.'

! [Solglasögon] (EmojiSunglasses.png) | `(100, 200)` är pixeln som sitter 100 pixlar till vänster och 200 pixlar under skärmens övre vänstra hörn
: -----------------: |: ---------------------- ------- :

\pagebreak

## `line` och` stroke ': lösning 1

! [Lösning 1] (LineStroke1Explanation.png)

\pagebreak

## `rad` och` stroke ': kommando 2

! [Kommando 2] (LineStroke2.png)

Låt inte linjen gå till nedre högra hörnet, utan till det övre högra hörnet.

\pagebreak

\pagebreak

## `line` och` stroke ': lösning 2

```c++
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

## `rad` och` stroke ': kommando 3

Låt inte linjen börja vänster i mitten, utan börja längst ner till vänster

! [Kommando 3] (LineStroke3.png)

\pagebreak

## `line` och` stroke ': lösning 3

```c++
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

## `rad` och` stroke ': kommando 4

Låt linjen gå från nedre vänster till överst till höger, men använd nu "bredd" och "höjd"

! [Kommando 4] (LineStroke4.png)

\pagebreak

## `rad` och` stroke ': lösning 4

```c++
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

## `rad` och` stroke ': kommando 5

! [Kommando 5] (LineStroke5.png)

Starta linjen till vänster i valfri höjd. Du gör detta med "slumpmässigt"

\pagebreak

\pagebreak

## `rad` och` stroke ': lösning 5

```c++
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

## `rad` och` stroke ': kommando 6

! [Kommando 6] (LineStroke6.png)

Låt linjen nu också sluta till höger i godtycklig höjd.

\pagebreak

## `line` och` stroke ': lösning 6

```c++
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

## `rad` och` stroke ': kommando 7

! [Kommando 7] (LineStroke7.png)

Innan `rad` sätt linjen` slag (255, 0, 0); `

\pagebreak

## `line` och` stroke ': lösning 7

```c++
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

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: -----: |: ---------------------------------- ------- ---:
`stroke (255, 0, 0);` | 'Kära dator, gör linjerna röda.'
`stroke (255, 0, 0);` | 'Kära dator, gör linjerna helt röda, utan grönt och utan blått.'

\pagebreak

## `rad` och` stroke ': kommando 8

! [Kommando 8] (LineStroke8.png)

Gör linjerna cyan nu. Titta på figuren 'Färgcirkel' hur du gör det

! [Färgcirkel] (AdditiveColor3.png)

\pagebreak

## `line` och` stroke ': lösning 8

```c++
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

! [Dator] (EmojiComputer.png) | ! [Smiley] (EmojiSmiley.png)
: -----: |: ---------------------------------- ------- ---:
`stroke (0, 255, 255);` | 'Kära dator, färga linjerna cyan.'
`stroke (0, 255, 255);` | 'Kära dator, färga linjerna utan rött, fullt grönt och helt blått.'

\pagebreak

## `rad` och` stroke ': kommando 9

! [Kommando 9] (LineStroke9.png)

Låt nu det röda värdet bli valfritt tal från 0 till 256.


\pagebreak

## `line` och` stroke ': lösning 9

```c++
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

## `line` och` stroke ': sista kommandot

! [Slutkommando `rad` och` stroke '] (LineStrokeFinal command.png)

Låt nu raderna börja och sluta på slumpmässiga platser. Linjefärgen måste
var också slumpmässig.

