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

## 44.2.

Här har vi den förta koden av `Game`:

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
    remove_bullets_that_went_offscreen()
    draw_bullets();
  }
};
```

Tror du att den här koden är bra?

### 44.2. Svar

Ja, vi kann absolut säga att koden är bra! Koden är bra för att
det är klart vad hander, *även* om vi inte vet exakt vad det är.

HIERO
