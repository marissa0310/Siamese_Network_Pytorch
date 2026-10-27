LINK=https://cedar.buffalo.edu/NIJ/data/signatures.rar

if [ ! -d "data" ]; then 
	mkdir data
fi 

if [ ! -f "data/signature.rar" ]; then 
	wget $LINK 
	mv signatures.rar data/
	cd data 
	unrar e signatures.rar -y 
fi 
