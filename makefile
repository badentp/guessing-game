README.md:
	touch README.md
	echo "## Guessing Game" > README.md
	echo "" >> README.md
	echo `date` >> README.md
	echo "" >> README.md
	echo `cat guessinggame.sh | wc -l` >> README.md
	
