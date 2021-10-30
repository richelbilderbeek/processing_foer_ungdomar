# Arrays2

Ännu fler arrayer!

![Robotron](Robotron.png)

\sidbrytning

## Arrays 2: Kommando 1

Kör den här koden:

```c++
float x1 = 160;
float y1 = 100;

void setup()
{
  storlek (320, 200);
}

void draw()
{
  xl += slumpmässigt(-1,1);
  y1+= slumpmässigt(-1,1);
  ellips(xl, yl, 10, 10);
}
```

\sidbrytning

## Arrays 2: lösning 1

![Arrays 2: solution 1](Arrays2_a_rookparticle.png)

Ha, en rökpartikel.

\sidbrytning

## Arrays 2: Kommando 2

![Arrays 2: assignment 2](Arrays2_twee_rook particles.png)

Gör en andra rökpartikel.

\sidbrytning

## Arrays 2: lösning 2

```c++
float x1 = 160;
float y1 = 100;
float x2 = 160;
float y2 = 100;

void setup()
{
  storlek (320, 200);
}

void draw()
{
  xl += slumpmässigt(-1,1);
  yl+= slumpmässigt(-1,1);
  ellips(xl, yl, 10, 10);
  x2 += slumpmässigt(-1,1);
  y2+= slumpmässigt(-1,1);
  ellips(x2, y2, 10, 10);
}
```

\sidbrytning

## Arrays 2: Kommando 3

Använd nu en array, utan for loop.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`float[] xs`|'Bästa dator, kom ihåg många bråktal som heter `xs`'

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`xs = new float[2]`|'Bästa dator, gör `xs` 2 lådor`'

![Bowtie](EmojiBowtie.png) | Tips: använd "xs[0]" istället för "x1" och "xs[1]" istället för "x2"
:-----------------:|:---------------------- ------- :

\sidbrytning

## Arrays 2: lösning 3

```c++
flyta[] xs;
flyta[] ys;

void setup()
{
  storlek (320, 200);
  xs = ny float[2];
  ys = ny float[2];
  xs[0] = 160;
  xs[1] = 160;
  ys[0] = 100;
  ys[1] = 100;
}

void draw()
{
  xs[0] += slumpmässigt(-1,1);
  ys[0] += slumpmässigt(-1,1);
  ellips(xs[0], ys[0], 10, 10);
  xs[1] += slumpmässigt(-1,1);
  ys[1] += slumpmässigt(-1,1);
  ellips(xs[1], ys[1], 10, 10);
}
```

\sidbrytning

## Arrays 2: Kommando 4

![Arrays 2: kommando 4](Arrays2_three_rook particles.png)

Använd nu för slingor. Gör både arrayen "xs" och "ys" tre lådor stora.

![Dator](EmojiComputer.png) | ![Smiley](EmojiSmiley.png)
:-----------------:|:---------------------- ------- :
`for (int i=0; i<3; ++i) {}`|'Bästa dator, gör vad som står mellan klammerparenteser med värden på `i` från `0` till `3` i steg om `1` '

\sidbrytning

## Arrays 2: lösning 4

```c++
flyta[] xs;
flyta[] ys;

void setup()
{
  storlek (320, 200);
  xs = ny float[3];
  ys = ny flöte[3];
  för (int i=0; i<3; ++i)
  {
    xs[i] = 160;
    ys[i] = 100;
  }
}

void draw()
{
  för (int i=0; i<3; ++i)
  {
    xs[i] += slumpmässigt(-1,1);
    ys[i] += slumpmässigt(-1,1);
    ellips(xs[i], ys[i], 10, 10);
  }
}
```

\sidbrytning

## Arrays 2: Kommando 5

![Arrays 2: kommando 5](Arrays2_vier_rookmaterialen.png)

Varje rökpartikel får nu sin egen röda kantfärg:

 * Skapa en tredje array som heter "rs", för rodnad av rökpartiklarna
 * I "rs" måste siffrorna "0", "64", "128" och "196" finnas
 * Rodnaden ska också bli mer eller mindre
 * Kanten på den första rökpartikeln ska få den första rodnaden. Tips: använd `stroke`

![Bowtie](EmojiBowtie.png) | Tips: använd `stroke` för kantfärgen
:-----------------:|:---------------------- ------- :

\sidbrytning

## Arrays 2: lösning 5

```c++
flyta[] xs;
flyta[] ys;
flyta[] rs; //Röda värden

void setup()
{
  storlek (320, 200);
  xs = ny float[4];
  ys = ny float[4];
  rs = ny flöte[4];
  för (int i=0; i<4; ++i)
  {
    xs[i] = 160;
    ys[i] = 100;
    rs[i] = i * 64;
  }
}

void draw()
{
  för (int i=0; i<4; ++i)
  {
    xs[i] += slumpmässigt(-1,1);
    ys[i] += slumpmässigt(-1,1);
    rs[i] += slumpmässigt(-1,1);
    stroke(rs[i], 0, 0);
    ellips(xs[i], ys[i], 10, 10);
  }
}
```

\sidbrytning

## Arrays 2: Final Command

![Arrays 2: final assignment](Arrays2_final assignment.png)

Gör nu koden så att:

 * det finns 256 rökpartiklar.
 * varje rökpartikel har sitt eget *blå* värde
 * den första rökpartikeln har ett blått värde på noll. Den andra rökpartikeln har ett blått värde på ett. Den tredje rökpartikeln har ett blått värde på två. Och så vidare
 * inte kanten, men fyllningsfärgen är blå

![Bowtie](EmojiBowtie.png) | Tips: använd "fyll" för fyllningsfärgen
:-----------------:|:---------------------- ------- :
