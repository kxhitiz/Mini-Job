class Job
  attr_accessor :title, :id, :description, :period, :requestor_id, :submission_date, :expire_date
  @@job_id=0
  @end_date

  def initialize (title="No Title", description= "No Description",period=0)
    temp_id = @@job_id + 1
    @@job_id = temp_id
    @id = @@job_id
    @title = title
    @description = description
    @period = period
    if (@period < 1)
      print "\n \n Warning!! Your Job Validity Period is Set to less than 1 Day \n \n"
      @period = 0
    end
    calculate_submission_date()
    calculate_expire_date()
  end

  def calculate_submission_date
    @submission_date = Time.now
  end

  def calculate_expire_date
    @expire_date = @submission_date + (@period * 24 * 60 * 60)
  end

  def job_requestor
    puts "This job is requested by requestor of id: #{@requester_id}"
  end

  def self.list_all_jobs
    $all_jobs
  end
end