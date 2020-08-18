# Getting Started

De 'BRP tabellen bevragen' Web API is gespecificeerd met behulp van de [OpenAPI specifications (OAS)](https://swagger.io/specification/).

## Specificaties
Een visuele representatie van de specificatie kan worden gegenereerd met [Swagger UI](https://petstore.swagger.io/?url=https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRP-tabellen-bevragen/master/specificatie/openapi.yaml).

De (resolved) OAS3 is hier te downloaden: [openapi.yaml](../specificatie/genereervariant/openapi.yaml).


## Functionaliteit
Met deze API kunnen tabelwaarden of -codes worden gezocht of geraadpleegd. De API stelt landelijke tabellen op een flexibele manier ter beschikking.

De API kent vier endpoints:

| /tabellen |  Een tabel zoeken en raadplegen welke tabellen beschikbaar zijn |
| /tabellen/{tabelidentificatie} | Een specifieke tabel de omschrijving raadplegen |
| /tabellen/{tabelidentificatie}/waarden | Een tabelwaarde zoeken op code of omschrijving |
| /tabellen/{tabelidentificatie}/waarden/{code} | Een omschrijving zoeken bij een code in een tabel |

Bij het zoeken op omschrijving kan gebruik gemaakt worden van [wildcards](https://github.com/VNG-Realisatie/Haal-Centraal-common/blob/master/features/wildcard.feature).

Bij het zoeken op tabelwaarden worden standaard alleen actieve waarden teruggegeven. Wanneer je ook beëindigde waarden wilt vinden, gebruik je query parameter inclusiefbeeindigd=true.

Wanneer een tabelwaarde is beëindigd en is overgegaan in een andere tabelwaarde, wordt attribuut "nieuweCode" opgenomen in het antwoord. Deze code kan gebruikt worden om de nieuwe tabelwaarde op te zoeken. Dit kan je bijvoorbeeld gebruiken in de gemeententabel bij een gemeente die is overgegaan in een andere gemeente.

Bij de tabel "Reden opnemen - beeindigen Nationaliteit" kan ook attribuut "soort" worden geleverd, die een code bevat voor de reden voor het opnemen, dan wel het beëindigen van de nationaliteit.

## Probeer en test de API
De BRP tabellen bevragen Web API is te benaderen via de volgende url: https://www.haalcentraal.nl/haalcentraal/api/landelijke_tabellen

Om de web api te kunnen bevragen is een apikey nodig. Deze kun je aanvragen door een e-mail te sturen naar Cathy Dingemanse <c.dingemanse@comites.nl>.

### Testen met Postman
De werking van de 'Bevraging Ingeschreven Persoon' Web API is het makkelijkst te testen met behulp van [Postman](https://www.getpostman.com/). We hebben al een [Postman collection](../test/Landelijke-tabellen-postman-collection.json) voor je klaargezet die je kan gebruiken.

Volg onderstaande stappen om de collection bestand te importeren:

1. Klik op de Import button om de Import dialog box te openen

2. Selecteer 'Import From Link' tab, plak de volgende url in de 'Enter a URL and press Import' textbox en klik op de Import button

``` url
https://raw.githubusercontent.com/VNG-Realisatie/Haal-Centraal-BRP-tabellen-bevragen/master/test/Landelijke-tabellen-postman-collection.json
```

3. Klik op de Next button om de Postman collectie te importeren

4. Voeg de API key toe
Selecteer het request waar je dit wilt toevoegen. In het rechterscherm wordt een invoerscherm voor de request getoond. Klik op het tabblad "Authorization". Kies type "API Key". Vul bij Value de API key in die je hebt gekregen.

5. Ga naar tabblad Params en vul de parameters in die je wilt gebruiken. Uncheck de overige parameters.

6. Vervang de {{baseUrl}} in de url met https://www.haalcentraal.nl/haalcentraal/api/landelijke_tabellen en klik de Send button om de request naar de endpoint te sturen.
