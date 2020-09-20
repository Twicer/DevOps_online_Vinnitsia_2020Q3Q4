#!/bin/bash

# Custom log analizer v1.0.0 by Denys Koval


most_request_from_IP() {
    separate_Output
    awk '{print "\t" $1}' $1 | sort | uniq -c | sort -rh | head -1
}


requests_count_from_IP() {
    separate_Output
    if [ -z "$2" ]; then
        awk '{print $1}' $1 | sort | uniq -c | sort -h
    else
        awk '{print $1}' $1 | grep $2 | wc -l
    fi  
}


requests_from_defined_IP() {
    separate_Output
    awk '{print "\t" $1 " - " $9 " - " $7}' $1 | grep "$2" | sort | uniq
}


most_requested_page() {
    separate_Output
    awk '{print "- " $9 " - " $7}' $1 | sort | uniq -c | sort -gr | head -20
}


request_to_none_existent_page() {
    separate_Output
    awk '{ print "\t" $7 " - " $9}' $1 | grep 302 | sort | uniq
}


request_count_per_hour() {
    date=`awk '{print $4}' apache_logs.txt | cut -f2 -d "[" | cut -f1 -d: |uniq`
    count_point=0
    time_line=""
    if [ "$2" != "--all" ]; then
        for i in "$date"; do
            for j in {00..23}; do
                requests_count=`grep "$i:$j" $1 | wc -l`
                save_time="$i:$j"
                if [ $requests_count -gt $count_point ]; then
                    count_point=$[ requests_count ]
                    time_line=$save_time
                fi
            done
        done
        separate_Output
        printf "\t $time_line - $count_point requests \n"
    else
        separate_Output
        for i in "$date"; do
            for j in {00..23}; do
                requests_count=`grep "$i:$j" $1 | wc -l`
                save_time="$i:$j"
                if [ $requests_count -gt $count_point ]; then
                    printf "\t $save_time - $requests_count requests \n"
                fi
            done
        done
    fi
}


request_from_bots() {
    separate_Output
    awk '{print "(" $1 ") - "  $14 " - " $9}' $1 | grep -i bot | sort | uniq -c | sort -h
}


separate_Output() {
    # Separating lines
    printf '#%.0s' {1..50}
    printf '\n'
}


customMan() {
    echo "Custom log_analizer v1.0.0 by Denys Koval"

cat <<EOF
Usage: log_analizer [OPTION] [LOG FILE]
OPTIONS
    --mip
        Display from which IP address there were most requests and count requests.
    --rcount [LOG FILE] [IP]
        Display IP addresses from which there were requests and count it.
        If [IP] is defined count requests from that IP.
    --dip [LOG FILE] [IP]
        Display requested page, status code, and IP addresses from which there were requests.
        If [IP] is defined display requested page, status code only for thaе IP.
    --mpage
        Display requests count, status code, and URL of most requested pages.
    --npage       
       Display URL and status code of reqouest to none-existent pages.
    --hreq [LOG FILE] [--all]
        Display date, time, when there were most requests to site and count requests.
        If parametr [--all] is defined, display all date, time where there were requests to site and count requests
    --breq
        Display count, IP addresses, and status code requests from bots to site.
EOF
}


case "$1" in 
    --mip)      [ -n "$2" ] && most_request_from_IP $2 || customMan ;;
    --rcount)   [ -n "$2" ] && requests_count_from_IP $2 $3 || customMan;;
    --dip)      [ -n "$2" ] && requests_from_defined_IP $2 $3 || customMan ;;
    --mpage)    [ -n "$2" ] && most_requested_page $2 || customMan ;;
    --npage)    [ -n "$2" ] && request_to_none_existent_page $2 || customMan ;;
    --hreq)     [ -n "$2" ] && request_count_per_hour $2 $3 || customMan ;;
    --breq)     [ -n "$2" ] && request_from_bots $2 || customMan;;
    --help)     customMan ;;
    *)          customMan ;;
esac
