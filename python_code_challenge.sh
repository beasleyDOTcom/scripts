#!/bash/script
echo "What's the name of this code challenge? (snake_case)"
read name
mkdir $name
cd $name
# setup environment
poetry init -n
poetry add pytest
# setup files with starter code and open code editor
mkdir tests
cd tests
code .
touch __init__.py
# shout the following string into a cave and then direct the echo from the cave into this file  
echo "
def $name(argument):
    return argument
    " > $name.py
echo "from . $name import $name
def test_import_of_name():
    expected = 'True'
    actual = $name(True)
    assert actual == expected
    " > test_$name.py
# keep track of the last code challnge you worked on to enable your alias "lastpy" to take you straight to the editor of your last code challenge
cd ..
pwd > ~/scripts/last_py_cochalle.sh
# Be encouranging and promote health
echo "Accept the opportunity to stand up and stretch a little bit!"
echo "(Yes, you might look stupid but that's ok!)"


