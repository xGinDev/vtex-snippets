const vscode = require("vscode");
const { exec } = require("child_process");
const os = require("os");
const path = require("path");

// 👇 Importa tu extensión compilada desde dist (si aplica)
const vtexStatus = require("./dist/extension");

/**
 * Función que se ejecuta cuando la extensión es activada.
 * @param {vscode.ExtensionContext} context
 */
function activate(context) {
  // 🟡 1. Crear y mostrar el StatusBarItem automáticamente al activar la extensión
  const statusBarItem = vscode.window.createStatusBarItem(
    vscode.StatusBarAlignment.Right,
    100
  );

  statusBarItem.text = "$(rocket) VTEX Snippets Ready";
  statusBarItem.tooltip = "VTEX IO Snippets are active";
  statusBarItem.command = "vtex-snippets.setupAliases"; // Al hacer clic ejecuta tu comando
  statusBarItem.show();

  // 🟢 2. Registrar el comando setupAliases (como antes)
  const disposable = vscode.commands.registerCommand(
    "vtex-snippets.setupAliases",
    function () {
      const shellScriptPath = path.join(__dirname, "cli", "setup-aliases.sh");
      const powershellScriptPath = path.join(__dirname, "cli", "setup-aliases.ps1");

      if (os.platform() !== "win32") {
        exec(
          `chmod +x "${shellScriptPath}" && sh "${shellScriptPath}"`,
          (error, stdout, stderr) => {
            if (error) {
              vscode.window.showErrorMessage(
                `Error configurando aliases: ${error.message}`
              );
              return;
            }
            vscode.window.showInformationMessage(
              "Aliases configurados correctamente."
            );
          }
        );
      } else {
        exec(`powershell -File "${powershellScriptPath}"`, (error) => {
          if (error) {
            vscode.window.showErrorMessage(
              `Error configurando aliases: ${error.message}`
            );
            return;
          }
          vscode.window.showInformationMessage(
            "Aliases configurados correctamente."
          );
        });
      }
    }
  );

  // 🧩 3. Si tu extensión compilada tiene su propio activate, ejecútalo también
  if (vtexStatus && typeof vtexStatus.activate === "function") {
    vtexStatus.activate(context);
  }

  // Registrar todo para limpiar al desactivar
  context.subscriptions.push(statusBarItem, disposable);
}

/**
 * Se ejecuta cuando la extensión es desactivada.
 */
function deactivate() {
  if (vtexStatus && typeof vtexStatus.deactivate === "function") {
    vtexStatus.deactivate();
  }
}

module.exports = {
  activate,
  deactivate,
};
