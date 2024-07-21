# Configuración de archivo vimrc

En este archivo se menciona la configuración para el editor de texto Vim, es una configuración personal. En una siguiente actualización se detallara el contenido de este, por el momento solo se incluye el archivo y un zip con la fuente FireCode, utilizada para agregar iconos al Plugin NerdTree.

## Instalación de vim-plug

Para poder instalar plugins en Vim se necesita un administrador de paquetes, para eso se puede copiar y pegar el siguiente codigo en PowerShell:

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```
