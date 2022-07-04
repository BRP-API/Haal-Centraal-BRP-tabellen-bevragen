# Benodigde tabellen voor Haal Centraal API's

Noot: De landelijke tabellen zijn gepubliceerd op https://publicaties.rvig.nl/Landelijke_tabellen/Landelijke_tabellen_32_t_m_61_excl_tabel_35

Mogelijke waarden van LO GBA elementen staan in tabelwaarden.csv

## BRP-Personen-Bevragen

Voor de BRP-Personen-Bevragen moeten minimaal de volgende tabellen beschikbaar worden gemaakt:

| tabelidentificatie           | bron                 | omschrijving                                                                                                                                               |
|------------------------------|----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Aanduiding_Bij_Huisnummer    | LO GBA element 11.50 | De aanduiding die wordt gebruikt voor adressen die geen straatnaam en huisnummeraanduidingen hebben, maar verwijzen naar een (verblijf)plaats in de buurt. |
| Adellijke_Titel_Predicaat    | Landelijke tabel 38  | Adellijke titel/predicaat                                                                                                                                  |
| Europees_Kiesrecht           | LO GBA element 31.10 | Aanduiding van het recht om deel te nemen aan verkiezingen binnen de Europese Unie.                                                                        |
| Functie_Adres                | LO GBA element 10.10 | Aanduiding van de functie van het adres.                                                                                                                   |
| Gemeenten                    | Landelijke tabel 33  | Gemeenten                                                                                                                                                  |
| Geslacht                     | LO GBA element 04.10 | Geeft aan wat het geslacht is van de persoon.                                                                                                              |
| Gezagsverhouding             | Landelijke tabel 61  | Gezagsverhouding                                                                                                                                           |
| Landen                       | Landelijke tabel 34  | Landen                                                                                                                                                     |
| Naamgebruik                  | LO GBA element 61.10 | De manier waarop de geslachtsnaam van persoon en partner van persoon moet worden verwerkt in de manier waarop persoon wil worden aangesproken.             |
| Nationaliteiten              | Landelijke tabel 32  | Nationaliteiten                                                                                                                                            |
| Reden_Nationaliteit          | Landelijke tabel 37  | Reden opnemen - beeindigen Nationaliteit                                                                                                                   |
| Reden_Opschorting_Bijhouding | LO GBA element 67.20 | Reden voor opschorting van de bijhouding.                                                                                                                  |
| Soort_Verbintenis            | LO GBA element 15.10 | Soort verbintenis tussen de persoon en de partner die bij de burgerlijke stand is ingeschreven.                                                            |
| Verblijfstitel               | Landelijke tabel 56  | Verblijfstitel                                                                                                                                             |

## BRP-historie

Voor de BRP-historie API moeten minimaal de volgende tabellen beschikbaar worden gemaakt (bovenop wat voor BRP-Personen-Bevragen aan tabellen gevraagd is):

| tabelidentificatie        | bron                | omschrijving                                                           |
|---------------------------|---------------------|------------------------------------------------------------------------|
| Reden_Beeindigen_Huwelijk | Landelijke tabel 41 | Reden ontbinding nietigverklaring huwelijk geregistreerd partnerschap. |

## BRP-Bewoning

Voor de BRP-Bewoning API moeten minimaal de volgende tabellen beschikbaar worden gemaakt (bovenop wat voor BRP-Personen-Bevragen aan tabellen gevraagd is):
| tabelidentificatie      | bron             | omschrijving                                            |
|-------------------------|------------------|---------------------------------------------------------|
| Reden_Bewoning_Onbekend | tabelwaarden.csv | Reden dat bewoning en bewoners niet kan worden bepaald. |

## Reisdocumenten-bevragen

Voor de Reisdocumenten-bevragen API moeten minimaal de volgende tabellen beschikbaar worden gemaakt:
| tabelidentificatie      | bron                | omschrijving                    |
|-------------------------|---------------------|---------------------------------|
| Nederlands_Reisdocument | Landelijke tabel 48 | Nederlands Reisdocument         |
| Geldig_Reisdocument     | tabelwaarden.csv    | Geldigheid van een reisdocument |
