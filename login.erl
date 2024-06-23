-module(login).
-export([start/2 , init/1, loginuser/2]).


start(X,Y)->
    X -Y .
init (M)->
    M. 

loginuser(username, email)->
    username + email .
