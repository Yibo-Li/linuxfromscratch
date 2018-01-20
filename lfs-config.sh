#!/bin/bash
time ( /script/7.2.LFS-Bootscripts-20170626.sh && \
/script/7.4.Managing-Devices.sh && \
/script/7.5.General-Network-Configuration.sh && \
/script/7.6.System-V-Bootscript-Usage-and-Configuration.sh && \
/script/7.7.The-Bash-Shell-Startup-Files.sh && \
/script/7.8.Creating-the-etc-inputrc-File.sh && \
/script/7.9.Creating-the-etc-shells-File.sh && \
/script/8.2.Creating-the-etc-fstab-File.sh && \
/script/8.3.Linux-4.12.7.sh && \
/script/8.4.Using-GRUB-to-Set-Up-the-Boot-Process.sh && \
/script/9.1.The-End.sh ) 2>&1 | tee /build-$(date +%Y%m%dT%H%M%S).log
exit
