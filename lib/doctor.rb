class Doctor
attr_reader :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all << self
  end

def self.all
  @@all
end

def patients
  self.appointments.map{|appointment|appointment.patient}
end

  def new_appointment(patient,date)
  Appointment.new(date,self,patient)
  end

  def appointments
    Appointment.all.select{|appointment|appointment.doctor==self}
  end
end ####
