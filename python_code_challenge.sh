#!/bash/script
echo "What's the name of this code challenge? (snake_case)"
read name
mkdir $name
cd $name
code .
mkdir __tests__
touch $name.py
cd __tests__
touch $name.test.py
echo "YOLO, Have Fun!"
