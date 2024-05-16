# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react/README.md) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

Avoir NodeJs et Vite installés
## Initialiser un projet React :
Dans le dossier courant :
```bash
npm create vite@latest ./ 
```
Séléctionner le FM React
Séléctionner JS
puis :
```bash
yarn install 
```
ou 
```bash
npm install 
```
Privilégier le yarn install qui va installer les dépendances

## Lancer serveur :
```bash
yarn dev
```
ou 
```bash
npm run dev
```

## Installer Sass
```bash
yarn add -D sass
```

## Installer Axios
```bash
yarn add axios
```
## Installer Redux
```bash
npm i -s redux react-redux @reduxjs/toolkit @redux-devtools/extension
```
Puis installer sur le navigateur : reduxDevTools
Attention possibilité de réinstaller à chaque fois cette extension pour eviter les bugs de devTools

## Installer l'outil de formatage de date : Moment (voir component Post)
```bash
yarn add moment
```
