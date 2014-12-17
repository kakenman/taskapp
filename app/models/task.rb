class Task < ActiveRecord::Base
  belongs_to :project
  validates :title,
      presence: {message: "入力して下さい"},
      length: {minimum: 3, message: "短い"}

  scope :unfinished, -> { where(done: false)}
end
