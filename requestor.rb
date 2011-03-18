class Requestor
  @@id = 0
  attr_accessor :id, :name, :company, :address, :jobs_list

  def initialize
    @jobs_list = Array.new
    temp_id= @@id + 1
    @@id=temp_id
    @id = temp_id
  end

  def take_job_ownership=(job_object)
    job_object.requestor_id= @id
    @jobs_list << job_object
  end

  def list_created_jobs
    @jobs_list.each do |x|
      print "Job Id: #{x.id} \nJob Title: #{x.title} \nJob Description: #{x.description} \nSubmission Date: #{x.submission_date} \n \n "
    end
  end
end