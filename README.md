Forum internetowe o informatyce na projekt zaliczeniowy. 

Konfiguracja:
Konfigurację można dokonać w pliku /engine/config.php, znajdują się tam dane logowania do MySQL
oraz konfiguracja strony.
Ważne aby baza danych nazywała się „forum”.

Strony:
/admin.php – Dostęp tylko dla Moderatorów i Administratorów
/index.php – Strona główna
/topic.php – Służy do wyświetlania i dodawania Tematów.
/delete.php – Służy do usuwania kategorii, subkategorii, tematów, oraz postów.
/register.php – Służy do rejestracji
/login.php – Służy do wywołania przez AJAX z danymi do logowania jeżeli jest poprawne zwara 1
jeżeli nie zwaca 0.

Hasła:
Login: Administrator Hasło: haslo1 – Grupa Administrator
Login: Moderator Hasło: haslo1 – Grupa Moderator
Aby uzyskać dostęp do zwyklego użytkownika trzeba najpierw stworzyć konto.
Uprawinienia:
Administrator:
Może dodawać kategorię, subkategorię, temat, post.
Może usunąć kategorię, subkategorię, temat, post, oraz posty innych użytkowników.
Moderator:
Może dodawać kategorię, subkategorię, temat, post.
Może usuwać subkategorię, tematy i posty, oraz posty innych użytkowników
Użytkownik:
Może dodawać tematy oraz posty
Może usunąć własne posty.
O projekcie:

- Została oddzielona warstwa HTML od PHP, stworzono do tego specjalną klasę w folderze class o
nazwie Template.class.php
- Logowanie opiera się na jQuery dlatego forum do poprawnego działania wymaga internetu (jQuery
pobierane jest z serwera google)
