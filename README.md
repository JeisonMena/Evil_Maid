<h1 align="center"> 🛡️ Evil Maid Attack - Prueba de Concepto en VirtualBox 🛡️ </h1>

<p align="center">
  <strong>📌 Prueba de Concepto para Fines Educativos 📌</strong><br>
  <em>Este proyecto demuestra cómo un ataque Evil Maid puede comprometer un sistema Windows con acceso físico.</em>
</p>

---

<h2>📌 Descripción</h2>
<p>
Este repositorio contiene una implementación de un ataque <strong>Evil Maid</strong> como prueba de concepto para fines educativos y académicos.
El ataque aprovecha el acceso físico a un equipo para modificar archivos del sistema y establecer una conexión remota a través de una <strong>reverse shell</strong>.
</p>
<p>
Este trabajo se realizó en el contexto de un curso universitario de ciberseguridad y tiene fines exclusivamente educativos. 
<b>No debe ser utilizado con fines maliciosos o ilegales.</b>
</p>

---

<h2>🖥️ Entorno de Pruebas</h2>
<ul>
  <li><strong>Máquina víctima:</strong> Windows 10 en VirtualBox</li>
  <li><strong>Máquina atacante:</strong> Kali Linux</li>
  <li><strong>Sistema de acceso:</strong> Tiny Core Linux para la ejecución del payload</li>
</ul>

---

<h2>🛠️ Funcionamiento del Ataque</h2>
<ol>
  <li>Se utiliza <strong>Tiny Core Linux</strong> para acceder a la máquina víctima desde una unidad USB.</li>
  <li>Se reemplaza <code>sethc.exe</code> en <code>C:\Windows\System32\</code> con una versión de Netcat (<code>nc64.exe</code>).</li>
  <li>Se copia un script batch (<code>conexionEM.bat</code>) en la carpeta de inicio de Windows para asegurar persistencia.</li>
  <li>Al iniciar sesión, Windows ejecuta <code>conexionEM.bat</code>, estableciendo una <strong>reverse shell</strong> con la máquina atacante.</li>
</ol>

---

<h2>📂 Archivos Clave en el Repositorio</h2>
<ul>
  <li><code>evil.sh</code> → Script en Bash que monta la partición de Windows y reemplaza <code>sethc.exe</code>.</li>
  <li><code>conexionEM.bat</code> → Script en Batch que ejecuta <code>sethc.exe</code> (Netcat) para establecer la reverse shell.</li>
  <li><code>nc64.exe</code> → Versión de Netcat para Windows utilizada en el ataque.</li>
</ul>

---

<h2>📌 Ejecución del Ataque</h2>

<h3>🔹 Requisitos Previos</h3>
<ul>
  <li>VirtualBox con Windows 10 y Kali Linux instalados.</li>
  <li>USB booteable con Tiny Core Linux.</li>
  <li>Configuración de la máquina virtual para permitir arranque desde USB.</li>
</ul>

<h3>🔹 Pasos para Ejecutar el Ataque</h3>
<ol>
  <li>Arrancar <strong>Tiny Core Linux</strong> en la máquina víctima desde la USB.</li>
  <li>Ejecutar el script <code>evil.sh</code> para modificar los archivos del sistema.</li>
  <li>Reiniciar la máquina víctima y esperar a que se inicie Windows.</li>
  <li>En la máquina atacante (Kali Linux), abrir un listener en el puerto 443:</li>
</ol>

bash
nc -lvnp 443
<p>Cuando la víctima inicie sesión, la reverse shell se establecerá automáticamente.</p>
<h2>⚠️ Consideraciones de Seguridad</h2> <ul> <li>Este ataque es una demostración académica. <strong>No debe utilizarse en entornos reales sin autorización.</strong></li> <li>Un buen monitoreo de logs y herramientas forenses pueden detectar esta actividad.</li> </ul>
<h2>📚 Referencias y Créditos</h2> <ul> <li>Basado en el trabajo de <a href="https://github.com/cesartoshiro/Evil-maid/tree/main" target="_blank">cesartoshiro</a>. (Los comandos en Linux fueron tomados de su repositorio para replicar el ataque).</li> <li>Artículo original sobre Evil Maid Attack: <a href="http://theinvisiblethings.blogspot.com/2009/10/evil-maid-goes-after-truecrypt.html" target="_blank">Invisible Things Blog</a>.</li> <li>Documentación de Netcat para Windows: <a href="https://eternallybored.org/misc/netcat/" target="_blank">Eternally Bored</a>.</li> </ul>
<p align="center"> <strong>🚀 Proyecto con fines académicos 🚀</strong><br> <em>Tarea: Maestria en Ciberseguridad</em> </p>
