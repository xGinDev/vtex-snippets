"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.activate = activate;
const vscode = __importStar(require("vscode"));
const fs = __importStar(require("fs"));
const data_1 = __importStar(require("./data"));
let myStatusBarItem;
let accountStatusBarItem;
function activate(context) {
    if ((0, data_1.hasVTEXToolbelt)() && (0, data_1.hasVTEXSession)()) {
        const { login, account, currentWorkspace, WORKSPACE } = (0, data_1.default)();
        myStatusBarItem = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 1001);
        accountStatusBarItem = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 1002);
        myStatusBarItem.text = `$(git-merge) ${currentWorkspace}`;
        accountStatusBarItem.text = `$(account) ${account}`;
        myStatusBarItem.tooltip = `Workspace`;
        accountStatusBarItem.tooltip = `${login}`;
        myStatusBarItem.show();
        accountStatusBarItem.show();
        fs.watchFile(WORKSPACE, () => {
            const { login, account, currentWorkspace } = (0, data_1.default)();
            myStatusBarItem.text = `$(git-merge) ${currentWorkspace}`;
            myStatusBarItem.tooltip = `Workspace`;
            accountStatusBarItem.text = `$(account) ${account}`;
            accountStatusBarItem.tooltip = login;
        });
        context.subscriptions.push(myStatusBarItem);
        context.subscriptions.push(accountStatusBarItem);
    }
}
