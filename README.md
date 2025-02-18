# Info Users Structure

Ce dépôt contient un script PowerShell, **info_users_structure.ps1**, conçu pour faciliter l’identification des utilisateurs en affichant leurs attributs depuis l’Active Directory.

## 📌 Fonctionnalités  

- Permet de saisir un ou plusieurs noms d’utilisateurs au lancement.  
- Récupère et affiche les informations suivantes pour chaque utilisateur :  
  - **Code PAM** (*Pôle d'Activité Médicale*) : regroupement de services au sein d’autres services.  
  - **Société** (*Code ER* : Établissement de Regroupement).  
  - **Établissement géographique** (*Code EG*).  
  - **Description** (*Code CR* : Centre de Responsabilité).  
  - **Service** (*Code UF* : Unité Fonctionnelle).  
  - **Fonction** : titre du poste.  

## ⚙️ Intégration et Utilisation  

Le script est structuré sous forme de fonction, ce qui permet de l’intégrer facilement dans d’autres scripts. De plus, il prend en charge une saisie itérative des utilisateurs, facilitant ainsi le traitement d’un grand nombre d’entrées en une seule exécution.