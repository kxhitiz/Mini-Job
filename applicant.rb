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
  end

  def applied_jobs=(job_object)
    @applied_jobs.push(job_object)
  end
end