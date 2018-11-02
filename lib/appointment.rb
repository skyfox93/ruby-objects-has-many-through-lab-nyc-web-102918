class Appointment
attr_accessor :name,:date, :doctor,:patient


@@all=[]


def initialize(date=nil,doctor=nil,patient=nil)
  @date=date
  @doctor=doctor
  @patient=patient
  @@all << self

end

def self.all
  @@all
end

end #####
