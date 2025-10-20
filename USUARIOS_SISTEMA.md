# 🔐 USUARIOS DEL SISTEMA - Decor Offline

## 📋 **CREDENCIALES DE ACCESO**

El sistema cuenta con los siguientes usuarios predeterminados que se crean automáticamente al inicializar la aplicación por primera vez:

---

### 👨‍💼 **ADMINISTRADOR**
- **Usuario:** `admin`
- **Contraseña:** `admin123`
- **Rol:** Administrador (ID: 1)
- **Descripción:** Usuario con permisos completos del sistema

---

### 🧪 **USUARIO DE PRUEBA**
- **Usuario:** `test`
- **Contraseña:** `test123`
- **Rol:** Usuario (ID: 2)
- **Descripción:** Usuario para realizar pruebas del sistema

---

### 🎯 **USUARIO DEMO**
- **Usuario:** `demo`
- **Contraseña:** `demo`
- **Rol:** Usuario (ID: 2)
- **Descripción:** Usuario para demostraciones rápidas

---

## 🚀 **INSTRUCCIONES DE USO**

1. **Primera ejecución:** Los usuarios se crean automáticamente cuando inicias la aplicación por primera vez
2. **Pantalla de login:** Usa cualquiera de las credenciales anteriores
3. **Cambio de contraseña:** ⚠️ Las contraseñas están hardcodeadas por simplicidad en este sistema de prueba

---

## ⚠️ **NOTAS IMPORTANTES**

- **Seguridad:** En un entorno de producción, estas contraseñas deberían ser hasheadas
- **Personalización:** Puedes modificar estos usuarios en `lib/services/isar_service.dart` en el método `_initDefaultData()`
- **Base de datos:** Los usuarios se almacenan en la base de datos local Isar
- **Reset:** Para resetear los usuarios, elimina la base de datos local y reinicia la aplicación

---

