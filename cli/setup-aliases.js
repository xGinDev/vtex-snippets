const { exec } = require('child_process');
const os = require('os');
const path = require('path');

// Rutas a los scripts
const shellScriptPath = path.join(__dirname, 'setup-aliases.sh');
const powershellScriptPath = path.join(__dirname, 'setup-aliases.ps1');

if (os.platform() !== 'win32') {
  // Linux/macOS: Otorgar permisos de ejecución al script de shell
  exec(`chmod +x ${shellScriptPath}`, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error otorgando permisos: ${error.message}`);
      return;
    }
    console.log('Permisos otorgados correctamente.');

    // Ejecutar el script de shell
    exec(`sh ${shellScriptPath}`, (error, stdout, stderr) => {
      if (error) {
        console.error(`Error ejecutando el script: ${error.message}`);
        return;
      }
      console.log(stdout);
    });
  });
} else {
  // Windows: Ejecutar el script de PowerShell
  exec(`powershell -File ${powershellScriptPath}`, (error, stdout, stderr) => {
    if (error) {
      console.error(`Error ejecutando el script: ${error.message}`);
      return;
    }
    console.log(stdout);
  });
}