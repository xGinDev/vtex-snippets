# Contribución a VTEX IO CodeBits

¡Gracias por considerar contribuir a VTEX IO CodeBits! Nos encanta recibir contribuciones de la comunidad. Antes de comenzar, por favor, toma un momento para leer nuestras pautas de contribución.

## Cómo Contribuir

1. Asegúrate de tener una cuenta en GitHub.
2. Fork el repositorio a tu cuenta.
3. Clona tu repositorio fork en tu máquina local **(Recomendación por SSH)**: `git clone https://github.com/xGinDev/vtex-snippets.git`
4. Crea una rama para tu contribución: `git checkout -b feature/name-snippet`
5. Ten en cuenta esta documentación [¿Cómo crear un snippet?](CREATE_SNIPPET.md)
6. Realiza tus cambios y asegúrate de seguir las [pautas de codificación](#pautas-de-codificación).
7. [Realiza pruebas locales](#cómo-realizar-las-pruebas) para asegurarte de que tus cambios funcionan correctamente.
8. Realiza un commit con un mensaje descriptivo: `git commit -m "Añade [nombre del snippet]"`
9. Sube tus cambios a tu repositorio fork: `git push origin feature/name-snippet`
10. Abre una solicitud de extracción (Pull Request) en GitHub.

## Pautas de Codificación

- Mantén los snippets simples y fácilmente comprensibles.
- Utiliza un formato consistente para los snippets.
- Siempre proporciona una descripción clara de lo que hace el snippet.
- Sigue las convenciones de nomenclatura del lenguaje para los nombres de los snippets.

## Estructura del Repositorio

El repositorio sigue la siguiente estructura básica:

```
├── schemas 
  ├── carpeta-nombre-bloque-componente 
    ├── nombre-bloque-componente.schema.json 
├── snippets
  ├── blocks.code-snippets
  ├── components.code-snippets
  ├── styles.code-snippets
├── README.md
├── CONTRIBUTING.md
├── CREATE_SNIPPET.md
```


## Pruebas

Antes de enviar tu solicitud de extracción, asegúrate de ejecutar las pruebas locales. Si es posible, proporciona ejemplos o capturas de pantalla que demuestren el uso correcto de tus snippets.

### ¿Cómo realizar las pruebas?

Después de haber añadido nuestro snippet al archivo que corresponda:

**NOTA:** Recordemos añadir en el scope el lenguaje al que va aplicar el snippet.

![Snippet File](https://github.com/user-attachments/assets/e57f3910-5238-40fc-9fa5-96eaf38ca002)

Abrimos el debug con la tecla **F5**

![Debug Snippet](https://github.com/user-attachments/assets/61c7ad55-7360-402c-b43a-f7e96d33d19f)

Dentro de esta nueva ventana en el debug, seleccionamos el idioma al cual colocamos en el snippet, ejemplo: **CSS**

![Selected Languaje](https://github.com/user-attachments/assets/b791bcae-641d-49ec-b5b3-1cf47c0cc987)

Ahora probamos el **prefix** que definimos en el snippet.

![Test Snippet](https://github.com/user-attachments/assets/5012ed1d-d440-46a2-b376-f9fe706368d8)


## Crear Snippet CLI

Para ello, debemos hacerlo en dos archivos dentro de la siguiente estructura:

```
├── cli
  ├── setup-aliases.sh
  ├── setup-aliases.ps1
```

.sh es para el sistema operativo de MacOS y Linux
.ps1 es para el sistema operativo de Windows


Viendo estos archivos, es solo duplicar algún comando y adaptarlo al que deseas!!

## Comunicación

Si tienes preguntas o encuentras problemas, no dudes en abrir un problema (issue) en GitHub.

## Código de Conducta

Este proyecto sigue el código de conducta. Asegúrate de revisarlo y seguirlo en todas tus interacciones con el proyecto.

¡Gracias por contribuir!
