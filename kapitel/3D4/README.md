#3D Lektion 4: Belysning

I den här lektionen ska vi exponera en 3D-boll.

\sidbrytning

## 3D 4: uppgift 1

Skriv denna kod över:

```c++
float light_direction_x = 1;

void setup()
{
  storlek (300, 200, P3D);
  noStroke();
}

void draw()
{
  bakgrund(255, 255, 255);
  directionalLight(255, 255, 255, light_direction_x, 0, 0);
  translate(width / 2, height / 2, 0);
  sfär(50);
}
```

Vad ser du?

\sidbrytning

## 3D 4: lösning 1

![3D 4: lösning 1](3D4_1.png)

Du kommer att se en boll med ett vitt ljus på.

\sidbrytning

## 3D 4: uppgift 2

 * Se till att `light_direction_x` kan bli lägre och högre, med tangenterna `w` och `s`

Observera: endast tre positioner är möjliga!

![3D 4: kommando 2](3D4_2.png)

\sidbrytning

## 3D 4: lösning 2

```c++
float light_direction_x = 1;

void setup()
{
  storlek (300, 200, P3D);
  noStroke();
}

void draw()
{
  bakgrund(255, 255, 255);
  directionalLight(255, 255, 255, light_direction_x, 0, 0);
  translate(width / 2, height / 2, 0);
  sfär(50);
  om (knapptryckt)
  {
    om (nyckel == 'a') light_direction_x = light_direction_x - 1;
    if (nyckel == 'd') light_direction_x = light_direction_x + 1;
  }
}
```

\sidbrytning

## 3D 3: uppgift 3

 * Ställ in ljusets y-riktning till ett.
 * Gör färgen på ljusröd

Obs: endast fem positioner är möjliga!

![3D 4: kommando 3](3D4_3.png)

\sidbrytning

## 3D 4: lösning 3

```c++
float light_direction_x = 1;

void setup()
{
  storlek (300, 200, P3D);
  noStroke();
}

void draw()
{
  bakgrund(255, 255, 255);
  directionalLight(255, 0, 0, light_direction_x, 1, 0);
  translate(width / 2, height / 2, 0);
  sfär(50);
  om (knapptryckt)
  {
    om (nyckel == 'a') light_direction_x = light_direction_x - 1;
    if (nyckel == 'd') light_direction_x = light_direction_x + 1;
  }
}
```


\sidbrytning

## 3D 4: Slutlig uppgift

 * Se till att `light_direction_y` kan bli lägre och högre, med tangenterna `w` och `s`
 * Skapa en ny variabel, t.ex. `light_direction_x`, med initialvärdet noll
 * Gör den ljusa färgen grön

Nu kan ljusstrålen rotera fint.

![3D 4: final assignment](3D4_End assignment.png)
