class RemoveDeviseInvitableFromPhotographer < ActiveRecord::Migration[6.0]
  def change
    remove_column :photographers, :invitation_token
    remove_column :photographers, :invitation_created_at
    remove_column :photographers, :invitation_sent_at
    remove_column :photographers, :invitation_accepted_at
    remove_column :photographers, :invited_by_type
    remove_column :photographers, :invitations_count
    remove_column :photographers, :invited_by_id
  end
end
