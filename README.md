Install Elixir 1.2 (on Mint 17)
=================================

##### A bash script that downloads, installs, and adds to $PATH both Erlang 18.3 and Elixir 1.2

This script installs Erlang 18.3 from source and Elixir 1.2
from precomplized zip. Installation took approximately
40 minutes with a crappy computer and crappy internet connetion.
This script should work (read: was only tested) on Mint
Rosa 17.3, but honestly should work on most Linux debian distros.

Installation
------------

Make sure when you clone this repo that the files will persist (not a tmp/ dir).

In bash:

1. ```git clone https://github.com/kofik/ErlangElixir.git```
1. ```cd ErlangElixir```
1. ```chmod u+x install_erlang_and_elixir.sh```
1. ```sudo ./install_erlang_and_elixir.sh```
1. Logout and Log in.

Running Elixir
--------------

After installation running ```$ iex``` should produce this output:

```elixir

Erlang/OTP 18 [erts-6.4] [source] [64-bit] [smp:4:4] [async-threads:10] [hipe] [kernel-poll:false]

Interactive Elixir (1.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> 


```
Check the original post here
https://github.com/DataMelon/install-elixir-1.0.4
