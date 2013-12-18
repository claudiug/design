class AddDryTasks < Task
  def initialize
    super('add dry ingredients')
  end

  def get_time_required
    1.0
  end
end