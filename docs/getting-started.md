---
layout: page-with-side-nav
title: Getting Started
---

# Getting Started

De 'BRP tabellen bevragen' Web API is gespecificeerd in [OpenAPI specifications (OAS)](https://swagger.io/specification/).

Wil je de API gebruiken? Dit kun je doen:

1. Bekijk de [functionaliteit en specificaties](#functionaliteit-en-specificaties)
2. [Implementeer de API Client](#implementeer-de-api-client)
3. [Probeer en test de API](#probeer-en-test-de-api)

## Functionaliteit en specificaties
Met deze API kun je:
* een overzicht vragen van de beschikbare landelijke tabellen in de API
* een landelijke tabel zoeken op een (een deel van) de omschrijving
* een omschrijving raadplegen bij een code in een landelijke tabel
* een code zoeken bij (een deel van) de omschrijving in een landelijke tabel

Zoeken in de BRP tabellen API is case insensitive en ondersteunt het gebruik van wildcard karakter *.

Standaard levert de API bij het zoeken geen beëindigde tabelwaarden, zoals landen die niet meer bestaan. Je kunt ook beëindigde waarden vinden door de parameter inclusiefbeeindigd=true op te nemen in het request.

Je kunt een visuele representatie van de specificatie bekijken met [Swagger UI]({{ site.baseurl }}/swagger-ui) of [Redoc]({{ site.baseurl }}/redoc).

Je kunt de [functionele documentatie](./features) vinden in de [features](./features).

## Implementeer de API client
Client code kun je genereren met de "[genereervariant](https://github.com/VNG-Realisatie/Haal-Centraal-BRP-tabellen-bevragen/blob/master/specificatie/genereervariant/openapi.yaml){:target="_blank" rel="noopener"}" van de API-specificaties en een code generator. Een overzicht met codegeneratoren kun je vinden op [OpenAPI.Tools](https://openapi.tools/#sdk){:target="_blank" rel="noopener"}.

Deze repo bevat scripts waarmee je met [OpenAPI Generator](https://openapi-generator.tech/){:target="_blank" rel="noopener"} client code kunt genereren in JAVA, .NET (Full Framework & Core) en Python. De makkelijkste manier om de code generatie scripts te gebruiken, is door deze repo te clonen. Na het clonen kun je met `npm install` de benodigde packages installeren en kun je met npm run <script naam> één van de volgende scripts uitvoeren:
- oas:generate-java-client (voor JAVA client code)
- oas:generate-netcore-client (voor .NET Core client code)
- oas:generate-net-client (voor .NET Full Framework client code)
- oas:generate-python-client (voor Python client code)

Een lijst met andere ondersteunde generator opties kun je vinden in de [Generators List](https://openapi-generator.tech/docs/generators){:target="_blank" rel="noopener"} van OpenAPI Generator.

Note. De prerequisite van OpenAPI Generator is JAVA. Je moet een JAVA runtime installeren voordat je OpenAPI Generator kunt gebruiken
  
## Probeer en test de API
Wil je de 'BRP tabellen bevragen' Web API proberen en testen? Kijk op: `https://www.haalcentraal.nl/haalcentraal/api/landelijke_tabellen`

Om de web api te gebruiken heb je een apikey nodig. Deze voeg je aan een request toe als header "X-API-KEY". Een API-key vraag je aan bij de product owner [cathy.dingemanse@denhaag.nl](mailto:cathy.dingemanse@denhaag.nl).

__De tabellen in de Haal Centraal probeeromgeving worden niet bijgehouden. Dit zijn dus niet de actuele tabellen.__

__Je kan de Haal Centraal probeeromgeving niet gebruiken vanuit de browser, dus ook niet vanuit de browserversie van Postman. Gebruik dus de desktopversie van een testtool (zoals Postman) om berichten te sturen.__

### Importeer de specificaties in Postman

De werking van de API is het makkelijkst te testen met behulp van [Postman](https://www.getpostman.com/){:target="_blank" rel="noopener"}. We hebben al een [Postman collection](https://github.com/VNG-Realisatie/Haal-Centraal-BRP-tabellen-bevragen/blob/master/test/Landelijke-tabellen-postman-collection.json){:target="_blank" rel="noopener"} voor je klaargezet. Deze kun je importeren in Postman. 

### Configureer de url en api key

1. Klik bij "Landelijke tabellen" op de drie bolletjes.
2. Klik vervolgens op Edit
3. Selecteer tabblad "Authorization"
4. Kies TYPE "API Key"
5. Vul in Key: "x-api-key", Value: de API key die je van Cathy hebt ontvangen, Add to: "Header"
6. Selecteer tabblad "Variables"
7. Vul bij baseUrl INITIAL VALUE en bij CURRENT VALUE: `https://www.haalcentraal.nl/haalcentraal/api/brphistorie`
8. Klik op de knop Update
