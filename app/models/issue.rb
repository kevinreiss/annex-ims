class Issue < ActiveRecord::Base
  ISSUE_TYPES = ["not_found", "not_for_annex", "aleph_error", "not_valid_barcode"].freeze

  validates :barcode, presence: true
  validates :issue_type, presence: true, inclusion: ISSUE_TYPES

  belongs_to :user
  belongs_to :resolver, class_name: "User"
end
