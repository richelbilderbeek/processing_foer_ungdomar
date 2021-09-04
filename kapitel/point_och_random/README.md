# `point` och `random`

I den här lektionen lär vi oss

 * vilka pixlar är
 * hur pixlarna sitter på en skärm
 * hur man ritar prickar
 * hur man gör slumpmässiga saker

![Slutuppgift](PointFinal -uppgift.png)

## `point` och` random ': intro

Pixlar är rutorna som utgör din skärm.

![Solglasögon](EmojiSunglasses.png) | Pixel = en ruta på skärmen
: -----------------: |: ---------------------- ------- :

Ju fler pixlar skärmen har desto skarpare ser bilden ut.
Du kan se det bra med gamla spel: de har färre pixlar:

![Super Mario Bros 1](NES_Super_Mario_Bros.png)

## `point` och `random`: uppgift 1

Kör följande kod:

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (150, 100);
}
''

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----: |: ---------------------------------- ------- ---:
`punkt (150, 100);` | 'Kära dator, rita en prick på pixeln som är tvåhundra pixlar till höger och hundra femtio pixlar nedåt'
`punkt (150, 100);` | 'Kära dator, rita en prick på koordinat' (150, 100) ''

## `point` och `random`: lösning 1

!['punkt' och 'slumpmässig': lösning 1](point_och_random_1.png)

\sidbrytning

## `point` och `random`: uppgift 2

!['punkt' och 'slumpmässig': uppgift 2](point_och_random_2.png)

Rita en andra prick mellan den första och den övre delen av fönstret.

## `point` och `random`: lösning 2

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (150, 100);
  punkt (150, 50);
}
''

## `point` och `random`: uppgift 3

Den första pixeln är exakt i mitten. Med andra ord, halva bredden på fönstret och
på halva skärmens höjd. Ändra 'punkt (150,100);' till något med 'bredd' och 'höjd'.

## `point` och `random`: lösning 3

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (bredd / 2, höjd / 2);
  punkt (150, 50);
}
''

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`width / 2` | 'Dear computer, ange här bredden på fönstret, dividerat med två'

## `point` och `random`: uppgift 4

Den andra pixeln är

  * på halva fönstret
  * på en fjärdedel av skärmens höjd

Ändra 'punkt (150, 50);' till något med 'bredd' och 'höjd'.

## `point` och `random`: lösning 4

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (bredd / 2, höjd / 2);
  punkt (bredd / 2, höjd / 4);
}
''

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`höjd / 4` | 'Kära dator, ange här fönstrets höjd, dividerat med fyra'


## `point` och `random`: uppgift 5

!['punkt' och 'slumpmässig': uppgift 5](point_och_random_5.png)

Rita en ny pixel i skärmens övre vänstra hörn.

\sidbrytning

## `point` och `random`: lösning 5

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (bredd / 2, höjd / 2);
  punkt (bredd / 2, höjd / 4);
  punkt (0, 0);
}
''

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`punkt (0,0);` | 'Kära dator, rita en prick i det övre vänstra hörnet'
`punkt (0,0);` | 'Kära dator, rita en prick på koordinat' (0, 0) ''

\sidbrytning

## `point` och `random`: uppgift 6

!['punkt' och 'slumpmässig': uppgift 6](point_och_random_6.png)

Rita en ny pixel, längst upp till höger på skärmen.
Använd `bredd - 1 'som det första talet inom parentes för` punkt`.

## `point` och `random`: lösning 6

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (bredd / 2, höjd / 2);
  punkt (bredd / 2, höjd / 4);
  punkt (0, 0);
  punkt (bredd - 1, 0);
}
''

## `point` och `random`: uppgift 7

!['punkt' och 'slumpmässig': uppgift 7](point_och_random_7.png)

Rita två pixlar i de nedre två hörnen. Använd 'bredd - 1' och 'höjd - 1' på rätt ställen.

\sidbrytning

## `point` och `random`: lösning 7

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (bredd / 2, höjd / 2);
  punkt (bredd / 2, höjd / 4);
  punkt (0, 0);
  punkt (bredd - 1, 0);
  punkt (0, höjd - 1);
  punkt (bredd - 1, höjd - 1);
}
''

## `point` och `random`: uppgift 8

Kör den här koden:

`` c ++
void setup ()
{
  storlek (300, 200);
}

void draw ()
{
  punkt (slumpmässig (300), 100);
}
''

Vad ser du?

\sidbrytning

## `point` och `random`: lösning 8

!['punkt' och 'slumpmässig': lösning 8](point_och_random_8.png)

Du ser att prickar dras på slumpmässiga platser, men alltid på samma höjd.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
: -----------------: |: ---------------------- ------- :
`random (300)` | 'Kära dator, välj ett slumpmässigt tal från noll till tre hundra'



Translation types
Text translation
Source text
674 / 5000
Translation results
## `point` och `random`: uppgift 9

!['punkt' och 'slumpmässig': uppgift 9](point_och_random_9.png)

Gör fönstret 400 pixlar brett och 100 pixlar högt. Istället för 'slumpmässig (300)', använd något med 'slumpmässig' och 'bredd'.
Håll raden med punkter på hälften av skärmens höjd.

## `point` och `random`: lösning 9

`` c ++
void setup ()
{
   storlek (400, 100);
}

void draw ()
{
   punkt (slumpmässig (bredd), höjd / 2);
}
''

## `point` och` random ': final command

![Slutuppgift](PointFinal -uppgift.png)

Låt datorn rita prickar slumpmässigt genom fönstret.

