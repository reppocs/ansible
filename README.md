# my ansible
This is the ansible setup I use to configure my workstation(s). It's fine. It could be better.
Stop judging me.

*Inspiration by the lovely and talented [ThePrimeagen](https://github.com/ThePrimeagen).*

### roles
common
personal
work

Run the common/personal roles with personal.yml and the common/work roles with work.yml.

### variables
__theme__ - sets the desktop theme

values:
- [dracula](https://draculatheme.com/)
- [gruvbox](https://github.com/morhetz/gruvbox) (default)
- [nord](https://www.nordtheme.com/)

__window_manager__ - sets the....you know

values:
- bspwm (default)
- i3

### example run
`ansible-playbook -t install -e "theme=nord,window_manager=i3" personal.yml`

### notes

Run the init.sh script to set up your environment beforehand.

The common role has everything that gets installed and configured for either role.

The difference between the other roles consists of the software and configurations that are
installed. For example, I don't install discord and spotify on work hosts.

I create desktop vms in VirtualBox to test configurations, so most of the software in the personal
role doesn't get installed if the host is virtual.

I also have different bspwm and i3 configurations per role to set app defaults for the applications
that get installed for that particular role.

In my desktop configuration, bspwm uses polybar and i3 uses i3bar.

If you have any questions, holla atcha boy.
