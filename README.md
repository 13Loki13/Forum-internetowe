Forum internetowe o informatyce na projekt zaliczeniowy. <br/>

Konfiguracja:<br/>
Konfigurację można dokonać w pliku /engine/config.php, znajdują się tam dane logowania do MySQL<br/>
oraz konfiguracja strony.<br/>
Ważne aby baza danych nazywała się „forum”.<br/>

Strony:<br/>
/admin.php – Dostęp tylko dla Moderatorów i Administratorów <br/>
/index.php – Strona główna<br/>
/topic.php – Służy do wyświetlania i dodawania Tematów.<br/>
/delete.php – Służy do usuwania kategorii, subkategorii, tematów, oraz postów.<br/>
/register.php – Służy do rejestracji<br/>
/login.php – Służy do wywołania przez AJAX z danymi do logowania jeżeli jest poprawne zwara 1<br/>
             jeżeli nie zwaca 0.<br/>

Hasła:
Login: Administrator Hasło: haslo1 – Grupa Administrator <br/>
Login: Moderator Hasło: haslo1 – Grupa Moderator<br/>
Aby uzyskać dostęp do zwyklego użytkownika trzeba najpierw stworzyć konto.<br/>
Uprawinienia:<br/>
Administrator:<br/>
Może dodawać kategorię, subkategorię, temat, post.<br/>
Może usunąć kategorię, subkategorię, temat, post, oraz posty innych użytkowników.<br/>
Moderator:<br/>
Może dodawać kategorię, subkategorię, temat, post.<br/>
Może usuwać subkategorię, tematy i posty, oraz posty innych użytkowników<br/>
Użytkownik:<br/>
Może dodawać tematy oraz posty<br/>
Może usunąć własne posty.<br/>
O projekcie:<br/>

- Została oddzielona warstwa HTML od PHP, stworzono do tego specjalną klasę w folderze class o<br/>
nazwie Template.class.php<br/>
- Logowanie opiera się na jQuery dlatego forum do poprawnego działania wymaga internetu (jQuery<br/>
pobierane jest z serwera google)<br/>
