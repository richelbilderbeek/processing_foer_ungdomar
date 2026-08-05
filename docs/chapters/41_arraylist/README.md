# 41. ArrayList

Före vi ska skapar våra egna klasser, ska vi ser hur man använder den.

## 41.1. Ett programm

Vi ska använda en av den nyttigaste klasser som finns: `ArrayList`.
För att demonstrera sin nytta, använder vi det här programmet:

```processing
float[] xs;

void setup() 
{
  size(320, 200);
  xs = new float[10];
  for (int i=0; i<10; ++i)
  {
    xs[i] = 160;
  }
}

void draw()
{
  for (int i=0; i<10; ++i)
  {
    xs[i] += random(-1,1);
    ellipse(xs[i], height / 2, 10, 10);
  }
}
```

Vad gör programmet? Vad hette tekniken igen för att använder mycket värder?

### 41.1. Svar

Den visar tre bollar som åker slumpmässigt till vänster eller höger.
Tekniken är att använda en array.

## 41.2. Saker att förbättra

Det finns några saker att förbättra.

Den första sak som kan blir förbättrad har att göra
med hur mycket ändringar är nödvändigt för att ändra mängd av bollar.

På hur mycket ställe måste du nu skriva hur mycket bollar det finns?
Hur ofta vore bäst?

### 41.2. Svar

Det finns nu tre ställe var man skriver ner hur mycket bollar som finns.
Bäst är att det bara finns en.

## 41.3. En `ArrayList`

I din webbläsare, sök på 'Processing ArrayList'.

![I din webbläsare, sök på 'Processing ArrayList'](search_arraylist.png)

Antagligen din första fynd är redan den Processing 'Reference Guide'
på [`https://processing.org/reference/ArrayList.html`](https://processing.org/reference/ArrayList.html).

![Den Processing `ArrayList` referens](arraylist_reference.png)

Läs den första paragraf av 'Description'. I dina ord, vad är en `ArrayList`?

### 41.3. Svar

En `ArrayList` är en klass som kan behålla noll, en, eller fler saker,
till exempel `float`s.

Dokumentation säger att vi kan använda `FloatList`,
och vi gör så.

## 41.4. En `FloatList`

I din webbläsare, sök på 'Processing FloatList'
och hittar en likadant sida.

Läs den text i 'Description'. I dina ord, vad är en `FloatList`?

### 41.4. Svar

En `FloatList` är en klass som kan behålla noll, en, eller fler `float`s.

## 41.5. Att skapa en `FloatList`

Använder den exempelkod i dokumentationen för att
andra din kod till att använda en `ArrayList`.

### 41.4 Svar

```processing

```






