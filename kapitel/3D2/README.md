#3D Lektion 2: Styr bollen

I den här lektionen ska vi göra en 3D-bollrörelse.

\sidbrytning

## 3D 2: uppgift 1

Skriv denna kod över:

```c++
float x = 0;

void setup()
{
  storlek (300, 200, P3D);
  noStroke();
  x = bredd / 2;
}

void draw()
{
  bakgrund(255, 255, 255);
  ljus();
  translate(x, höjd / 2, 0);
  sfär(20);
  om (knapptryckt)
  {
    om (nyckel == 'a') x = x - 1;
    if (nyckel == 'd') x = x + 1;
  }
}
```

Vad ser du?

\sidbrytning

## 3D 2: lösning 1

![3D 2: lösning 1](3D2_2.png)

Du ser en boll som du kan gå till med `a` och `d`
kan flytta åt vänster och höger.

Om man tittar noga kan man se att den vitaste delen av bollen också byter plats.

\sidbrytning

## 3D 2: uppgift 2

 * Se till att bollen nu också kan gå upp och ner, med tangenterna `w` och `s`
 * Skapa en ny variabel, t.ex. "y", med initialvärdet "höjd / 2".

![3D 2: kommando 2](3D2_2.png)

\sidbrytning

## 3D 2: lösning 2

```c++
float x = 0;
flytande y = 0;

void setup()
{
  storlek (300, 200, P3D);
  noStroke();
}

void draw()
{
  bakgrund(255, 255, 255);
  ljus();
  translate(x, y, 0);
  sfär(20);
  x = x + 1;
  y = y + 1;
}
```

\sidbrytning

## 3D 2: Slutlig uppgift

 * Få bollen att gå fram och tillbaka med tangenterna `q` och `e`
 * Skapa en ny variabel, t.ex. "z", med initialt värde noll

Det här kan se annorlunda ut än du förväntar dig!

![3D 2: uppgift 3](3D2_End assignment.png)
