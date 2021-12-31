# Traktor Meta To Butt


<img width="100" alt="Screenshot 2021-12-31 at 14d 30 07" src="https://user-images.githubusercontent.com/8963529/147838853-55029b93-cabe-4e55-87d1-6e2efb5d5448.png"><img width="80" alt="Screenshot 2021-12-31 at 14dd 30 07" style="text-align:right;" src="https://user-images.githubusercontent.com/8963529/147838810-1a4d8d56-9d4a-45aa-b608-1bbc08a54275.png"><img width="100" alt="Screenshot 2021-12-31 at 14dd 30 07" src="https://user-images.githubusercontent.com/8963529/147838746-e877f952-f8f5-454a-9e0a-4e3c64481335.png">

Broadcast your Artist and Tracknames from Traktor to BUTT 

# Goal
During DJing in radio shows I was too long on the keyboard manually putting in Artists and Tracknames with my fingers to BUTT. I was searching for a solution, which just does it automatically. Now here it is. Even already battle tested.

Have FUN!


# Problem
Traktor broadcasts only icecast with ogg stream format. Furthermore is no icecast server shipped so I just put one there:


# Prepare
Clone this Repo and change into the new dir


# Install
``` 
brew install icecast
``` 

# Run Icecast Server
This will start an icecast server at next we want Traktor Sofware to talk to the server, right?
``` 
icecast -c icecast.xml
``` 


# Configure Traktor DJ Software for Broadcasting
Start Traktor. Put exact Info for Port and mount point into the server settings. You can set the ip of your icecast server or just localhost, if you are on the same station. The Metadafields there are free to input and the proxy settings we do not care. As the password is hackme. Please change it accordingly to your xml-config for icecast (Securtiy Please)

Take the smallest bitrate, as we are just only interested in the metadata, quality does not matter.

<img width="649" alt="Screenshot 2021-12-31 at 14 30 07" src="https://user-images.githubusercontent.com/8963529/147826674-7747ebd5-e194-411f-9405-d048f6351280.png">

In order to connect with the server push the Antenna Button one time. Wait 3 sec, you are really good to go if it looks cyan like this.

<img width="452" alt="Screenshot 2021-12-31 at 14 52 33" src="https://user-images.githubusercontent.com/8963529/147826730-3dd91c39-64e3-4e1f-844e-65f7ca9cbbd1.png">


# Run the Script
```
chmod +x spawnTrackInfo.sh 
./spawnTrackInfo.sh 
```

A file watcher should listen to play list changes, and write them after extra parsing into currentTrackName.txt, which is your ticket to BUTT.


# Settings in BUTT
Tell the application to listen to file changes.
![Screenshot 2021-12-31 at 14 48 16](https://user-images.githubusercontent.com/8963529/147826520-9bedbe65-06cd-4303-8644-8d62a469623e.png)



# VOILA! :-)
