<style>

body {
    font-family: monospace;
    font-size: 18px;
}

</style>

## Notions

Mécanisme de confiance mutuelle entre Github et Azure , il est appelé "fédération d'identité OpenID Connect"


### Federated Identity Credential (FIC)

Un enregistrement créé côté Azure qui déclare : « j'accepte comme preuve d'identité tout jeton émis par cet émetteur, portant exactement ce sujet, et adressé à cette audience ». C'est le pendant Azure du jeton GitHub. Il remplace le mot de passe.
