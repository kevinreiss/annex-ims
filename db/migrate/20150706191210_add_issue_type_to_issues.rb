class AddIssueTypeToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :issue_type, :string, null: false
    remove_column :issues, :message
  end
end
