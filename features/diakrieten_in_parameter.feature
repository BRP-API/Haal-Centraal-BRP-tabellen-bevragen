# language: nl

Functionaliteit: Als gebruiker wil ik een tabelwaarde kunnen zoeken zonder de diacrieten correct te typen
  
  Rule: Wanneer een diakriet wordt opgegeven in de zoekparameter omschrijving, wordt deze ook gebruikt.

    Scenario: Zoek gemeente met diakriet
      Als Gemeenten worden gezocht met omschrijving "*lân*"
      Dan wordt er een waarde gevonden met omschrijving="Noardeast-Fryslân"
      En wordt er GEEN waarde gevonden met omschrijving="Ameland"

    Scenario: Zoek land met diakriet
      Als Landen worden gezocht met omschrijving "*nië*"
      Dan wordt er een waarde gevonden met omschrijving="Armenië"
      En wordt er GEEN waarde gevonden met omschrijving="Papua-Nieuwguinea"

    Scenario: Zoek met andere diakriet
      Als Gemeenten worden gezocht met omschrijving "Noardeast-Fryslán"
      Dan wordt er GEEN waarde gevonden met omschrijving="Noardeast-Fryslân"

    Scenario: Zoek met zelfde leesteken op andere letter
      Als Landen worden gezocht met omschrijving "*niü*"
      Dan wordt er GEEN waarde gevonden met omschrijving="Armenië"    


  Rule: Wanneer geen diakriet wordt opgegeven in de zoekparameter omschrijving, worden equivalente diakrieten ook gevonden.

    Scenario: Zoek gemeente zonder diakriet
      Als tGemeenten worden gezocht met omschrijving "*lan*"
      Dan wordt er een waarde gevonden met omschrijving="Noardeast-Fryslân"
      En wordt er en waarde gevonden met omschrijving="Ameland"

    Scenario: Zoek land zonder diakriet vindt ë
      Als Landen worden gezocht met omschrijving "*nie*"
      Dan wordt er een waarde gevonden met omschrijving="Armenië"
      En wordt er een waarde gevonden met omschrijving="Papua-Nieuwguinea"

    Scenario: Zoek land zonder diakriet vindt ç
      Als Landen worden gezocht met omschrijving "curacao"
      Dan wordt er een waarde gevonden met omschrijving="Curaçao"
      
    Scenario: Zoek land zonder diakriet vindt ã
      Als Landen worden gezocht met omschrijving "sao*"
      Dan wordt er een waarde gevonden met omschrijving="São Tomé en Principe"
      En wordt er een waarde gevonden met omschrijving="Saoediarabië"

    Scenario: Zoek land met én zonder diakriet
      Als Landen worden gezocht met omschrijving "Sao Tomé en Principe"
      Dan wordt er een waarde gevonden met omschrijving="São Tomé en Principe"

    Scenario: zoek reden opnemen of beëindigen nationaliteit zonder diakriet
      Als Reden_Nationaliteit worden gezocht met omschrijving "*Indonesie*"
      Dan wordt er een waarde gevonden met omschrijving="Toescheidingsovereenkomst Nederland-Indonesië, art. 10"

    Scenario: zoek Reden ontbinding/nietigverklaring huwelijk/geregistreerd partnerschap zonder diakriet
      Als Reden_Beeindigen_Huwelijk worden gezocht met omschrijving "*anders beeind*"
      Dan wordt er een waarde gevonden met omschrijving="Een naar vreemd recht anders beëind. huwelijk/geregistr. partnerschap"
  

  Rule: zoeken met of zonder diakriet is case-insensitive

    Scenario: Zoek land met diakriet in hoofdletter
      Als Landen worden gezocht met omschrijving "BELGIË"
      Dan wordt er een waarde gevonden met omschrijving="België"

    Scenario: Zoek land zonder diakriet in hoofdletter
      Als Landen worden gezocht met omschrijving "BELGIE"
      Dan wordt er een waarde gevonden met omschrijving="België" 