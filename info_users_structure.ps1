# Importation du module Active Directory
Import-Module ActiveDirectory

#####################################################################
#  AUTEUR  : Thomas ZIMMER
#  DATE    : 09/11/2021
#  OBJET   : Récupération et affichage des propriétés :
#            - Société
#            - Description
#            - Fonction
#            - Service
#####################################################################

function info_users_structure {
    do {
        # Demande de saisie des utilisateurs (séparés par ;)
        $Users = Read-Host -Prompt "Liste des utilisateurs (séparés par ;) ?"
        $UsersList = $Users -split ";"

        foreach ($User in $UsersList) {
            # Vérification si l'utilisateur existe
            $Properties = Get-ADUser -Identity $User -Properties * -ErrorAction SilentlyContinue
            
            if ($Properties) {
                Write-Host "$User / $($Properties.Company) / $($Properties.Description) / $($Properties.Department) / $($Properties.Title)"
            } else {
                Write-Host "⚠️ L'utilisateur '$User' n'existe pas ou n'est pas accessible." -ForegroundColor Red
            }
        }

        Write-Host ""
        # Demande si l'utilisateur souhaite continuer
        $Continue = Read-Host "Voulez-vous rechercher d'autres utilisateurs ? (O/N)"
    } while ($Continue -match "^[Oo]$")
}

# Exécution du script
info_users_structure
