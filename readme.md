# Trabalho de Computação em Nuvem - 2º Bimestre

**Feito por:** Gabriel Pessoni

## Descrição

Este trabalho contém 3 scripts em PowerShell utilizando Azure CLI para gerenciamento de recursos na nuvem.

Os scripts permitem:

* Criar Grupo de Recursos
* Criar Máquina Virtual
* Excluir Grupo de Recursos

---

## Scripts

### cr_gp.ps1

Cria um Grupo de Recursos.

Solicita:

* Nome do grupo
* Região da Azure

Executar:

```powershell
.\cr_gp.ps1
```

---

### cr_vm.ps1

Cria uma Máquina Virtual.

Solicita:

* Nome da VM
* Grupo de Recursos
* Usuário administrador
* Senha do administrador
* Porta 1
* Porta 2

Também configura a exclusão automática do disco e IP e libera as portas informadas.

Executar:

```powershell
.\cr_vm.ps1
```

---

### del_gp.ps1

Exclui um Grupo de Recursos.

Recebe por parâmetro:

* Nome do grupo

Executar:

```powershell
.\del_gp.ps1 -nomeGrupo FATEC_CLOUD
```

---

## Requisito

Antes de executar, é necessário fazer login na Azure:

```powershell
az login
```

Também é necessário ter o Azure CLI instalado.

---
