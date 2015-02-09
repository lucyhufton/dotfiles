# Create dir structure for Windows VMs if not already there and enter it
mkdir -p ~/VirtualBox\ VMs/modern.ie && cd ~/VirtualBox\ VMs/modern.ie

# Grab the VMs from modern.ie
echo "Grabbing the VMs from modern.ie - best leave me running in the background…this could take a while."
# IE8 Windows 7
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE8-Win7&parts=4&filename=VMBuild_20131127/VirtualBox/IE8_Win7/Mac/IE8.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar}"
# IE9 Window 7
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE9-Win7&parts=4&filename=VMBuild_20131127/VirtualBox/IE9_Win7/Mac/IE9.Win7.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar}"
# IE10 Window 8
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE10-Win8.1&parts=5&filename=VMBuild_20131127/VirtualBox/IE10_Win8/Mac/IE10.Win8.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar,5.rar}"
# IE11 Window 8.1
curl -O -L "https://www.modern.ie/vmdownload?platform=mac&virtPlatform=virtualbox&browserOS=IE11-Win8.1&parts=4&filename=VMBuild_20140402/VirtualBox/IE11_Win8.1/Mac/IE11.Win8.1.For.MacVirtualBox.part{1.sfx,2.rar,3.rar,4.rar}"

# Change permissions to executable
echo "Changing permissions…"
chmod +x IE8.Win7.For.MacVirtualBox.part1.sfx IE9.Win7.For.MacVirtualBox.part1.sfx IE10.Win8.For.MacVirtualBox.part1.sfx IE11.Win8.1.For.MacVirtualBox.part1.sfx

# Run .sfx to expand into .ova
echo "Running .sfx to expand into .ova for VirtualBox…"
./IE8.Win7.For.MacVirtualBox.part1.sfx
./IE9.Win7.For.MacVirtualBox.part1.sfx
./IE10.Win8.For.MacVirtualBox.part1.sfx
./IE11.Win8.1.For.MacVirtualBox.part1.sfx
echo "Done! You now have Windows VMs 😎"

# Create dir structure for Ubuntu VM if not already there and enter it
mkdir -p ~/VirtualBox\ VMs/ubuntu && cd ~/VirtualBox\ VMs/ubuntu

# Grab VMs from Ubuntu
echo "Grabbing Ubuntu VM…"
# Ubuntu 14.04.1 LTS
curl -O -L "http://releases.ubuntu.com/14.04.1/ubuntu-14.04.1-desktop-amd64.iso"

echo "Done! You now have a Ubuntu VM 😎"
