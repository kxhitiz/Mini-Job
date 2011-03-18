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
    if job_object.is_a?(Job)
      job_object.requestor_id= @id
      @jobs_list << job_object
    end
  end

  def create_job(title="No Title", description= "No Description",period=0)
    my_job= Job.new(title,description,period)
    my_job.requestor_id=@@id
    @jobs_list << my_job
    $all_jobs << my_job
  end

  def list_owned_jobs
    @jobs_list.each do |x|
      print "Job Id: #{x.id} \nJob Title: #{x.title} \nJob Description: #{x.description} \nSubmission Date: #{x.submission_date}\nJob Expires On: #{x.expire_date} \n \n "
    end
  end
end