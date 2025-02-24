# Utiliser une image de base officielle Python
FROM python:3.9-slim

# Ajouter des labels pour respecter les bonnes pratiques
LABEL Name="gestion_etudiants" \
            Version="1.0" \
            Maintainer="votre.email@example.com"

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . /app/

# Installer les dépendances de votre projet
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel Django sera exécuté
EXPOSE 8000



# Commande pour lancer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]