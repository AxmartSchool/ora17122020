-- Listazzuk ki a rendeles tetleket ugy hogy a cikkek neve is szerepeljen!
-- SELECT rendeles_tetel1.rszam as 'Rendeles szama', cikkek1.cikknev, rendeles_tetel1.menny from cikkek1 , rendeles_tetel1 where cikkek1.cikkszam = rendeles_tetel1.cikkszam;

-- Listazzuk ki a mar kiszallitott rendeleseket ugy hogy a vevok neve is szerepeljen a listaban. 
-- SELECT rendeles_torzs1.rszam, rendeles_torzs1.szalldatum , vevo1.vnev FROM rendeles_torzs1, vevo1 WHERE  rendeles_torzs1.vkod = vevo1.vkod AND rendeles_torzs1.szallitva LIKE('Y');

-- Listazzuk ki azokay a rendeleseket melyek budapesti cimre mennek
-- SELECT rendeles_torzs1.rszam, rendeles_torzs1.szalldatum , vevo1.vnev FROM rendeles_torzs1, vevo1 WHERE  rendeles_torzs1.vkod = vevo1.vkod AND rendeles_torzs1.szallitva LIKE('N') AND vevo1.telepules LIKE 'Budapest';

-- Egy uj megrendeles erkezett R010-es szamon 2020.12.06-an Takacs Ernotol, mely 6 db ablaktisztitot es 2 db suruloszert tartalmas. Vigye fel az adatokat az adatbazisba. 
-- Insert into rendeles_torzs1 (rszam,vkod,datum,szallitva,szalldatum) values ('R010','V004','2020-12-06','N',null);
-- Insert into rendeles_tetel1 (rszam,cikkszam,menny) values ('R010','T004',6),('R010','T002',2);

-- Kerdezze le takacs erno nem szallitott teteleit
-- SELECT * from vevo1, rendeles_tetel1 , rendeles_torzs1 WHERE vevo1.vkod = rendeles_torzs1.vkod and rendeles_tetel1.rszam = rendeles_torzs1.rszam and rendeles_torzs1.szallitva like 'N' and vevo1.vnev like 'TAKÁCS ERNŐ';
