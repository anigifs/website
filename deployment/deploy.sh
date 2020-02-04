# Colors #
COLOR_LC="\033[1;36m"
COLOR_NC="\033[0m"
# Deployment #

clear
echo -e "${COLOR_LC}This Script is only intended to be used on taiga's Servers and may cause errors on other machines!${COLOR_NC}"
echo -e "${COLOR_LC}Proceeding in 5 seconds...${COLOR_NC}"
sleep 1s

clear
echo -e "${COLOR_LC}This Script is only intended to be used on taiga's Servers and may cause errors on other machines!${COLOR_NC}"
echo -e "${COLOR_LC}Proceeding in 4 seconds...${COLOR_NC}"
sleep 1s

clear
echo -e "${COLOR_LC}This Script is only intended to be used on taiga's Servers and may cause errors on other machines!${COLOR_NC}"
echo -e "${COLOR_LC}Proceeding in 3 seconds...${COLOR_NC}"
sleep 1s

clear
echo -e "${COLOR_LC}This Script is only intended to be used on taiga's Servers and may cause errors on other machines!${COLOR_NC}"
echo -e "${COLOR_LC}Proceeding in 2 seconds...${COLOR_NC}"
sleep 1s

clear
echo -e "${COLOR_LC}This Script is only intended to be used on taiga's Servers and may cause errors on other machines!${COLOR_NC}"
echo -e "${COLOR_LC}Proceeding in 1 second...${COLOR_NC}"
sleep 1s

clear
echo -e "${COLOR_LC}Starting Deployment...${COLOR_NC}"
cd /home/anigifs/website
echo -e "${COLOR_LC}Pulling Changes from Git...${COLOR_NC}"
git pull
echo -e "${COLOR_LC}Finished Pulling Changes from Git!${COLOR_NC}"
echo -e "${COLOR_LC}Updating Packages using Yarn...${COLOR_NC}"
yarn install
echo -e "${COLOR_LC}Finished Updating Packages using Yarn!${COLOR_NC}"
echo -e "${COLOR_LC}Building Nuxt Project...${COLOR_NC}"
yarn run nuxt build
echo -e "${COLOR_LC}Finished Building Nuxt Project!${COLOR_NC}"
echo -e "${COLOR_LC}Stopping Screen if existing...${COLOR_NC}"
screen -S anigifs-website -X quit
echo -e "${COLOR_LC}Starting Screen...${COLOR_NC}"
sudo /home/anigifs/website/deployment/start.sh