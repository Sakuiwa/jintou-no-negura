# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

{"jinrou"=>"2",
 "murabito"=>"2",
 "uranai"=>"2",
 "reino"=>"2",
 "kyojin"=>"2",
 "room_id"=>"room_id",
 "commit"=>"配役決定"}

{ "role"=>{"jinrou"=>"2", "murabito"=>"2", "uranai"=>"2", "reino"=>"2", "kyojin"=>"2", "room_id"=>"1"}, "commit"=>"配役決定", "room_id"=>"1"}

binding pry
保存する前に　止めたい所に差し込む　
pry で止めた時は　exit で戻れる。

<%= form_tag(room_roles_path(:room_id)) do %>
        人狼<input type="number" name="jinrou">
        村人<input type="number" name="murabito">
        占い<input type="number" name="uranai">
        霊能者<input type="number" name="reino">
        狂人<input type="number" name="kyojin">
        <%= hidden_field_tag 'room_id', @room.id
 %>
        <%= submit_tag "配役決定" %>
     <% end %>



     if array_rolecard.length === @users.count
			 	i = 0
			 	@users.each do |user|
					user.rolecard = array_rolecard[i]
			 		@users.save 
			 		i++
			   	end
			   	redirect_to room_path(params[:room_id])
			 else
			 	redirect_to room_path(params[:room_id]),
			 end


			 