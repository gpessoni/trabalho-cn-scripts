param(
    [Parameter(Mandatory=$true)]
    [string]$nomeGrupo
)

az group delete `
    --name $nomeGrupo `
    --yes `
    --no-wait