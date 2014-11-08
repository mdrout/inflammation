# This script will take two inputs the date yyyy-mm-dd and the filename
#
# We want to call as: add_data.sh  filename DATE location-of-raw-data
#
# 
# 1st use filename as an input into the python script to retrive the drug name
# But then than just prints something to the screen, how do I use that?
# This is how you save the out put into another variable.
DRUG=$(python ../src/assign_drug.py $1)
DEST=../data/$2/$2-$DRUG.dat

# Need to create subdirectory within the date
mkdir -p ../data/$2

# Copy the data
cp $3/$1 $DEST

# We are going to test adding backup to this
git add $DEST
COMMENT="This is new data $DEST"
#$COMMENT
git commit -m "'$COMMENT'"

echo "New data has been added to the repository"
