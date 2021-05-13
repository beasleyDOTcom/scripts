#!/bash/script
echo "What's the name of this code challenge? (camelCase)"
read name
# setup js file with basic starter code
mkdir $name
cd $name

echo "'use strict'
 function ${name}(){ 
     return
 } 
 module.exports = ${name}" > $name.js

# setup basic test scaffolding
mkdir __tests__
cd __tests__

echo "const ${name} = require('../${name}.js');

describe('Basic test of ${name}', () => {
    it('should import ${name}', () => {
        expect(${name}()).not.toBeNull();
    });
});
" > ${name}.test.js
cd ..
code .
npm test $name.test.js

echo "You're only here once, Have Fun!"
