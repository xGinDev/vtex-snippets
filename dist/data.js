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
exports.default = DataVTEX;
exports.hasVTEXToolbelt = hasVTEXToolbelt;
exports.hasVTEXSession = hasVTEXSession;
const fs = __importStar(require("fs"));
const path_1 = require("path");
const os_1 = require("os");
const VTEX_FOLDER = (0, path_1.join)((0, os_1.homedir)(), ".vtex");
const SESSION_FOLDER = (0, path_1.join)(VTEX_FOLDER, "session");
const SESSION = (0, path_1.join)(SESSION_FOLDER, "session.json");
const WORKSPACE = (0, path_1.join)(SESSION_FOLDER, "workspace.json");
function DataVTEX() {
    const { account, login } = JSON.parse(fs.readFileSync(SESSION, "utf8"));
    const { currentWorkspace } = JSON.parse(fs.readFileSync(WORKSPACE, "utf8"));
    return {
        login: account ? login : "Account",
        account: account ? account : "Disconnected",
        currentWorkspace: currentWorkspace ? currentWorkspace : "Disconnected",
        WORKSPACE,
    };
}
function hasVTEXToolbelt() {
    return fs.existsSync(VTEX_FOLDER);
}
function hasVTEXSession() {
    return fs.existsSync(SESSION_FOLDER);
}
