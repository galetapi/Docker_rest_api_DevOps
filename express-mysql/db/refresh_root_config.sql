-- SIMPLE ROOT-USER CONFIGURATION || CONFIGURACIÓN SIMPLE DE USUARIO ROOT --
ALTER USER 'root' @'localhost' IDENTIFIED BY 'root';
ALTER USER 'root' @'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
FLUSH PRIVILEGES;