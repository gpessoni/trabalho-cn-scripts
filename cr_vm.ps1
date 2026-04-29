$nomeVM = Read-Host "Nome da VM:"
$grupoRecursos = Read-Host "Grupo de Recursos:"
$usuarioAdmin = Read-Host "Usuario Administrador:"
$senhaAdmin = Read-Host "Senha do Usuario Administrador:"
$porta1 = Read-Host "Porta 1 para liberar:"
$porta2 = Read-Host "Porta 2 para liberar:"

if (
    [string]::IsNullOrWhiteSpace($nomeVM) -or
    [string]::IsNullOrWhiteSpace($grupoRecursos) -or
    [string]::IsNullOrWhiteSpace($usuarioAdmin) -or
    [string]::IsNullOrWhiteSpace($senhaAdmin) -or
    [string]::IsNullOrWhiteSpace($porta1) -or
    [string]::IsNullOrWhiteSpace($porta2)
) {
    Write-Host "Preencha todos os campos."
    exit
}

az vm create `
    --resource-group $grupoRecursos `
    --name $nomeVM `
    --location brazilsouth `
    --image Canonical:0001-com-ubuntu-server-jammy:22_04-lts:22.04.202204200 `
    --size Standard_B2als_v2 `
    --admin-username $usuarioAdmin `
    --admin-password $senhaAdmin `
    --authentication-type password

az vm update `
    --resource-group $grupoRecursos `
    --name $nomeVM `
    --set "storageProfile.osDisk.deleteOption=Delete" `
    --set "networkProfile.networkInterfaces[0].deleteOption=Delete"

az vm open-port `
    --resource-group $grupoRecursos `
    --name $nomeVM `
    --port $porta1,$porta2 `
    --priority 100