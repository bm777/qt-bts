if [ -d "buildd" ]
then
    echo "This directory exist."
else
    echo "does not exist, create it manually"
    mkdir build
fi

cd build
cmake ..
make all
./file
