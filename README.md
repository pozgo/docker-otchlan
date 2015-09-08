# Otchlan Docker image

### About Otchlan Game
Początki Otchłani sięgają 1998 roku, gdy dwóch nastolatków, zainteresowanych MUDami postanowiło napisać coś "takiego jak MUD, ale dla jednej osoby". Wysłanie początków pracy do grudniowego CD-ACTION w 1999 roku, byłem strzałem w dziesiątkę - gra spotkała się z ciepłym przyjęciem, i prace nad nią szły dalej. Parę lat później przy tworzeniu gry pozostał sam Weq, który po wielu dłuższych i krótszych przerwach doprowadził ją do stanu obecnego. Grę można ściągnąć za darmo, jest to wersja pełna (a nie demo) i można ją ukończyć ciesząc się kompletnym światem Otchłani. Także nie czekaj - ściągaj, instaluj i daj się wciągnąć w przygodę w królestwie Altmandu.  

### Odpalanie
Aby odpalic gre wystarczy uzyc komendy ponizej.  

    docker run \
      -ti \
      polinux/otchlan  

Aby miec dostep do zapisu z gry odpal gre z ponizsza komenda.
(stworz folder `/otchlan` w `$HOME`)

`mkdir -p ~/otchlan/zapisy`

    docker run \
      -ti \
      -v ~/otchlan/zapisy:/otchlan/zapisy \
      polinux/otchlan
