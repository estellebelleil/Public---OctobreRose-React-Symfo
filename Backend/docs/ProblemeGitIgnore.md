# Problème d'actualisation du gitignore



## Réinitialiser le gitignore
```bash
git rm -r --cached .
```

## Puis relancer le commit
```bash
git add .
git commit -m "réinitialisation"
git push
```