# Sinus och cosinus 3: solsystem

I den här lektionen ska vi använda en sinus och cosinus för att skapa ett solsystem

![Chaos Engine](ChaosEngine.jpg)

\sidbrytning

## Sinus och Cosinus 3: Kommando 1

Skriv denna kod över:

```c++
void setup()
{
  storlek (300, 200);
}

void draw()
{
  bakgrund(255, 255, 255);
  final float x_zon = width / 2;
  final float y_zon = höjd / 2;
  ellips(x_sun, y_sun, 20, 20);
}
```

Vad ser du?

\sidbrytning

## Sinus och cosinus 3: lösning 1

![Sinus och cosinus 3: lösning 1](SinusEnCosine3_1.png)

Du ser en cirkel i mitten: solen!

\sidbrytning

## Sinus och Cosinus 3: Kommando 2

 * Skapa två nya variabler: `x_earth` och `y_earth` (inom `draw`-funktionen)
 * Värdet på "x_earth" är värdet på "x_sun" plus 50
 * Värdet på "y_earth" är värdet på "y_sun" plus 50
 * Rita jorden som en cirkel med en bredd och höjd på 10 pixlar


![Sinus och cosinus 3: kommando 2](SinusEnCosine3_2.png)

\sidbrytning

## Sinus och cosinus 3: lösning 2

```c++
void setup()
{
  storlek (300, 200);
}

void draw()
{
  bakgrund(255, 255, 255);
  final float x_zon = width / 2;
  final float y_zon = höjd / 2;
  ellips(x_sun, y_sun, 20, 20);
  final float x_earth = x_sun + 50;
  final float y_earth = y_sun + 50;
  ellips(x_earth, y_earth, 10, 10);
}
```

\sidbrytning

## Sinus och Cosinus 3: Kommando 3

 * Skapa en ny variabel `angle_earth`, lägg den högst upp
 * Gör `angle_earth` mer i slutet av `draw`-funktionen. Använd ett värde som "0,01".
 * Gör "x_earth" nu "x_sun" plus femtio gånger sinus för "angle_earth"

Vad ser du?

\sidbrytning

## Sinus och cosinus 3: lösning 3

Du ser nu jorden gå fram och tillbaka

![Sinus och cosinus 3: kommando 2](SinusEnCosine3_3.png)

```c++
float angle_ground = 0;

void setup()
{
  storlek (300, 200);
}

void draw()
{
  bakgrund(255, 255, 255);
  final float x_zon = width / 2;
  final float y_zon = höjd / 2;
  ellips(x_sun, y_sun, 20, 20);
  final float x_earth = x_sun + (50 * sin(angle_earth));
  final float y_earth = y_sun + 50;
  ellips(x_earth, y_earth, 10, 10);
  angle_ground += 0,01;
}
```

\sidbrytning

## Sinus och cosinus 3: uppgift 4

 * Se till att jorden går runt solen nu
 * Gör nu `y_earth` `y_sun` plus femtio gånger cosinus för `angle_earth`

![Sinus och cosinus 3: kommando 4](SinusEnCosine3_4.png)


\sidbrytning

## Sinus och Cosinus 3: Kommando 5

 * Skapa två nya variabler: `x_maan` och `y_maan` (inom `draw`-funktionen)
 * Värdet på "x_moon" är värdet på "x_earth" plus 10
 * Värdet på "y_moon" är värdet på "y_earth" plus 10
 * Rita månen som en cirkel med en bredd och höjd på 5 pixlar

![Sinus och cosinus 3: kommando 5](SinusEnCosine3_5.png)

\sidbrytning

## Sinus och cosinus 3: Slutuppgift

Låt månen kretsa runt jorden!

 * Skapa en ny variabel `angle_moon`, lägg den högst upp
 * Gör `angle_moon` mer i slutet av `draw`-funktionen. Använd ett värde som "0.1".
 * Gör "x_moon" nu "x_earth" plus tio gånger sinus för "angle_earth"
 * Samma för "y_moon".

![Sinus och cosinus 3: Slutuppgift](SinusEnCosinus3_Endcommand.png)
