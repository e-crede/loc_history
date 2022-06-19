Jun 16, 2022, 21:34:15

## Location History application
Application to display and visualise locations visited on a map
GPS coordinates imported for backend.


### Envisioned workflow

		
Backend - File Processing:
		- GPS coordinates will be extracted and stored within the database
			- some encryption should be foreseen(?)
		- After file is processing, Files shouldn't be kept

Backend - File Access
		- Every entry should have custom/adjustable names
		- by default only same user can edit the data
		- at least these fields needed: name (user editable), gps_points (non-editable), created_at, updated_at; other fields provided by GPS app can also be added
		- relationship: user has_many gps_routes
		
Frontend - User Functions
		 - Display individual list of routes
		 - Show single routes on map
		 - Overlay all routes on map
		 - Share individual routes via a link
		    - extern link is dynamically generated (uuid) and can be revoked by user at any time
		 - Delete individual routes
		 - display individual route statistics: time, speed, elevation etc.

Frontend - Registration
		 - Registration only via confirmation of admin user
		 - Terms & Conditions page and agreement msg
Non Func
		- Location is PPI, hence GDPR should be taken into account
		- disaster recovery - DB should be periodically backed up
		- https

# Rails Setup
## Rails App Setup
Assume: RVM and rails 3.1.1 installed

Install basis rails app with tailwind:
`rails new my-app --css tailwind`

N.B. local server shold be executed with `./bin/dev` not `./bin/rails s` command; - dev will rebuild tailwind assets.

### Troubleshooting
#### Project created with erros

ERROR OUTPUT:
 run  bundle install
[14467, #<Thread:0x00007f06f6f27c78 run>, #<NameError: uninitialized constant Gem::Source
      (defined?(@source) && @source) || Gem::Source::Installed.new
                                           ^^^^^^^^
FIX:
1. Execute `gem update bundle`
2. Delete app created with errors
3. create project again
#### Tailwind not fully setup
In case of initial installation it's possible that tailwind won't be full setup/configured. In this case manual steps within this guide should be followed and installation checked:
https://tailwindcss.com/docs/guides/ruby-on-rails
 

## Add react
==TODO==

## Devise Setup
https://github.com/heartcombo/devise

1. add to gemfile: `gem 'devise'`
2. exec `bundle install`
3. rails g devise:install
4. follow instructions as per devise:install output
5. rails g devise user
6. rails db:migrate
7. Optional - for customisation only:
	- `rails generate devise:views users`
	- `rails generate devise:controllers [scope]`

### Main helpers
- controllers: before_action :authenticate_user!
- views: user_signed_in?, current_user, user_session
n.b. - `user` is a model name


## Commit initial version to github
```
git init
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin git@github.com:e-crede/loc_history.git
git push -u origin main
```

# Features Development
## Frontend Scaffold
- [x] Scaffolf with fields: user, name, description, duration, gps_coords, gps_file
	- generator: rails g scaffold location name:string description:string duration:time gps_coords:string gps_file:string user:references
	- models: 
		- user.rb: `has_many :locations`
		- location.rb: `belongs_to :user`
- [ ] Manual file upload form
## Backend - File Upload:
- [ ] User specific credentials must be used to upload file or post message
- [ ] Upload must be done over encrypted connection
- [ ] Manual upload view can also be created (carrierwave)

# Misc - Ruby Cheat Sheet
#### Arrays
Init - Array.new, [], %w
read - [0],first,first(3),last,last(2)
append - push, <<, unshift
remove - pop, delete_at, shift
