#!/bin/bash
mkdir -p baseFolder/{styles,scripts,database}
cd baseFolder || exit 1

cat > index.html <<'HTML'
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles/myStyle.css" />
        <script src="scripts/myScripts.js"></script>
        <title>My Home Page</title>
    </head>
    <body>
    </body>
</html>
HTML

echo "/* Styles go here */" > styles/myStyle.css
echo "// JavaScript starts here" > scripts/myScripts.js
# create an empty DB file
: > database/myDB.db