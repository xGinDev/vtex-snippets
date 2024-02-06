# ¿Cómo crear un snippet?

Para ellos haremos uno de una herramienta en línea:

- [Snippet Generator](https://snippet-generator.app/?description=&tabtrigger=&snippet=&mode=vscode)

![image](https://github.com/xGinDev/vtex-snippets/assets/57797652/095d8eb0-bf0c-4356-9ef7-a4a3744043c1)

En el lado izquierdo vamos a poner lo que deseamos que haga el snippet, ejemplo un ```rich-text```.

Al hacer esto nos convierte automaticamente al formato del snippet
![image](https://github.com/xGinDev/vtex-snippets/assets/57797652/de565aa2-826e-423c-bd3c-fee5e95c3db9)

Luego de esto en descripción pondremos una para tener más contexto sobre lo que esta hace: 

- Este lo pone en el título y descripción![alt text](https://github.com/xGinDev/vtex-snippets/assets/57797652/1bd11907-23c1-4010-826f-83a73db9caa1)

- En tab trigger será la abrevación para el snippet, en este caso **rt**, lo ideal es algo que se entienda o sea fácil de deducir ![alt text](https://github.com/xGinDev/vtex-snippets/assets/57797652/9cecefea-16a8-415e-9948-138c89b607ee)


## ¿Cómo añadirlo en el proyecto?

Primero debemos de identificar si es un bloque o un componente; según la elección lo pondremos en alguno de estos archivos: 

![image](https://github.com/xGinDev/vtex-snippets/assets/57797652/acb9f64b-4be7-4ad1-9cfc-c68edfb56e68)

En este caso lo pondremos dentro de ```blocks.code-snippets```.

![image](https://github.com/xGinDev/vtex-snippets/assets/57797652/3ec66f68-774b-4928-9d21-f8e806aba123)

**¡SUPER IMPORTANTE!**

Cada snippet debe tener el: ```"scope": "json,jsonc"```
![image](https://github.com/xGinDev/vtex-snippets/assets/57797652/c97ac644-38c5-4603-be79-00f4bfa0d81c)

Con esto ya el snippet queda creado!