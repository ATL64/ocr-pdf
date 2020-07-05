# ocr-pdf

In this repo we have scripts to process pdf files using OCR (Optical Character Recognition) for german language characters.  The goal is to process a PDF (one where you can't select the text), 
and obtain a text file with the contents of the pdf.

It is mainly based on this post https://www.geeksforgeeks.org/python-reading-contents-of-pdf-using-ocr-optical-character-recognition/
which uses tesseract package for OCR.

I ran into dependency issues when following that tutorial, mainly when trying to install packages locally.  So the idea of these scripts is to:

- Start a VM in google cloud
- Install dependencies
- Process your PDF file in german language

# Instructions

1. Create a virtual machine in google cloud.  I used the following:
  - standard-n1 (1CPU 3.75G)
  - Ubuntu 18.04
  - Leave the rest as defaults.
2. SSH into the VM and run the commands in the vm_setup.sh file
3. Upload your file to the VM.  You can do this with the SSH browser in the GCP UI, it has an option to upload files using the UI.
4. Rename the file to "file.pdf"
5. Run python3 and all the commands in convert_file.py
6. Now download the resulting file called out_text.txt.  Again, you can do this in GCP UI, or you can scp the files.
7. Delete your VM

# Notes

This works for german characters.  For other languages, you should

- Change line 12 of the vm_setup.sh file, with the corresponding package found in https://packages.ubuntu.com/bionic/tesseract-ocr-all
- Change line 54 of the python file to specify your desired language.


