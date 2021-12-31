# traktor-meta-to-butt
Broadcast your Artist and Tracknames from Traktor to BUTT 


# Goal
During my internet radio shows, I need a solution which just puts Track and Artist Names out of Traktor DJ to Butt. So I did not reinvent the whee, I just want a free solution out of the 10 000 other ones out there.

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
Start Traktor. Put exact Info for Port and mount point into the server settings. The Metadafields there are free to input and the proxy settings we do not care. As the password is hackme. Please change it accordingly to your xml-config for icecast (Securtiy Please)

Take the smallest bitrate, as we are just only interested in the metadata, quality does not matter.

<img width="649" alt="Screenshot 2021-12-31 at 14 30 07" src="https://user-images.githubusercontent.com/8963529/147826674-7747ebd5-e194-411f-9405-d048f6351280.png">

In order to connect with the server push the Antenna Button one time. Wait 3 sec, you are really good to go if it looks cyan like this.

<img width="452" alt="Screenshot 2021-12-31 at 14 52 33" src="https://user-images.githubusercontent.com/8963529/147826730-3dd91c39-64e3-4e1f-844e-65f7ca9cbbd1.png">


# Run the Script
```
chmod +x spawnTrackInfo.sh 
./spawnTrackInfo.sh 
```

No a watcher should listen to play list changes, and write them after extra parsing into currentTrackName.txt, which is your ticket to BUTT. 



# Settings in BUTT
Tell the application to listen to file changes.
![Screenshot 2021-12-31 at 14 48 16](https://user-images.githubusercontent.com/8963529/147826520-9bedbe65-06cd-4303-8644-8d62a469623e.png)



# VOILA! :-)
