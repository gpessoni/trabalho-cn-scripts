$nomeGrupo = Read-Host "Nome do Grupo de Recursos: "
$regiao = Read-Host "Regiao da Azure: "

if ([string]::IsNullOrWhiteSpace($nomeGrupo) -or [string]::IsNullOrWhiteSpace($regiao)) {
    Write-Host "Preencha todos os campos."
    exit
}

az group create `
    --name $nomeGrupo `
    --location $regiao