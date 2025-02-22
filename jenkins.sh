#Update System 
sudo ap update

# Install Java
sudo apt install fontconfig openjdk-17-jre

# Check Validity
java -version 

# Install Jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

# Enables Jenkins
sudo systemctl enable jenkins

# Start Jenkins
sudo systemctl start jenkins

# Jenkins In Docker Group
sudo usermod aG docker jeninks
