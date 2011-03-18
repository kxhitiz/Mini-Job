class Applicant
  attr_accessor :first_name, :last_name, :address, :contact_email, :contact_number, :job_apply
  @applied_jobs = Array.new(0)
  def name
    puts "Applicant Name: #{@first_name} #{@last_name}"
  end

  def display_applied_jobs
    @applied_jobs
  end

  def job_apply=(job_object)
    @applied_jobs << job_object
  end
end