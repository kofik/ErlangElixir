install-erlang-17.5-and-elixir-1.0.4
====================================

##### A bash script that downloads, installs,and adds to $PATH both Erlang 17.5 and Elixir 1.0.4.

This script installs Erlang 17.5 from source and Elixir 1.0.4
from precomplized zip. Installation took approximately
40 minutes with a crappy computer and crappy internet connetion.
This script should work (read: was only tested) on Mint
Rebecca 17.1, but honestly should work on most Linux debian distros.

Setup
-----

1. Pull this into a directory that will persist (not a tmp directory) using ```$ git clone https://github.com/DataMelon/install-erlang-17.5-and-elixir-1.0.4.git```
1. ```cd install-install-erlang-17.5-and-elixir-1.0.4.git```
1. ```$ chmod u+x install_erlang_and_elixir.sh```
1. ```$ sudo ./install_erlang_and_elixir.sh```
1. Logout and Log in.

Running Elixir
--------------

After installation running ```$ iex``` should produce this output:

```bash

Erlang/OTP 17 [erts-6.4] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Interactive Elixir (1.0.4) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 


```