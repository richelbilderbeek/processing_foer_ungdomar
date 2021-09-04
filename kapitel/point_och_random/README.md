# `point` och `random`

I den här lektionen lär vi oss

 * vilka pixlar är
 * hur pixlarna sitter på en skärm
 * hur man ritar prickar
 * hur man gör slumpmässiga saker

![Slutuppgift](point_och_random_slutuppgift.png)

## `point` och` random ': intro

Pixlar är rutorna som utgör din skärm.

![Solglasögon](EmojiSunglasses.png) | Pixel = en ruta på skärmen
:-----------------:|:-----------------------------:

Ju fler pixlar skärmen har desto skarpare ser bilden ut.
Du kan se det bra med gamla spel: de har färre pixlar:

![Super Mario Bros 1](NES_Super_Mario_Bros.png)

## `point` och `random`: uppgift 1

Kör följande kod:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(150, 100);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----:|:--------------------------------------------:
`punkt (150, 100);` | 'Kära dator, rita en prick på pixeln som är tvåhundra pixlar till höger och hundra femtio pixlar nedåt'
`punkt (150, 100);` | 'Kära dator, rita en prick på koordinat' (150, 100) ''

## `point` och `random`: lösning 1

![`point` och `random`: lösning 1](point_och_random_1.png)

\pagebreak

## `point` och `random`: uppgift 2

![`point` och `random`: uppgift 2](point_och_random_2.png)

Rita en andra prick mellan den första och den övre delen av fönstret.

## `point` och `random`: lösning 2

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(150, 100);
  point(150, 50);
}
```

## `point` och `random`: uppgift 3

Den första pixeln är exakt i mitten. Med andra ord, halva bredden på fönstret och
på halva skärmens höjd. Ändra 'punkt (150,100);' till något med 'bredd' och 'höjd'.

## `point` och `random`: lösning 3

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(150, 50);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:----------------------------- :
`width / 2` | 'Dear computer, ange här bredden på fönstret, dividerat med två'

## `point` och `random`: uppgift 4

Den andra pixeln är

  * på halva fönstret
  * på en fjärdedel av skärmens höjd

Ändra 'punkt (150, 50);' till något med 'bredd' och 'höjd'.

## `point` och `random`: lösning 4

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:----------------------------- :
`höjd / 4` | 'Kära dator, ange här fönstrets höjd, dividerat med fyra'


## `point` och `random`: uppgift 5

![`point` och `random`: uppgift 5](point_och_random_5.png)

Rita en ny pixel i skärmens övre vänstra hörn.

\pagebreak

## `point` och `random`: lösning 5

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
}
```

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:----------------------------- :
`punkt (0,0);` | 'Kära dator, rita en prick i det övre vänstra hörnet'
`punkt (0,0);` | 'Kära dator, rita en prick på koordinat' (0, 0) ''

\pagebreak

## `point` och `random`: uppgift 6

![`point` och `random`: uppgift 6](point_och_random_6.png)

Rita en ny pixel, längst upp till höger på skärmen.
Använd `bredd - 1 'som det första talet inom parentes för` punkt`.

## `point` och `random`: lösning 6

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
  point(width - 1, 0);
}
``` 

## `point` och `random`: uppgift 7

![`point` och `random`: uppgift 7](point_och_random_7.png)

Rita två pixlar i de nedre två hörnen. Använd 'bredd - 1' och 'höjd - 1' på rätt ställen.

\pagebreak

## `point` och `random`: lösning 7

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(width / 2, height / 2);
  point(width / 2, height / 4);
  point(0, 0);
  point(width - 1, 0);
  point(0, height - 1);
  point(width - 1, height - 1);
}
```

## `point` och `random`: uppgift 8

Kör den här koden:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  point(random(300), 100);
}
```

Vad ser du?

\pagebreak

## `point` och `random`: lösning 8

![`point` och `random`: lösning 8](point_och_random_8.png)

Du ser att prickar dras på slumpmässiga platser, men alltid på samma höjd.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:----------------------------- :
`random (300)` | 'Kära dator, välj ett slumpmässigt tal från noll till tre hundra'

## `point` och `random`: uppgift 9

![`point` och `random`: uppgift 9](point_och_random_9.png)

```c++
void setup()
{
  size(400, 100);
}

void draw()
{
  point(random(width), height / 2);
}
```

## `point` och` random ': final command

![Slutuppgift](point_och_random_slutuppgift.png)

Låt datorn rita prickar slumpmässigt genom fönstret.

