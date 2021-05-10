#!/bash/script
echo "What's the name of this code challenge? (snake_case)"
read name
mkdir $name
cd $name
mkdir tests
cd tests
code .
touch $name.py
touch test_$name.py
echo "YOLO, Have Fun!"

