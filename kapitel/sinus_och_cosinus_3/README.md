# Sinus och cosinus 3: solsystem

I den här lektionen ska vi använda en sinus och cosinus för att skapa ett solsystem

![Chaos Engine](ChaosEngine.jpg)

\pagebreak

## Sinus och Cosinus 3: uppgift 1

Skriv denna kod över:

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  background(255, 255, 255);
  final float x_sol = width / 2;
  final float y_sol = height / 2;
  ellipse(x_sol, y_sol, 20, 20);
}
```

Vad ser du?

\pagebreak

## Sinus och cosinus 3: lösning 1

![Sinus och cosinus 3: lösning 1](sinus_och_cosinus_3_1.png)

Du ser en cirkel i mitten: solen!

\pagebreak

## Sinus och Cosinus 3: uppgift 2

 * Skapa två nya variabler: `x_jord` och `y_jord` (inom `draw`-funktionen)
 * Värdet på `x_jord` är värdet på `x_sol` plus 50
 * Värdet på `y_jord` är värdet på `y_sol` plus 50
 * Rita jorden som en cirkel med en bredd och höjd på 10 pixlar


![Sinus och cosinus 3: uppgift 2](sinus_och_cosinus_3_2.png)

\pagebreak

## Sinus och cosinus 3: lösning 2

```c++
void setup()
{
  size(300, 200);
}

void draw()
{
  background(255, 255, 255);
  final float x_sol = width / 2;
  final float y_sol = height / 2;
  ellipse(x_sol, y_sol, 20, 20);
  final float x_jord = x_sol + 50;
  final float y_jord = y_sol + 50;
  ellipse(x_jord, y_jord, 10, 10);
}
```

\pagebreak

## Sinus och Cosinus 3: uppgift 3

 * Skapa en ny variabel `vinkel_jord`, lägg den högst upp
 * Gör `vinkel_jord` mer i slutet av `draw`-funktionen. Använd ett värde som `0.01`.
 * Gör `x_jord` nu `x_sol` plus femtio gånger sinus för `vinkel_jord`

Vad ser du?

\pagebreak

## Sinus och cosinus 3: lösning 3

Du ser nu jorden gå fram och tillbaka

![Sinus och cosinus 3: uppgift 2](sinus_och_cosinus_3_3.png)

```c++
float vinkel_jord = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(255, 255, 255);
  final float x_sol = width / 2;
  final float y_sol = height / 2;
  ellipse(x_sol, y_sol, 20, 20);
  final float x_jord = x_sol + (50 * sin(vinkel_jord));
  final float y_jord = y_sol + 50;
  ellipse(x_jord, y_jord, 10, 10);
  vinkel_jord += 0.01;
}
```

\pagebreak

## Sinus och cosinus 3: uppgift 4

 * Se till att jorden går runt solen nu
 * Gör nu `y_jord` `y_sol` plus femtio gånger cosinus för `vinkel_jord`

![Sinus och cosinus 3: uppgift 4](sinus_och_cosinus_3_4.png)


\pagebreak

## Sinus och Cosinus 3: uppgift 5

 * Skapa två nya variabler för månen: `x_man` och `y_man` (inom `draw`-funktionen)
 * Värdet på `x_man` är värdet på `x_jord` plus 10
 * Värdet på `y_man` är värdet på `y_jord` plus 10
 * Rita månen som en cirkel med en bredd och höjd på 5 pixlar

![Sinus och cosinus 3: uppgift 5](sinus_och_cosinus_3_5.png)

\pagebreak

## Sinus och cosinus 3: Slutuppgift

Låt månen kretsa runt jorden!

 * Skapa en ny variabel `vinkel_man`, lägg den högst upp
 * Gör `vinkel_man` mer i slutet av `draw`-funktionen. Använd ett värde som `0.1`.
 * Gör `x_man` nu `x_jord` plus tio gånger sinus för `vinkel_jord`
 * Samma för `y_man`.

![Sinus och cosinus 3: Slutuppgift](sinus_och_cosinus_3_slutuppgift.png)
