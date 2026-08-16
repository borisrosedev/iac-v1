<style>

body {
    font-family: monospace;
    font-size: 18px;
}

h3 {
    color: rgb(103, 212, 158)
}

</style>
# README

## Notions

Mécanisme de confiance mutuelle entre Github et Azure , il est appelé "fédération d'identité OpenID Connect"


### Federated Identity Credential (FIC)

Un enregistrement créé côté Azure qui déclare : « j'accepte comme preuve d'identité tout jeton émis par cet émetteur, portant exactement ce sujet, et adressé à cette audience ». C'est le pendant Azure du jeton GitHub. Il remplace le mot de passe.


### Azure Active Directory Provider

The Azure Provider can be used to configure infrastructure in Azure Active Directory using the Microsoft Graph API. Documentation regarding the Data Sources and Resources supported by the Azure Active Directory Provider can be found in the navigation to the left.

In October 2023 Azure Active Directory was renamed to Microsoft Entra ID. All references to both names in this documentation are interchangeable.

Interested in the provider's latest features, or want to make sure you're up to date? Check out the changelog for version information and release notes.

<a href="https://registry.terraform.io/providers/hashicorp/azuread/latest/docs">Check out the doc</a>
