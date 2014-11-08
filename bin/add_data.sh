# This script will take two inputs the date yyyy-mm-dd and the filename
#
# We want to call as: add_data.sh  filename DATE
#
# 
# 1st use filename as an input into the python script to retrive the drug name
# But then than just prints something to the screen, how do I use that?
# This is how you save the out put into another variable.
DRUG=$(python ../src/assign_drug.py $1)

# Now we echo what this would have done
echo cp $1 ../data/$2/$2-$DRUG.dat
