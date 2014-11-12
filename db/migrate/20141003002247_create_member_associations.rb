class CreateMemberAssociations < ActiveRecord::Migration
  def change
    create_table :member_associations do |t|
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
  end
end
