== ZHdK Rails development environment ==

This virtual machine gives you a complete development system for Ruby on Rails applications. The two important ZHdK Rails projects (MAdeK and leihs) are already installed as well.


= What do you get? =

 * Linux Mint Debian Edition
 * Ruby 1.8.7
 * RubyGems
 * MySQL client and server
 * Ruby-aware text editors: Kate and gedit
 * git
 * Node.js
 * Sphinx
 * leihs and MAdeK source code checkouts via git
 * All the dependencies of the above, preinstalled and preconfigured

This represents about 2 - 3 hours of setup work for a novice and several hours more for someone without experience, so you better enjoy it :)


= How to work with this environment =

To start a leihs server:

 1. Open a terminal
 2. cd Desktop/leihs
 3. rake ts:reindex ts:start
 4. rails s

You can then access leihs at http://localhost:3000

To start a MAdeK server:

 1. Open a terminal
 2. cd Desktop/madek
 3. rake ts:reindex ts:start
 4. rails s

To edit source code:

 1. Start gedit or kate, depending on your preferences.
 2. Edit the source in Desktop/madek or Desktop/leihs.
 3. Make sure the server of the project you're editing is running.
 4. Reloading localhost:3000 and the associated pages in your browser should reflect your changes.

To check in your changes:

 1. Create a GitHub account if you don't have one.
 2. Fork the project on GitHub.
 3. Add your fork as a new remote to the project you're working on. If you don't know how this works, see the "Pro Git" book. A link is on the desktop.
 4. Commit your changes using git commit and push them to your own fork on GitHub using git push.
 5. Send a pull request on GitHub to the user "psy-q" (that's Ramón Cahenzli)

Note: If you work at the ZHdK, don't check in your changes that way. These instructions are mostly for outside contributors. If you work at the ZHdK, ask for direct write permission on the GitHub projects instead.


= Contact =

If you run into trouble or  have any ideas or suggestions for this virtual machine, please write ramon.cahenzli@zhdk.ch
