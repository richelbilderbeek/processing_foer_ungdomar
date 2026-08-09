# 44. Klasser 3

Klasser är inte bara ett sätt att bunta data,
eller ett sätt att uttrycka hur din data beter sig,
man kan ger rätt ansvar till den rätta koden.
Under den här lektion skapar vi en sådant klass.

## 44.1. Att använder en `Game` klass

Här har vi som använder en `Game` klass:

```processing bullet_hell.pde
Game g;

void setup()
{
  size(320, 200);
  g = new Game();
}

void draw()
{
  g.tick();
}
```

Memlemsfunktionen `tick` är ett vanligt användt namn och betyder 'gör
allt för att går till nästa bild'.

Tror du att den här koden är bra?

### 44.1. Svar

Ja, vi kann absolut säga att koden är bra! Koden är bra för att
det är klart vad hander, *även* om vi inte vet exakt vad det är.

En sak vi kan diskutera är namnet `tick`. On dina lagmedlemmar
inte förstå den termen, man kan absolute använda `process_frame`,
`do_one_frame`, `go_to_next_frame`, usv.

Den enstaka 'Processing' kommando `size` är där för att den måste
vara där av Processing.

Det är ett bra ide att börjar din kod som här: den försäkrar att din
**arkitektur** är bra. Om du börjar stort först och framför detaljerna
till sist, blir din kod bättre att första och att felsöka.

## 44.2. Början av `Game` klassen

Här har vi den första koden av `Game`:

```processing game.pde
class Game
{
  ArrayList<Bullet> bullets;
  Game()
  {
    bullets = new ArrayList();
    for (int i = 0; i != 10; ++i) 
    {
      bullets.add(create_random_bullet());
    }
  }
  void tick()
  {
    move_bullets();
    remove_bullets_that_went_off_screen();
    draw_bullets();
  }
  void move_bullets() {} // TODO
  void remove_bullets_that_went_off_screen() {} // TODO
  void draw_bullets() {} // TODO
};
```

Den rader med `TODO` ('att göra') är så kallada 'stubs' (i engelska, ingen
svensk översättning), som betyder det är en småbörjan av arbetet på den här
koden, men är inte klart änna. Stubs är bra för att får kod att köra,
även om den inte är färdigt än.

Tror du att den här koden är bra? 

### 44.2. Svar

Ja, vi kann absolut säga att koden är bra! Koden är bra för att
det är klart vad hander, *även* om vi inte vet exakt vad det är.

## 44.3. Att skapa `create_random_bullet`

Funktionen `create_random_bullet` ska ser ut som här:

```processing
Bullet create_random_bullet()
{
  Bullet b = new Bullet();
  // Make the bullet have a random position and speed here
  return b
}
```

Skapa en klass `Bullet`. Du får bestämma sina medlemsvariabler.
Skapa en kula med en slumpmässigt plats och hastighet
i `create_random_bullet`.

### 44.3. Svar

Här är en möjlighet:

```processing bullet.pde
class Bullet
{
  float x;
  float y;
  float dx;
  float dy;
};


Bullet create_random_bullet()
{
  Bullet b = new Bullet();
  b.x = random(width);
  b.y = random(height);
  b.dx = random(-10.0, 10.0);
  b.dy = random(-10.0, 10.0);
  return b;
}
```

- koden är i en flik kallad `bullet`, dvs. i en fil kallad `bullet.pde`
- En kula har en x-koordinat kallad `x`, y-koordinat kallad `y`,
  en hastighet åt vänster kallad `dx` (för delta/ändring i x koordinatet) 
  och en hastighet åt nere kallad `dy` (för delta/ändring i y koordinatet)
- klassen `Bullet` har igen konstruktor
- `create_random_bullet` är också i filen `bullet.pde`. Det är en naturligt
  plats för den koden, men du får har dem på en annat ställe också:
  programmet funkar endå!

## 44.4. Den tuffaste medlemsfunktion

Den tuffaste medlemsfunktion av `Game` är
absolut `remove_bullets_that_went_off_screen`:

```processing
class Game
{
  //...
  void remove_bullets_that_went_off_screen()
  {
    //...
  }
};
```

