```markdown
# Emby Docker Setup

This project provides an automated setup for running **Emby Server** in Docker with separate folders for videos and pictures.

## 🗂 Folder Structure

```

emby-docker/

docker-compose.yml

setup.sh

.env

config/          # Emby configuration data

media/

videos/      # Place your video files here

pictures/    # Place your picture files here

````

## ⚙ Configuration

Edit the `.env` file to customize:

```env
UID=1000                # Your user ID
GID=1000                # Your group ID
CONFIG_PATH=./config
VIDEOS_PATH=./media/videos
PICTURES_PATH=./media/pictures
````

To get your UID and GID:

```bash
id -u    # UID
id -g    # GID
```

## 🚀 Usage

1. Make sure Docker and Docker Compose are installed.
2. Run the setup script:

```bash
./setup.sh
```

3. Access Emby Server at [http://localhost:8096](http://localhost:8096).

## 📝 Notes

* Video files go in `media/videos/`.
* Picture files go in `media/pictures/`.
* Emby configuration and metadata are stored in `config/`.

## 🔄 Updating Emby

To pull the latest Emby image and restart:

```bash
docker compose pull
docker compose up -d
```

## 🛑 Stopping

```bash
docker compose down
```
