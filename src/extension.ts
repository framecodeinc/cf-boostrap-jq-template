// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';
import * as fs from 'fs-extra';
import * as path from 'path';

// This method is called when your extension is activated
// Your extension is activated the very first time the command is executed
export function activate(context: vscode.ExtensionContext) {
    let disposable = vscode.commands.registerCommand('cf-boostrap-jq-template.createProject', async () => {
        const targetFolder = await vscode.window.showOpenDialog({
            canSelectFolders: true,
            openLabel: 'Choose new project folder',
        });

        if (!targetFolder) {
            return;
        }

        const destination = targetFolder[0].fsPath;
        const source = path.join(context.extensionPath, 'templates', 'cf-boootstrap-jquery');

        try {
            await fs.copy(source, destination);
            vscode.window.showInformationMessage('Successfully created ColdFusion project with Bootstrap and JQuery.');
        } catch (err) {
            let errorMessage = 'Error creating project.';
            if (err instanceof Error) {
                errorMessage += ' ' + err.message;
            }
            vscode.window.showErrorMessage(errorMessage);
        }
    });

    context.subscriptions.push(disposable);
}

// This method is called when your extension is deactivated
export function deactivate() {}
