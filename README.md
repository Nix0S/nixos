# nixos
## Installation
Boot into new machine and aquire super user priviledges
`sudo -i`

Move into the /etc/nixos directory
`cd /etc/nixos`

Clone this repository to /etc/nixos
`git clone https://github.com/Nix0S/nixos /etc/nixos/`

Make the setup-partitions script executable and run it
`chmod +x setup-partitions`
`./setup-partitions`

Copy the resulting hardware-configuration.nix file to the /etc/nixos directory
`cp /mnt/etc/nixos/hardware-configuration.nix /etc/nixos/`

Modify the hardware-configuration.nix to add zstd compression and noatime BTRFS options to all the subvolumes
- @
- @home
- @snapshots


`"compress-force=zstd:1" "noatime" `

Copy the contents of this directory to the /mnt/etc/nixos/ directory
`cp /etc/nixos/* /mnt/etc/nixos/`

Move to the /mnt/etc/nixos/ directory and run the install 
`cd /mnt/etc/nixos`
`nixos-install --flake .#nixos ` #note - adjust based off the appropriate hostname

Reboot the system
