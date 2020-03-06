# README

* ok, need to give up on gems and manually do the api

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* Three Places

* # config/application.rb

* RSpotify::authenticate("<your_client_id>", "<your_client_secret>")

* # config/initializers/omniauth.rb

* require 'rspotify/oauth'
* Rails.application.config.middleware.use OmniAuth::Builder do
*  provider :spotify, "<your_client_id>", "<your_client_secret>", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
* end

* https://medium.com/@cam_irmas/crazy-train-exploring-the-spotify-api-with-rails-part-1-81eac0475cb1

* https://www.rubydoc.info/github/guilhermesad/rspotify/master/frames

* bundle rake db:create rake db:migrate rake db:test:prepare rake db:seed



* rails new rails_spotify_organizer  -d postgresql -T
* Add gem 'jquery-rails' to GemFile
* boostrap
* gems
* pry
* launchy
* rspec-rails
* figaro
* bundle exec OmniAuth
* bundle exec RSpotify
* bundle exec figaro install
* bundle exec rails generate rspec:install


* && Add group :development, :test do gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] gem 'rspec-rails' gem 'launchy' gem 'pry' end to Gemfile



* bundle install
* rake db:create
* rake db:migrate
* rake db:test:prepare
* rake routes
* rails s


* rails g scaffold Playlist name:string title:string content:text
* User
* Playlist
* Track
* Rate

figaro
https://github.com/laserlemon/figaro
create figaro files, see email.


rails g migration create_[class] (plural)

https://github.com/omniauth/omniauth


* 8:00 Research Spot API
* 9:00 trying to understand Spotify URI to log into my account.  My account was created with Facebook login.  So how do I use that in an API?
* spotify console https://developer.spotify.com/dashboard/applications/0d33cf4dd1554d0ca36a41cca75f7454
* 9:30 initial rails file, naming problem, need to start over
* 10:00 rusty start on rails, keep messing up naming conventions and having to teardown and restart.
* postman instructions https://documenter.getpostman.com/view/583/spotify-playlist-generator/2MtDWP?version=latest
* 10:30 started setup of files and diverted to prioritize making api connect in postman before anything else.
* 11:30 SUCCESSFUL postman connection to MY OWN playlists of my profile including playlists authored and shared from others.  YAYYYYYYYY!
12:00 to 1 - lunch
* 1:00 to 1:30 try to get a feel for the structure of the json object return.
OAuth 2.0 gem https://github.com/icoretech/omniauth-spotify
json object structure - https://developer.spotify.com/documentation/web-api/reference/object-model/#playlist-track-object
* rspotify gem https://rdoc.info/github/guilhermesad/rspotify/master/frames
* DO NOT FORGET that you have to update spotify console settings to update Redirect URIs.
* 3:00 Its amazing how much rails i forgot.  reviewing and trying to get rails s to show something


bundle exec figaro install

* Initial json objects to save to DB

*Playlist object*
* href - link to playlist
* id - spotify playlist id
* name - name of playlists
* tracks - array of playlist track objects

* iTunes *


*Saved Track Object*
* added_at - timestamp for added track

*Track Object*
* TITLE????
* album
* artist
* disc_number
* duration_ms - length
* href - API endpoint on track
* id - track spotify id
* preview_url - 30 second preview
* track_number
* uri - Spotify URI
* is_local
* iTunes * release date
* iTunes * year
* iTunes * artist website
* wiki link
* discogs link
* lyrics links
* iTunes * love
* bpm
* sample rate
*




*album*
* iTunes * release date
* iTunes * album Artist
* iTunes * compilation
* iTunes * sort album
* iTunes * sort album artist
* iTunes * album rating
* album love




*Rate Object - Need to verify new columns to add to record*
* genre
* Star Ratings
* Comments
* iTunes * category
* iTunes * description
* iTunes * grouping
* iTunes * kind
* iTunes * sort artist
* iTunes * sort album
* iTunes * sort name
* iTunes * greatest hits
* my genre def1
* my genre def2
* my genre def 3
* charted
* Era
* Personal era
* mood 1
* mood 2
* mood 3
* re-up frequency
* date added
* time on playlist









* genres is in the Artist and Album objects


* METHOD	ENDPOINT	USAGE	RETURNS
* POST	/v1/playlists/{playlist_id}/tracks	Add Tracks to a Playlist	-
* PUT	/v1/playlists/{playlist_id}	Change a Playlist's Details	-
* POST	/v1/users/{user_id}/playlists	Create a Playlist	-
* GET	/v1/me/playlists	Get a List of Current User's Playlists	playlists
* GET	/v1/users/{user_id}/playlists	Get a List of a User's Playlists	playlists
* GET	/v1/playlists/{playlist_id}/images	Get a Playlist Cover Image	list of image objects
* GET	/v1/playlists/{playlist_id}	Get a Playlist	playlist
* GET	/v1/playlists/{playlist_id}/tracks	Get a Playlist's Tracks	tracks
* DELETE	/v1/playlists/{playlist_id}/tracks	Remove Tracks from a Playlist	-
* PUT	/v1/playlists/{playlist_id}/tracks	Reorder a Playlist's Tracks	-
* PUT	/v1/playlists/{playlist_id}/tracks	Replace a Playlist's Tracks	-
* PUT	/v1/playlists/{playlist_id}/images	Upload a Custom Playlist Cover Image


Credit - https://github.com/guilhermesad/rspotify

https://material.io/design/
https://animista.net/
