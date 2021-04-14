#!/bin/bash
sudo cat <<EOF > /var/www/html/index.html
<h1><font color="black">Welcome to NGINX!!</h1>
 <h2> I am a student of devops-crash-course-spring-2021.
 I am number 25 in the devops-crash-course-spring-2021 </h2>
 <h1><font color="blue"> It's a server 2</h1>
EOF
sudo service nginx reload