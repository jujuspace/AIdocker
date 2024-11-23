# 1. Check Docker group
cat /etc/group | grep docker

# 2. Add current user to Docker group
sudo usermod -aG docker $USER

# 3. Activate Docker group
newgrp docker

# 4. Apply changes
source ~/.bashrc