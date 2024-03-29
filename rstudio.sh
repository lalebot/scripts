apt update &&
# update indices
apt update -qq &&
# install two helper packages we need
apt install --no-install-recommends software-properties-common dirmngr -y &&
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: 298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc &&
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" &&

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2022.02.1-461-amd64.deb &&
apt install -f ./rstudio-2022.02.1-461-amd64.deb -y
