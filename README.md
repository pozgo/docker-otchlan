# Otchlan Docker image

Docker Image zostal zedytowany i uzywa teraz mniejszego obrazu. cala gra zajmuje teraz okolo 15Mb

### About Otchlan Game
Początki Otchłani sięgają 1998 roku, gdy dwóch nastolatków, zainteresowanych MUDami postanowiło napisać coś "takiego jak MUD, ale dla jednej osoby". Wysłanie początków pracy do grudniowego CD-ACTION w 1999 roku, byłem strzałem w dziesiątkę - gra spotkała się z ciepłym przyjęciem, i prace nad nią szły dalej. Parę lat później przy tworzeniu gry pozostał sam Weq, który po wielu dłuższych i krótszych przerwach doprowadził ją do stanu obecnego. Grę można ściągnąć za darmo, jest to wersja pełna (a nie demo) i można ją ukończyć ciesząc się kompletnym światem Otchłani. Także nie czekaj - ściągaj, instaluj i daj się wciągnąć w przygodę w królestwie Altmandu.  

### Odpalanie
Aby odpalic gre wystarczy uzyc komendy ponizej.  

    docker run \
      -ti \
      polinux/otchlan  

Aby miec dostep do zapisu z gry odpal gre z ponizsza komenda.
Zapisy gry beda zapisane w katalogu `save`

    docker run \
      -ti \
      -v ${PWD}/save:/root/.config \
      polinux/otchlan
