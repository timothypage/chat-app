# README

# About

A simple, proof of concept chat application built with React and Rails ActionCable.
React isn't doing much at the moment, but I wanted to try out the new webpacker integration for rails :) seems like it works alright!


# Getting Started

this should work with any recent version of ruby (that rails supports), I'm not doing anything special, yet!

if you want to use docker to start Postgres/Redis

  docker-compose up -d

if not, its preconfigured to look for Postgres/Redis on local ports 5432 and 6379 repectively

then, the first time...

	bundle install
	yarn

	rails db:create
	rails db:schema:load

then

	foreman start

will start the web server

# TODO

 - [ ] integrate redux so we can start building out features like additional chat rooms, history, etc.  Redux will help keep the logic a lot cleaner...
 - [ ] store sent messages in the db for replay to clients that connect.
 - [ ] recall messages since a specific point in time or since a given message id
 - [ ] display online users
 - [ ] one-to-one messaging
 - [ ] end-2-end encryption w/ https://github.com/tonyg/js-nacl
 - [ ] styling!