sudo su
cd ..
yes Y | apt-get update
yes Y | apt-get upgrade
yes Y | apt-get install git
yes Y | apt-get install wget

yes Y | apt install python3-dev python3-pip python3-venv


# The following is for german language.  For other languages check https://packages.ubuntu.com/bionic/tesseract-ocr-all
yes Y | apt-get install tesseract-ocr-deu 
# yes Y | apt-get install tesseract-ocr # For english


apt-get install -y poppler-utils

pip3 install Pillow
pip3 install pytesseract
pip3 install pdf2image
