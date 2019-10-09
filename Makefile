default:
	make -C Web
	make -C CV
	make -C CVA
	make -C CVA-trans

clean:
	make -C Web clean
	make -C CV clean
	make -C CVA clean
	make -C CVA-trans clean

mrproper:
	make -C Web mrproper
