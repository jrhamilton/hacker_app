class Upload < ActiveRecord::Base
  has_many :comments

  def vote(v)
    add = self.vote_count.to_i + v.to_i
    self.update(:vote_count => add)
  end

end
