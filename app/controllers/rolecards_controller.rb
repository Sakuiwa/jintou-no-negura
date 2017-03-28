class RolecardsController < ApplicationController
	# ここでは配る役職のセットを作るよ！
	def create
			 @role = Role.find_by(room_id: params[:room_id])
			 @users = User.where(room_id: params[:room_id])

			 array1 = Array.new(@role.jinrou,"人狼")
			 array2 = Array.new(@role.kyojin,"狂人")
			 array3 = Array.new(@role.kyosin,"狂信者")
			 array4 = Array.new(@role.murabito,"村人")
			 array5 = Array.new(@role.uranai,"占い師")
			 array6 = Array.new(@role.reino,"霊能者")
			 array7 = Array.new(@role.kariudo,"狩人")
			 array8 = Array.new(@role.kyoyu,"共有者")
			 array9 = Array.new(@role.neko,"猫又")
			 array10 = Array.new(@role.youko,"妖狐")
			 array11 = Array.new(@role.haitoku,"背徳者")
			 array_rolecard = [array1,array2,array3,array4,array5,array6,array7,array8,array9,array10,array11]
			            .reduce([]){|result,a| result.concat(a)}
			 array_rolecard.shuffle!

			 if array_rolecard.length === @users.count
			 	i = 0
			 	@users.each do |user|
					user.rolecard = array_rolecard[i]
			 		user.save 
			 		i += 1
			   	end
			   	redirect_to room_path(params[:room_id]),notice: "OK!!"
			 else
			 	redirect_to room_path(params[:room_id]),notice: "人数が足りないみたいだ!"
			 end
			 
		end


		def destroy
			
		end

end