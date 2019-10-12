class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
        render '/games/index'
    else
        render 'new'
    end
  end

  private
        def group_params
            params.require(:group).permit(:name, :text, :servername, :image).merge(user_id: current_user.id)
        end

end
