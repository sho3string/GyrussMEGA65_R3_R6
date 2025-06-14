Gyruss for MEGA65
=================

Gyruss is a fast-paced tube shooter released by Konami in 1983, designed by Yoshiki Okamoto—who later created Street Fighter II. The game blends elements of Galaga with a unique circular movement system, allowing players to rotate 360 degrees around the screen’s center while shooting incoming waves of enemies. Players pilot a spacecraft on a journey from Neptune to Earth, battling enemy formations that emerge from the center of the screen and swirl outward.The game’s perspective creates a pseudo-3D effect, enhancing the sense of speed and immersion.

One of Gyruss’s standout features is its soundtrack, an energetic adaptation of Bach’s Toccata and Fugue in D minor, which adds to the intensity of the gameplay. The game was widely praised for its innovative mechanics and was ported to multiple home systems, including the NES and Commodore 64.

This core is based on the
[Arcade-Gyruss_MiSTer](https://github.com/sho3string/MiSTer-Arcade-Gyruss)
Gyruss itself is based on the wonderful work of [MrX-8B [MiSTer-X] & eubrunosilva](AUTHORS).

The core uses the [MiSTer2MEGA65](https://github.com/sy2002/MiSTer2MEGA65)
framework and [QNICE-FPGA](https://github.com/sy2002/QNICE-FPGA) for
FAT32 support (loading ROMs, mounting disks) and for the
on-screen-menu.

How to install on your MEGA65
-----------------------------
Download the powershell or shell script from the **CORE** directory depending on your preferred platform ( Windows, Linux/Unix and MacOS supported )

Run the script: a) First extract all the files within the zip to any working folder.

b) Copy the powershell or shell script to the same folder and execute it to create the following files.

**Ensure the following files are present and sizes are correct**  
![image](https://github.com/user-attachments/assets/e393b384-a31b-45ad-a356-166fec35892c)


For Windows run the script via PowerShell - Gyruss_rom_installer.ps1  
Simply select the script and with the right mouse button select the Run with Powershell.

For Linux/Unix/MacOS execute ./Gyruss_rom_installer.sh  
The script will automatically create the /arcade/gyruss folder where the generated ROMs will reside.  

Copy or move "arcade/gyruss" to your MEGA65 SD card: You may either use the bottom SD card tray of the MEGA65 or the tray at the backside of the computer (the latter has precedence over the first).  
