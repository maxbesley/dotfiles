# dotfiles

My personal dotfiles.

Here I use [Ansible](https://ansible.com) to install software I want onto my computer.
Then, after **Ansible** has finished, I use [GNU stow](https://www.youtube.com/watch?v=y6XCebnB9gs)
to place the config files in the right places using symbolic links.


## Installation

To install these dotfiles on a new machine...

1) Remove `~/.bashrc` and any other files that may cause **stow** conflicts

2) Run `curl -fsSL https://raw.githubusercontent.com/MaxBesley/dotfiles/main/scripts/bootstrap.sh | bash`

3) Activate the newly installed [Nerd Font](https://nerdfonts.com) from your terminal emulator's settings

4) Restart your computer

And that's it!

You will be prompted to enter your password a few times. Optionally to enter your password less you can follow
[these](https://askubuntu.com/questions/852527/how-do-i-stop-ubuntu-from-asking-for-my-password-every-time-i-install-something)
instructions prior to step two.


## Other miscellaneous tweaks

Here are some other changes you can make to configure your **Linux** system.

- Change the **DNS** servers used for resolution by editing lines of
  the form `nameserver <ip address>` in the file `/etc/resolv.conf`.

