 Tienda online para 'Pastelería Doña Matilde'
Proyecto de tienda online para 'Pastelería Doña Matilde' realizado en java.

## Clonar
Para poder clonar el repositorio debes ejecutar el siguiente comando en la carpeta donde quieres alojar el proyecto.
```bash
git clone https://github.com/sebastian-reyes/WA_PasteleriaMatilde
```

## Base de datos
### Modelo de Base de Datos
![Modelo de base de datos pastelería doña matilde](https://github.com/sebastian-reyes/WA_PasteleriaMatilde/blob/master/gh-rf/img/bdmodel.png)
### Cambio de propiedades en archivo 'BDConnection'
```java
private String bd="bdpasteleria";
private String url="jdbc:mysql://localhost:3306/"+bd;
private String user="root"; //Cambiar el nombre de usuario según su PC
private String password="12345"; //Cambiar la contraseña según su PC
```