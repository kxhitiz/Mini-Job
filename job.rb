class Job
  attr_accessor :title, :id, :description, :period, :requestor_id
  @end_date
  @submission_date

  def initialize

  end

  def calculate_submission_date
    @submission_date = Time.now
  end

  def job_requestor
    puts "This job is requested by requestor of id: #{@requester_id}"
  end


  # def calculate

end