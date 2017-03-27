class RolecardsController < ApplicationController
	# ここでは配る役職のセットを作るよ！
	def create
			 @role = Role.find(params[:room_id])
			 @users = User.where("job = ?","GM").where(room_id: params[:id])
			 .or(User.where("job = ?","PL").where(room_id: params[:id]))
			 array1 = Array.new(@role.jinrou,"人狼")
			 array2 = Array.new(@role.murabito,"村人")
			 array3 = Array.new(@role.uranai,"占い師")
			 array4 = Array.new(@role.reino,"霊能者")
			 array5 = Array.new(@role.kyojin,"狂人")
			 array_rolecard = [array1,array2,array3,array4,array5]
			            .reduce([]){|result,a| result.concat(a)}
			            array_rolecard.shuffle!
			  if array_rolecard.length === @users.count
			  	array_rolecard.each do |i|
			 	@users.each do |user|
			 	user.job = i
			 	@users.save 
			    end
			  end
			 end
			 
		end
		def destroy
			
		end

end
