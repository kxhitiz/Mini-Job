class Requestor
  @@id = 0
  attr_accessor :id, :name, :company, :address

  def initialize
    temp_id= @@id + 1
    @@id=temp_id
    @id = temp_id
  end

  def create_job=(job_object)
    job_object.requestor_id= @id
  end

end