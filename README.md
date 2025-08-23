# dotfiles

My personal dotfiles.

I use [Ansible](https://ansible.com) to install the software I want onto my computer.
Then, after **Ansible** has finished, I use [GNU stow](https://youtube.com/watch?v=y6XCebnB9gs)
to place the config files in the right directories using symbolic links.

It is assumed here that the host OS is a Debian-based Linux distribution, such as [Ubuntu](https://ubuntu.com/desktop) or [Kali Linux](https://kali.org).

## Installation

To install these dotfiles on a new machine...

1. Manually install [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) as well as your favourite programming languages

2. Remove `~/.bashrc` and any other files that will cause **stow** conflicts

3. Run `curl -fsSL https://raw.githubusercontent.com/maxbesley/dotfiles/main/scripts/bootstrap.sh | bash`

   Alternatively run the following
   ```
   git clone https://github.com/maxbesley/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   bash scripts/bootstrap.sh
   ```

4. Restart your computer

And that's it!

You will be prompted to enter your password a few times. Optionally to enter your password less you can follow
[these](https://askubuntu.com/questions/852527/how-do-i-stop-ubuntu-from-asking-for-my-password-every-time-i-install-something)
instructions prior to step three.


## Other miscellaneous tweaks

Here are some changes you can make to configure your **Linux** system further.

- Install [Flatpak](https://flatpak.org) for easy access to more apps.

- Change the **DNS** servers used for resolution by editing lines of
  the form `nameserver <ip address>` in the file `/etc/resolv.conf`.

