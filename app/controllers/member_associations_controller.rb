class MemberAssociationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @member_associations = current_user.member_associations
    @group = Group.find(params[:group_id])
    member_association = @member_associations.new(group_id: @group.id)

    if member_association.save
      redirect_to @group, notice: 'Succesfully joined the group!'
    else
      render 'groups/#{@group.id}'
    end
  end
end
