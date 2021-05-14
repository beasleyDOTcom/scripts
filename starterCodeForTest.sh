#!/bash/script
echo "What's the name of this code challenge? (camelCase)"
read name

echo "const ${name} = require('../${name}.js');

describe('Basic test of ${name}', () => {
    it('should import ${name}', () => {
        expect(${name}()).not.toBeNull();
    });
});
" > ${name}.test.js
code $name.test.js
npm test $name.test.js

echo "You're only here once, Have Fun!"

