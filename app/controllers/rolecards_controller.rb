class RolecardsController < ApplicationController
	# ここでは配る役職のセットを作るよ！
	def create
			 @role = Role.find(params[:room_id])
			 @users = User.where("job = ? or job = ?","GM , PL").where(room_id: params[:id])
			 array1 = Array.new(@role.jinrou,"人狼")
			 array2 = Array.new(@role.murabito,"村人")
			 array3 = Array.new(@role.uranai,"占い師")
			 array4 = Array.new(@role.reino,"霊能者")
			 array5 = Array.new(@role.kyojin,"狂人")
			 @rolecard = [array1,array2,array3,array4,array5]
			            .reduce([]){|result,a| result.concat(a)}
			            @rolecard.shuffle!
			  if @rolecard.length = @users.count
			  	@rolecard.each do |i|
			 	@users.each do |user|
			 	user.job = i
			    end
			  end
			 end
			 @users.save 
		end
		def destroy
			
		end

end
