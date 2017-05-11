#!/bin/bash
COUNTER=1
while(true) do
./launch.sh
curl "https://api.telegram.org/bot339528449:AAEzzbGNhXcvjiDf_i-wPxb-Ze2PZ55At44/sendmessage" -F "chat_id=342293523" -F "text=#NEWCRASH-#TeleBeyond-Reloaded-${COUNTER}-times"
let COUNTER=COUNTER+1 
done
