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


### Create a new orphan branch

```bash
--orphan <new_branch>
```

Create a new orphan branch, named <new_branch>, started from <start_point> and switch to it. The first commit made on this new branch will have no parents and it will be the root of a new history totally disconnected from all the other branches and commits.

The index and the working tree are adjusted as if you had previously run "git checkout <start_point>". This allows you to start a new history that records a set of paths similar to <start_point> by easily running "git commit -a" to make the root commit.

This can be useful when you want to publish the tree from a commit without exposing its full history. You might want to do this to publish an open source branch of a project whose current tree is "clean", but whose full history contains proprietary or otherwise encumbered bits of code.

If you want to start a disconnected history that records a set of paths that is totally different from the one of <start_point>, then you should clear the index and the working tree right after creating the orphan branch by running "git rm -rf ." from the top level of the working tree. Afterwards you will be ready to prepare your new files, repopulating the working tree, by copying them from elsewhere, extracting a tarball, etc.
