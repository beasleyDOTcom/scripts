#!/bash/script
echo "What's the name of this code challenge? (snake_case)"
read name
mkdir $name
cd $name
code .
touch $name.py
touch $name.test.py
echo "YOLO, Have Fun!"
