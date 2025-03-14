# VTEX IO CodeBits

VTEX IO Snippets are concise, reusable code fragments tailored for VTEX IO. These code blocks serve as building blocks for customizing and extending your VTEX e-commerce store with ease. Whether it's adding new features, tweaking design, or optimizing performance, VTEX IO Snippets provide the flexibility to streamline development tasks, helping you create unique shopping experiences for your customers.

### Create pre-made components

![extension-ezgif com-video-to-gif-converter](https://github.com/xGinDev/vtex-snippets/assets/57797652/f5e295d9-456f-4f02-b98f-2fd9b65f9970)

## Commands

| Blocks Snippets               |
| :---------------------------- |
| "flr" => "flex-layout.row"    |
| "flc" => "flex-layout.col"    |
| "rt" => "rich-text"           |
| "sl" => "slider-layout"       |
| "i" => "Icon"                 |
| "atc" => "add-to-cart-button" |
| "mi" => "menu-item"           |
| "m" => "menu"                 |
| "ic" => "simple info card"    |
| "img" => "image"              |

## Components

| Blocks Snippets                                |
| :--------------------------------------------- |
| "carrousel" => "Context Image List And Slider" |
| "srpdp" => "Shelf Related PDP"                 |
| "ssm" => "Share Social Media"                  |
| "bcc" => "BreadCrumb Custom"                   |
| "bcs" => "Create Breadcrumb Search"            |
| "bcp" => "Create Breadcrumb PDP"               |
| "tl" => "Toggle Layout"                        |
| "pss" => "Product Summary Shelf"               |
| "ss" => "Store Search"                         |
| "btt" => "Button Back To Top"                  |
| "vitrine" => "Context Product List And Slide"  |
| "tag" => "Product Highlights"                  |
| "foo" => "Create Template Footer"              |
| "misa" => "Menu Item With SubMenu Accordion"   |
| "quickview" => "Create QuickView "             |
| "promises" => "Create Promises Brand "         |
| "rc" => "Route Custom"                         |


## Configuración de snippets en la terminal

Después de instalar la extensión, configura los aliases de terminal ejecutando el siguiente comando desde la paleta de comandos de VSCode:

1. Abre la paleta de comandos (`Ctrl + Shift + P` o `Cmd + Shift + P`).
2. Busca y selecciona `Setup VTEX Snippets Aliases`.
3. **(Solo para Windows).** Se debe ejecutar el siguiente comando en PowerShell: `Add-Content -Path $PROFILE -Value '$env:PATH += ";C:\ruta\a\vtex"'`
4. Reinicia tu editor de código.
5. ¡Listo! Los snippets estarán disponibles en tu terminal.

## Alias de VTEX

| Alias | Comando                     | Descripción                                      |
|-------|-----------------------------|--------------------------------------------------|
| `vls`  | `vtex list`                 | Muestra el listado de dependencias del proyecto actual con VTEX.             |
| `vl`  | `vtex link`                 | Linkea el proyecto actual con VTEX.             |
| `vli` | `vtex login`                | Inicia sesión en VTEX.                          |
| `vlo` | `vtex logout`               | Cierra sesión en VTEX.                          |
| `vw`  | `vtex whoami`               | Muestra la información del usuario actual.      |
| `vu`  | `vtex use`                  | Cambia a un workspace específico.               |
| `vst` | `vtex setup`                | Configura el entorno de VTEX.                   |
| `vup` | `vtex update`               | Actualiza las dependencias de VTEX o componentes personalizados que se hayan hecho deploy.                       |
| `vwd` | `vtex workspace delete`     | Elimina un workspace.                           |
| `vwl` | `vtex workspace list`       | Lista todos los workspaces disponibles.         |
| `vwr` | `vtex workspace reset`      | Reinicia un workspace.                          |
| `vrms`| `vtex release major stable` | Publica una versión mayor estable.              |
| `vrms`| `vtex release minor stable` | Publica una versión menor estable.              |
| `vrps`| `vtex release patch stable` | Publica una versión de parche estable.          |
| `vwp` | `vtex workspace promote`    | Promueve un workspace a producción.             |
| `vpv` | `vtex publish --verbose`    | Publica con mensajes detallados.                |
| `vdf` | `vtex deploy --force`       | Despliega forzadamente.                         |

## Alias de Git

| Alias | Comando          | Descripción                                      |
|-------|------------------|--------------------------------------------------|
| `ga`  | `git add .`      | Agrega todos los cambios al staging area.        |
| `gc`  | `git commit -m`  | Realiza un commit con un mensaje.                |
| `gph` | `git push`       | Sube los cambios al repositorio remoto.          |
| `gpl` | `git pull`       | Obtiene los cambios del repositorio remoto.      |
| `gs`  | `git status`     | Muestra el estado del repositorio.               |

## Alias de Yarn

| Alias | Comando    | Descripción                                      |
|-------|------------|--------------------------------------------------|
| `yd`  | `yarn dev` | Inicia el servidor de desarrollo.                |