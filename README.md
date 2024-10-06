# About
This repository aims to automate the installation of AdGuardHome on a fresh Alpine Linux setup (LXC, VM, or bare metal), and maintain updates with periodic jobs, all while minimizing resource usage and achieving everything with a single script.

# Setup *alpine linux only
```SHELL
wget -qO - https://raw.githubusercontent.com/BenSabry/AdGuardHome/main/setup.sh | sh
```

# Screenshot of AdGuardHome running
*from AdGuardHome repo on github*
<p align="center">
  <img src="https://cdn.adtidy.org/public/Adguard/Common/adguard_home.gif" width="800"/>
</p>

# Tech/Tools
<b>*[AdGuardHome](https://adguard.com/)*</b>: AdGuard Home is a network-wide software for blocking ads and tracking. After you set it up, it'll cover ALL your home devices, and you don't need any client-side software for that.<br />

# Periodic Jobs
<b>Daily</b> AdGuardHome Update<br />
<b>Daily</b> Rotating logs<br />
<b>Weekly</b> System Upgrade<br />
