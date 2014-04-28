LOG_FILE=$HOME/.unison/cron-unison.log

unison_run(){
    for profile in $(ls $HOME/.unison/*.prf | rev | cut -b5- | rev); do
        echo "Running unison for profile $(basename $profile)"
        unison -auto -batch $(basename $profile) >> $LOG_FILE
        echo ""
    done
}

if [ $(ls /dev/sdc5) ]; then
    SDC_5="/dev/sdc5"
fi

if [ $(ls /dev/sdb5) ]; then
    SDB_5="/dev/sdb5"
fi

if [ "$SDB_5$SDC_5" ]; then
    echo "$(date) : Running unison sync" >> $LOG_FILE
    unison_run;
    echo "\n" >> $LOG_FILE
else
    echo "$(date) : Not running unison sync : /dev/sdc5 or /dev/sdb5 not found" >> $LOG_FILE
fi
