REPORTS="$(find ./ -type f -name "*.html")"
echo $REPORTS

for i in $REPORTS
do
    NAME="$(echo "$i" | cut -d '.' -f 3)"
    echo $NAME
    grep -Eo "\"id\":\"accessibility\",\"score\":....}" $i | cut -d ":" -f 3 | cut -d "}" -f 1 | sed -E "s/^/$NAME& /g" >> rank.txt
done

exec /bin/bash