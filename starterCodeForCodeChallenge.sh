#!/bash/script
echo "What's the name of this code challenge? (camelCase)"
read name

echo "'use strict'
 function ${name}(){ 

 } 
 module.exports = ${name}" > $name.js

code $name.js
echo "You're only here once, Have Fun!"