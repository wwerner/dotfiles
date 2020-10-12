# git-ics
# Place in your $PATH (e.g. ~/bin)
# Accepts any options that can be passed to git log
# usage: git ics [opts] > cal.ics

echo BEGIN:VCALENDAR
echo METHOD:PUBLISH
echo VERSION:2.0
echo PRODID:-//git-ics//git-ics//EN
echo CALSCALE:GREGORIAN

git log --date=iso8601 --pretty="hash:%H%ndate:%ad%nsummary:%s%n" "$@" | \
while read -r line; do

    prefix=$(cut -f 1 -d: <<< "$line")
    content=$(cut -f 2- -d: <<< "$line")

    # if commit
    if [ "$prefix" == "hash" ]; then
        echo BEGIN:VEVENT
        echo UID:$content
        echo LOCATION:$content
    fi

    # if date
    if [ "$prefix" == "date" ]; then
        DATE=$(date -juf "%Y-%m-%d %H:%M:%S %z" "$content" +"%Y%m%dT%H%M%SZ")
        echo DTEND:$DATE
        echo DTSTART:$DATE
    fi

    # if summary
    if [ "$prefix" == "summary" ]; then
        echo SUMMARY:$content
    fi

    if [ "$prefix" == "" ]; then
        echo END:VEVENT
    fi

done

echo END:VCALENDAR

