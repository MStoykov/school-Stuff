#!/bin/sh
sed -i 's/<\/p><\/pre>//g' *java
sed -i 's/<pre><p>//g' *java
sed -i 's/&quot;/"/g' *java
sed -i 's/&gt;/>/g' *java
sed -i 's/&lt;/</g' *java