Den här medlemsfunktionen tar ur `Bullet`s från den `ArrayList`
om dem är ur fönstret. Hur göt man detta?

Kolla i Processings `ArrayList` dokumentation och hittar den
medlemsfunktionen av `ArrayList` för att tar bort en element.

### 44.4. Svar

På [`https://processing.org/reference/ArrayList.html`](https://processing.org/reference/ArrayList.html)
kan du läsa att medlemsfunktionen heter `remove` och tar en ingångsargument:
vilket ställe i `ArrayList`en.

## 44.5. Är en kula i fönstret?

Före vi ska radera kulor som är inte i fönstret,
behöver vi en funktion som kan säger om en kula är i fönstret.

Skriv en funktion kallad `is_on_screen`
som bestämmer om att en kula är i fönstret.

### 44.5. Svar

Här är en av den möjliga sätt:

```processing
boolean is_on_screen(final Bullet b)
{
  return b.x >= 0 && b.x < width && b.y > 0 && b.y < height;
}
```

- `boolean` är en datatyp some är `true` eller `false`, dvs något som
  är sant eller falskt. Om du har användt en `int` är detta gott nog
- Att spara den kod i `bullet.pde` är smidigaste, men du kan
  har den hör koden var som helst.

## 44.6. Att radera kulor

Här är ett **felaktig** sätt för att radera kulorna:

```processing
class Game
{
  //...
  void remove_bullets_that_went_off_screen()
  {
    for (int i = 0; i != bullets.size(); ++i) // NO!!!
    {
      if (!is_on_screen(bullets.get(i)) bullets.erase(i); // NO!!!
    } 
  }
};
```

För att ser felet, använder den här kod ändå och får programmet att
köra. Ändra `create_random_bullet` så att den också skapar kulor som är
**ej** i fönstret.

Vilket felmeldning får du?
Om du fär ingen, skapar mer kulor som är ej i fönstret.

### 44.6. Svar

Du kan vara så galen som helst med att ändra `create_random_bullet`.
Här är en möjlighet:

```processing
Bullet create_random_bullet()
{
  Bullet b = new Bullet();
  b.x = random(-width, width);
  b.y = random(-height, height);
  b.dx = random(-10.0, 10.0);
  b.dy = random(-10.0, 10.0);
  return b;
}
```

Om du gör det så här, du får en felmeldning likadant här:

```processing
IndexOutOfBoundsException: Index 2 out of bounds for length 1
```

## 44.7. `IndexOutOfBoundsException`

Felmeldningen du just fick betyder att du har läst en element i
`ArrayList` som inte finns.

Hur tror du att det är möjligt? Hints: vad händer när den sista kula
blir raderat?

### 44.7. Svar

Det är möjligt, för att nar du raderar en kula, blir `ArrayList`en
mindre.

Här har vi koden igen:

```
for (int i = 0; i != bullets.size(); ++i) // NO!!!
{
  if (!is_on_screen(bullets.get(i)) bullets.erase(i); // NO!!!
} 
```

Nu ska vi gör igenom detta med antagningen att vi har bara en kula:

- Den första gång i `for` slingan, är `i` likadant `0`,
  och `bullets.size()` lika med `1`. För att dem är olika, vi går
  in i `for` slingan.
- Inne i `for` slingan radera vi den första och ensta kula.
- Nu är vi tillbaka i `for` slingan igen. `i` blir ökad met en,
  så `i` är nu `1`. `bullets.size()` är nu `0`.
  För att dem är olika, vi går in i `for` slingan.
- Ojdå, då gör vi `bullets.get(i)` med `i` lika `1` för en tomt
  `ArrayList`. Det är fel!

## 44.8. Slutuppgift

Det finns flera lösningar för detta problem:

- Att använda `i < bullets.size()` istället
- Att efter en kula har blir raderat, sänk `i` med `1`.
- Att räkna `i` **nere**, från `bullets.size() - 1` till (och inklusive) `0`

Får koden att funkar. Visar någonstant hur myket kular det finns kvar
under loppet av programmet.
