const vscode = require('vscode');
const { exec } = require('child_process');
const os = require('os');
const path = require('path');

// 👇 Importa tu extensión compilada desde dist
const vtexStatus = require('./dist/extension');

/**
 * Función que se ejecuta cuando la extensión es activada.
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
  // 🟡 Activa tu barra de estado VTEX
  if (vtexStatus && typeof vtexStatus.activate === 'function') {
    vtexStatus.activate(context);
  }

  // 🟢 Comando original setupAliases
  let disposable = vscode.commands.registerCommand('vtex-snippets.setupAliases', function () {
    const shellScriptPath = path.join(__dirname, 'cli', 'setup-aliases.sh');
    const powershellScriptPath = path.join(__dirname, 'cli', 'setup-aliases.ps1');

    if (os.platform() !== 'win32') {
      exec(`chmod +x "${shellScriptPath}" && sh "${shellScriptPath}"`, (error, stdout, stderr) => {
        if (error) {
          vscode.window.showErrorMessage(`Error configurando aliases: ${error.message}`);
          return;
        }
        vscode.window.showInformationMessage('Aliases configurados correctamente.');
      });
    } else {
      exec(`powershell -File "${powershellScriptPath}"`, (error, stdout, stderr) => {
        if (error) {
          vscode.window.showErrorMessage(`Error configurando aliases: ${error.message}`);
          return;
        }
        vscode.window.showInformationMessage('Aliases configurados correctamente.');
      });
    }
  });

  context.subscriptions.push(disposable);
}

function deactivate() {
  if (vtexStatus && typeof vtexStatus.deactivate === 'function') {
    vtexStatus.deactivate();
  }
}

module.exports = {
  activate,
  deactivate,
};
