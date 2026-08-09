# 43. Klasser 2

Klasser är inte bara ett sätt att bunta data,
den kan också vara ett sätt att uttrycka hur din data beter sig.
Under den här lektion skapar vi en sådant klass.

## 43.1. Att använder en `Health` klass

I många spel har en spelar en värde för sin hälsa:

```processing
float health = 100;

void setup()
{
  size(320, 200);
}

void draw() 
{
  rect(0, 0, health, 10);
}
```

I den här fall är hälsan en procent, dvs att noll procent betyder att
spelaren är medsvetslös och ett hundra procent betyder
att spelaren är helt frisk.
Vi inte använder lägre värd än noll procent, eller högre värd än
ett hundra procent.

Problemet är att ingen stoppar oss att skriva den här:

```processing
health = 1234;
health = -1234;
```

Det är ett problem, för att vi vill behålla översiktet av vår program;
vi vill vara (nästan) säkert att hälsan har ett värd mellan
(och inklusive) noll och (och inklusive) ett hundra.

Första steg är att skapa en `Health` klass, med medlemsvariabel `value`
i en fil kallad `health.pde`. Gör sådant :+1:

### 43.1. Svar

Det finns flera sätt.

Här är första sätt, utan en konstruktor:


```processing health.pde
class Health
{
  float value = 100;
};
```

```processing 43_classes.pde
Health health = new Health();

void setup()
{
  size(320, 200);
}
void draw() 
{
  rect(0, 0, health.value, 10);
}
```

En annat sätt är att använda en konstruktor:

```processing health.pde
class Health
{
  float value;
  Health(float any_value)
  {
    value = any_value;
  }
};
```

```processing 43_classes.pde
Health health = new Health(100);

//...
```

Vi använder den sätt med en konstruktor, för att den gör det lättare
att söka del.

Forfarande stoppar inget oss at har ett hälsovärde av 1234 procent.

## 43.2. Felsökning

Vi har redan använt den här funktionen:

```processing
void show_error(final String e)
{
  println("ERROR: " + e);
  exit();
}
```

Lägg till den här funktionen till din kod och använder den i
kontruktorn av `Health`: när `health` blir sätt till mindre än
noll, eller mer än ett hundra, måsta program avbrytas.

### 43.2. Svar

```processing health.pde
class Health
{
  float value;
  Health(float any_value)
  {
    if (any_value < 0) show_error("Health less than 0%");
    if (any_value > 100) show_error("Health more than 100%");
    value = any_value;
  }
};
```

```processing 43_classes.pde
Health health = new Health(100);

void show_error(final String e)
{
  println("ERROR: " + e);
  exit();
}

void setup()
{
  size(320, 200);
}
void draw() 
{
  rect(0, 0, health.value, 10);
}
```

Du kan placera `show_error` i båda fil: du får bestämma här!

Nu kan du skriva säkra klasser, som kollar om sina värd är korrekta!

## 43.3. Slutuppgift

Tar en spel av dig själva och har åtminstone en klass
some checker sina ingångsargument. Om ingångsargumenter är felaktiga,
programma måste avbrytas med en snäll felmeldning.

