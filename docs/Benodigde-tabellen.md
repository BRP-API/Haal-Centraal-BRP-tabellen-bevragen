# Benodigde tabellen voor Haal Centraal API's

Noot: De landelijke tabellen zijn gepubliceerd op https://publicaties.rvig.nl/Landelijke_tabellen/Landelijke_tabellen_32_t_m_61_excl_tabel_35

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

Voor de BRP-historie API moeten minimaal de volgende tabellen beschikbaar worden gemaakt:

| tabelidentificatie        | bron                | omschrijving                                                           |
|---------------------------|---------------------|------------------------------------------------------------------------|
| Reden_Beeindigen_Huwelijk | Landelijke tabel 41 | Reden ontbinding nietigverklaring huwelijk geregistreerd partnerschap. |

## BRP-Bewoning

Voor de BRP-Bewoning API moeten minimaal de volgende tabellen beschikbaar worden gemaakt:
| tabelidentificatie      | bron                                                         | omschrijving                                            |
|-------------------------|--------------------------------------------------------------|---------------------------------------------------------|
| Reden_Bewoning_Onbekend | Types verblijfplaats zonder adresseerbaarObjectIdentivicatie | Reden dat bewoning en bewoners niet kan worden bepaald. |

## Reisdocumenten-bevragen

Voor de Reisdocumenten-bevragen moeten minimaal de volgende tabellen beschikbaar worden gemaakt:
| tabelidentificatie      | bron                                                         | omschrijving                                            |
|-------------------------|--------------------------------------------------------------|---------------------------------------------------------|
| Nederlands_Reisdocument | Landelijke tabel 48 | Nederlands Reisdocument |

# Mogelijke waarden LO GBA elementen

## Aanduiding_Bij_Huisnummer

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                     |
  | ---------- | -------------------------------- |
  | to         | tegenover                        |
  | by         | bij                              |

## Geslacht
  
  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                     |
  | ---------- | -------------------------------- |
  | M          | man                              |
  | V          | vrouw                            |
  | O          | onbekend                         |

## Naamgebruik

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                                                            |
  | ---------- | ----------------------------------------------------------------------- |
  | E          | eigen geslachtsnaam                                                     |
  | N          | geslachtsnaam echtgenoot/geregistreerd partner na eigen geslachtsnaam   |
  | P          | geslachtsnaam echtgenoot/geregistreerd partner                          |
  | V          | geslachtsnaam echtgenoot/geregistreerd partner voor eigen geslachtsnaam |

## Reden_Opschorting_Bijhouding

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving              |
  | ---------- | ------------------------- |
  | O          | overlijden                |
  | E          | emigratie                 |
  | M          | ministerieel besluit      |
  | R          | pl is aangelegd in de rni |
  | F          | fout                      |
  | .          | onbekend                  |

## Soort_Verbintenis

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                         |
  | ---------- | ------------------------------------ |
  | H          | huwelijk                             |
  | P          | geregistreerd partnerschap           |
  | .          | onbekend                             |

## Functie_Adres

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                         |
  | ---------- | ------------------------------------ |
  | W          | woonadres                            |
  | B          | briefadres                           |

## Europees_Kiesrecht

  In de waardetabel worden de volgende waarden opgenomen:
  | code       | omschrijving                         |
  | ---------- | ------------------------------------ |
  | 1          | persoon is uitgesloten               |
  | 2          | persoon ontvangt oproep              |


## Reden_Bewoning_Onbekend
  
  In de waardetabel worden de volgende waarden opgenomen:
  | code             | omschrijving                                                                                  |
  | ----------       | ------------------------------------                                                          |
  | NIET_ADRES_ADRES | voor een adres zonder BAG adresseerbaar object identificatie kan geen bewoning worden bepaald |
  | LOCATIE          | voor een locatiebeschrijving kan geen bewoning worden bepaald                                 |
  | BUITENLAND       | voor een verblijfplaats in het buitenland kan geen bewoning worden bepaald                    |
  | ONBEKEND         | de verblijfplaats is onbekend                                                                 |
