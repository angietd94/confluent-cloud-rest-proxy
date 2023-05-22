# confluent-cloud-rest-proxy
Let's try to host REST Proxy in localhost and make it work with CC.
<br>
Detailed video of every step here:<br>
----> 


<br>
First clone the git repo, and enter in the folder:

```
git clone https://github.com/angietd94/confluent-cloud-rest-proxy.git
cd confluent-cloud-hybrid-demo

```

<br>

##  Second part: Setting up CP on localhost with Docker! (REST PROXY IS INCLUDED) <br>

Then change the values in config.sh depending on your own account. <br>
You can find the description on how to find all values in this repo: <br>
https://github.com/angietd94/confluent-cloud-hybrid-demo <br>
Where also it is explained how to launch the script in the "Second part: Launching the script! " but basically this is just to have CP running (AND THEN REST PROXY included).

That basically is summaryzing: <br>
```
chmod +x executable.sh 
chmod +x config_files.sh
chmod +x config.sh
chmod +x ccloud-generate-cp-configs.sh
./executable.sh

<br>
