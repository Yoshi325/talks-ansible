=========
 Ansible
=========

--------------------------
 And why it works for me.
--------------------------

:Author: Charles Yost <charles.yost@binarydefense.com>
:Date: 2015-07
:Twitter: @charleslyost

----

.. image:: ANSI_logotype_web_white.png
  :height: 600px

.. class:: fragment

And why it works for me.


============
Alternatives
============
Here are some alternatives:

* Chef
* Puppet
* Salt (a.k.a. SaltStack)

.. class:: fragment

(somewhat ...)

.. class:: fragment

| Many differences exist between
| these alternatives and Ansible.

.. class:: notes

We will talk about those later.


================
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
  | A way to maintain sanity in a complex and ever-changing world involving system configuration.

  .. class:: fragment
  `Me <http://chaosrestrained.com/>`_


================
What's In A Name
================

  | It was named "Ansible" after the fictional instantaneous hyperspace communication system featured in Orson Scott Card's Ender's Game, and originally invented by Ursula K. Le Guin for her 1966 novel Rocannon's World."

`Ansible (software) | Wikipedia <https://en.wikipedia.org/wiki/Ansible_(software)>`_

.. class:: notes

And this will make some sense, later ...

.. class:: fragment

Also, Releases are named after Van Halen songs.


======
Server
======

.. class:: fragment
Linux or Mac

.. class:: fragment
SSH

.. class:: fragment
Python (2.4 or later)


======
Client
======

.. class:: fragment
Linux, Mac, or Windows

.. class:: fragment
SSH or PowerShell

.. class:: fragment
Python (2.4 or later)

.. class:: fragment
**Thats it.**

.. class:: notes

  And that really is it. Ansible is a very slim setup.


===============
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
The tools you call on within a Task. Encapsulates an action, and the desired result.


===========
Bonus Lingo
===========

.. class:: fragment
**Galaxy**

.. class:: fragment
**Tower** (Optional!)

.. class:: notes
#. Where you can find many community created roles; which can be educating and useful in creating your own.
#. Optional Commercial Product to Visualize and Manage via Ansible


=============
Other Details
=============

.. class:: fragment current-visible collapsable-fragment

  **Ansible Is:**

  * Agentless
  * Primarilly Push Based (Option for Pull)
  * Configuration is done in YAML (Mostly)
  * Extendable (via Modules written in Python)

.. class:: fragment current-visible collapsable-fragment

  **And It:**

  * Communicates via a JSON protocol
  * Uses a idempotent resource model
  * Has Cloud Integration

  | VMware, OpenStack, AWS,
  | Rackspace Cloud Servers,
  | DigitalOcean Droplets,
  | Eucalyptus Cloud, KVM,
  | and CloudStack


=======================
Putting it all Together
=======================

**DEMO**


========================
Tips, Tricks, & Pitfalls
========================

.. class:: fragment
  How-To iterate over a list from a shell command: .stdout_lines

.. class:: fragment
  host_vars folder


==========================
Back to Those Alternatives
==========================

* Chef
* Puppet
* **Salt/SaltStack**
  * Difference: ZeroMQ (or RAET) instead of SSH
  * Similarity: Python


=======
The End
=======

=====================
Resources and Credits
=====================
`Insanely complete Ansible playbook, showing off all the options <https://gist.github.com/phred/2897937>`_
`Insanely complete Ansible playbook, showing off all the options | marktheunissen's fork <https://gist.github.com/marktheunissen/2979474>`_
