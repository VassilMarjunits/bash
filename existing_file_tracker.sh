# track until some file exist
while [ -f "/tmp/existing_file" ]; do  echo "watching file" && now="$(date)"; echo "$now file exist" >> /var/log/existing_file.log  && sleep 60; done;
