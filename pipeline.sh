echo Cleaning up....
rm *.csv
echo Downloading ...
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L
echo Unpacking ...
unzip rawdata.zip
echo Deleting temporarys...
rm *.tmp
echo Renaming ...
for f in *.txt
	do
	mv $f ${f/txt/csv}
	done
echo Available csv files ...
ls *.csv