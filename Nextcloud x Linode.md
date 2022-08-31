# Part 1: Creating A Linode

0. Login to your Linode Account
1. Click "Create linode"
2. On distribution, Choose Ubuntu LTS (preferably latest)
3. On region, select the nearest server (Linode has its own speed test you can test. Click and it will open in new tab)
4. Under linode plan, choose Nanode under "Shared CPU" tab
5. Enter in your Linode name (this is not the same as your UNIX username). Leave tags empty
6. Enter root password (this is what going to be used in the LISH terminal). Make it easily rememberable.
7. Tick private IP
8. Click "Create Linode"
Wait for your linode to provisioning, booting, and running. Proceed to Part 2

# Part 2: Initializing user

7. When your linode has finished booting, click "Launch LISH console". Wait for Weblish to load terminal
8. On localhost login, enter in "root"
9. For password, enter in your password from **step 6**.
10. Enter in below command: 
  ```
  read -e -p "Enter in a new nickname: " nickname; adduser $nickname; usermod -aG sudo $nickname; logout;
  ```
  - *replace <nickname> with your short name* 
  - *enter in new password if asked. Make sure its rememberable, or just use the same password from STEP 6*
  - *any other questionaire that may asked by the terminal you can press enter to leave blank*

11. After logout, enter in your set nickname and password into the "localhost login".
  
# Part 3: Installing nextcloud

12. 
  ```
  sudo apt update; sudo apt upgrade; sudo snap install nextcloud; echo -e "Nextcloud setup has finished. Copy your linode IP address and enter into your browser. Create an admin account if required.";
  ```
