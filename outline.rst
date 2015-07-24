=======
Ansible
=======

-----------------------
And why it works for me
-----------------------

:Author: Charles L. Yost
:Date: 2015-07

----

Description
===========

A 45 minute overview of the what, where, how, and why of using Ansible. Covers alternatives, what Ansible is, what Ansible's dependencies are, jargon pertaining to Ansible, and what it can do to make your life easier. Also includes some tips and tricks for everyday use.


Speaker Bio
===========

Charles Yost is currently a Security Developer at Binary Defense Systems. He has worked in the IT industry for over 10 years in a wide variety of roles including: Printer Technician, VoIP  Systems Administrator, .Net Developer, and Web Developer. Throughout life his number one passion has been learning new skills. He can often be found researching a topic, attempting to keep up with the quickly evolving field of technology. Charles enjoys teaching and talking to others about technology. He is a member of NEOISF, and attends as many InfoSec conferences as he can justify with his wife.


Contact
=======

Twitter: @CHARLESLYOST

GitHub: Yoshi325

| This Talk:
| https://github.com/Yoshi325/talks-ansible


Showtime
========


Some Alternatives
=================

Here are some alternatives:

* Chef
* Puppet
* Salt (a.k.a. SaltStack)
* and **Many Others**

| Many differences exist between
| these alternatives and Ansible.
| We will review those differences later.

What is Ansible?
================

.. class:: current-visible fragment collapsable-fragment
  | DevOps made simple.
  | Deploy apps. Manage systems. Crush complexity.
  | Ansible is a powerful automation tool that you can learn quickly.

  `www.ansible.com <http://www.ansible.com/>`_

.. class:: current-visible fragment collapsable-fragment
  | Ansible is a free software platform for configuring and managing computers. It combines multi-node software deployment, ad hoc task execution, and configuration management.

  `Ansible (software) | Wikipedia <https://en.wikipedia.org/wiki/Ansible_(software)>`_

.. class:: fragment
  | A way to maintain sanity in the complex and ever-changing world of system configuration.

  .. class:: fragment
  `Me <http://chaosrestrained.com/>`_


What's In A Name
================

  | It was named "Ansible" after the fictional instantaneous hyperspace communication system featured in Orson Scott Card's Ender's Game, and originally invented by Ursula K. Le Guin for her 1966 novel Rocannon's World."

  `Ansible (software) | Wikipedia <https://en.wikipedia.org/wiki/Ansible_(software)>`_

.. class:: notes

And this will make some sense, later ...

.. class:: fragment

Also, Releases are named after Van Halen songs.


Server
======

(Control Machine)
-----------------

.. class:: fragment
Linux or Mac

.. class:: fragment
SSH

.. class:: fragment
Python (2.6 or later)


Client
======

(Managed Node)
--------------

.. class:: fragment
Linux, Mac, or Windows

.. class:: fragment
SSH or PowerShell

.. class:: fragment
Python (2.4 or later)

.. class:: notes research
Does Windows Require Python?

.. class:: fragment
**Thats it.**

.. class:: notes

  And that really is it. Ansible is a very slim setup.


Learn The Lingo
===============

.. class:: fragment
**Inventory**

.. class:: notes
* ini format
* list of hostnames or ips
* can also contain some variables
* can be grouped, and have grouped groups

.. class:: fragment
**Playbooks**

.. class:: notes
Ansible's documentation calls them it's orchestration language, and I feel it's pretty apt.

.. class:: fragment

  **Roles**

  **Tasks**

  **Handlers**

  **Variables**

.. class:: notes
* Roles allow a smaller, reusable orgizational unit for T, H, & V.
* Tasks are a combo of a thing to do, a name for it, if it should be done, and what should be done after it.
* Handlers are special post-playbook tasks, which are de-duped before they are ran.
* Variables provide flexibility for a role to be configured.
* These are the smallest pieces that make up playbooks.

.. class:: fragment
**Modules**

.. class:: notes
Modules (also referred to as “task plugins” or “library plugins”)
The tools you call on within a Task. Encapsulates an action, and the desired result.


Bonus Lingo
===========

.. class:: fragment
**Galaxy**

.. class:: fragment
**Tower** (Optional!)

.. class:: notes
#. Where you can find many community created roles; which can be educating and useful in creating your own.
#. Optional Commercial Product to Visualize and Manage via Ansible


Other Details
=============

.. class:: fragment current-visible collapsable-fragment

  **Ansible Is:**

  * Agentless
  * Configuration is done in YAML
  * Extendable (via Modules written in Python)
  * Primarilly Push Based (with an option for Pull)

.. class:: fragment current-visible collapsable-fragment

  **And It:**

  * Communicates via a JSON protocol
  * Uses a idempotent resource model
  * Has Cloud Integration

  | Rackspace Cloud Servers, OpenStack,
  | DigitalOcean Droplets, CloudStack,
  | Eucalyptus Cloud, AWS, VMware, and KVM


Putting it all Together
=======================

**DEMO**


Tips, Tricks, & Pitfalls
========================

How-To iterate over a list from a shell command:

.. class:: code
  | shell: /command/which/generates/lines
  | register: output
  | ...
  | when: item not in output.stdout_lines


Tips, Tricks, & Pitfalls
========================

Store host specific variables in a host_vars folder.


Tips, Tricks, & Pitfalls
========================

To only run a task when a list is **NOT** empty.

  when: list|length > 0


Tips, Tricks, & Pitfalls
========================

If your task hangs forever and is using sudo, confirm that you passed the:

  --ask-sudo-pass

comand line option when you ran ansible.


Tips, Tricks, & Pitfalls
========================

There are two ways to structure variables:

1. Dictionary:
  networking.interface.ip
2. Scalar:
  networking_interface_ip

The drawback to dictionaries is:
  when you set a value somewhere else, it will replace the **whole** dictionary. It does not merge it.


Back to Those Alternatives
==========================

.. class:: current-visible fragment collapsable-fragment

  **Chef**

  * Differences
    * Ruby/Erlang
    * Uses an agent by default
    * Only free up to 25 nodes
    * Split between Hosted and On Premise

  * Similarities
    * Cloud Support

.. class:: current-visible fragment collapsable-fragment

  **Puppet**

  * Differences
    * Ruby
    * Requires an agent
    * Split between Enterprise and Open Source
    * Enterprise is the Paid Tier
    * Largely GUI Driven

  * Similarities
    * Cloud Support

.. class:: current-visible fragment collapsable-fragment

  **Salt/SaltStack**

  * Differences
    * ZeroMQ (or RAET) instead of SSH

  * Similarities
    * Python


The End
=======


Resources and Credits
=====================

`Insanely complete Ansible playbook, showing off all the options <https://gist.github.com/phred/2897937>`_

`Insanely complete Ansible playbook, showing off all the options | marktheunissen's fork <https://gist.github.com/marktheunissen/2979474>`_

`Install Ansible, Create Your Inventory File, and Run an Ansible Playbook and Some Ansible Commands <http://thornelabs.net/2014/03/08/install-ansible-create-your-inventory-file-and-run-an-ansible-playbook-and-some-ansible-commands.html>`_

`Ansible (Real Life) Good Practices <https://www.reinteractive.net/posts/167-ansible-real-life-good-practices>`_

`USING ANSIBLE TO RESTORE DEVELOPER SANITY <http://tech.oyster.com/using-ansible-to-restore-developer-sanity/>`_

https://wikpedia.org

http://www.ansible.com/home
