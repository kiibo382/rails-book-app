class FollowsController < ApplicationController
    def create
        follow = Follow.create(user_id: current_user.id, author_id: params[:author_id])
        if follow
            redirect_back(fallback_location: root_path)
        else
            redirect_back(fallback_location: root_path)
        end
    end

    def destroy
        follow = Follow.find_by(user_id: current_user.id, author_id: params[:author_id])
        if follow.destroy  
            redirect_back(fallback_location: root_path)
        else
            redirect_back(fallback_location: root_path)
        end
    end
end
