# Tienda online para 'Pastelería Doña Matilde'
Proyecto de tienda online para 'Pastelería Doña Matilde' realizado en Java EE con motor de base de datos MariaDB.

<p align="center">
    ![Logo pastelería](https://github.com/sebastian-reyes/WA_PasteleriaMatilde/blob/master/gh-rf/img/logo-matilde.png)
</p>

## Clonar
Para poder clonar el repositorio debes ejecutar el siguiente comando en la carpeta donde quieres alojar el proyecto.
```bash
git clone https://github.com/sebastian-reyes/WA_PasteleriaMatilde.git
```

## Base de datos
### Modelo de Base de Datos
![Modelo de base de datos pastelería doña matilde](https://github.com/sebastian-reyes/WA_PasteleriaMatilde/blob/master/gh-rf/img/bdmodel.png)
### Cambio de propiedades en archivo 'BDConnection'
Crear base de datos en **MariaDB** o **MySQ** y ejecutar el script.
```sql
CREATE DATABASE `bdpasteleria`;
```
Cambiar según como tengas configurado tus usuarios de en **MariaDB** o **MySQ** en el archivo **BDConnection.java**
```java
private String bd="bdpasteleria";
private String url="jdbc:mysql://localhost:3306/"+bd;
private String user="root"; //Cambiar el nombre de usuario según su PC
private String password="12345"; //Cambiar la contraseña según su PC
```

## Equipo
<p align="center">
| **Sebastián Reyes** | **Luis Zavala** |
| :---: | :---: |
| <a href="https://github.com/sebastian-reyes" target="_blank"><img src="https://avatars.githubusercontent.com/u/71537939?s=460&u=c3f1def28f8860e833ae8352815eeef97acd4f7a&v=4" width="200"></a> | <a href="https://github.com/LuisTerrones" target="_blank"><img src="https://avatars.githubusercontent.com/u/76187524?s=400&u=c80282b034590a0fc0eeb51983ceaa0429dbdcd9&v=4" width="200"></a> |
| sebastianreyes2105@gmail.com | stefano.piscis20@gmail.com |
</p>
## Licencia MIT
**©Pastelería Doña Matilde - 2020 Todos los derechos reservados.**