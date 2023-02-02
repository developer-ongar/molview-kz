# molview-kz
Free desktop app for viewing molecular structures

```bat
git clone https://github.com/developer-ongar/molview-kz.git
```

```bat
npm install
```

## Importing your project into Forge
You can install Electron Forge's CLI in your project's devDependencies and import your existing project with a handy conversion script.
```bat
npm install --save-dev @electron-forge/cli
npx electron-forge import
```

To create a distributable, use your project's new make script, which runs the electron-forge make command.
```bat
npm run make
```
# Build (Mac, Windows, Linux)
```bat
electron-builder --mac
```
```bat
electron-builder --win
```
```bat
electron-builder --linux
```
