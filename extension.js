const vscode = require('vscode');
const { exec } = require('child_process');
const os = require('os');
const path = require('path');

/**
 * Función que se ejecuta cuando la extensión es activada.
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
  // Registrar el comando "vtex-snippets.setupAliases"
  let disposable = vscode.commands.registerCommand('vtex-snippets.setupAliases', function () {
    const shellScriptPath = path.join(__dirname, 'cli', 'setup-aliases.sh');
    const powershellScriptPath = path.join(__dirname, 'cli', 'setup-aliases.ps1');

    if (os.platform() !== 'win32') {
      // Linux/macOS
      exec(`chmod +x "${shellScriptPath}" && sh "${shellScriptPath}"`, (error, stdout, stderr) => {
        if (error) {
          vscode.window.showErrorMessage(`Error configurando aliases: ${error.message}`);
          return;
        }
        vscode.window.showInformationMessage('Aliases configurados correctamente.');
      });
    } else {
      // Windows
      exec(`powershell -File "${powershellScriptPath}"`, (error, stdout, stderr) => {
        if (error) {
          vscode.window.showErrorMessage(`Error configurando aliases: ${error.message}`);
          return;
        }
        vscode.window.showInformationMessage('Aliases configurados correctamente.');
      });
    }
  });

  // Agregar el comando al contexto de la extensión
  context.subscriptions.push(disposable);
}

/**
 * Función que se ejecuta cuando la extensión es desactivada.
 */
function deactivate() {}

// Exportar las funciones activate y deactivate
module.exports = {
  activate,
  deactivate,
};