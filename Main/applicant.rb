class Applicant
  attr_accessor :first_name, :last_name, :address, :contact_email, :contact_number, :applied_jobs

  def initialize
    @applied_jobs = Array.new
  end

  def name
    puts "Applicant Name: #{@first_name} #{@last_name}"
  end

  def display_applied_jobs
    @applied_jobs
    @applied_jobs.each do |x|
      print "Job Id: #{x.id} \nJob Title: #{x.title} \nJob Description: #{x.description} \nSubmission Date: #{x.submission_date} \nJob Expires On: #{x.expire_date} \nJob Owned By: #{x.requestor_id} \n \n "
    end
  end

  def apply_for_job=(job_object)
    if job_object.is_a?(Job)
      @applied_jobs.push(job_object)
    end
  end
end