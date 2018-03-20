class OnlineBooking < ApplicationRecord

	MORNING_HOURS = ['9:00AM ~ 9:30AM', '9:30AM ~ 10:00AM', '10:00AM ~ 10:30AM',
									'10:30AM ~ 11:00AM', '11:00AM ~ 11:30AM','11:30AM ~ 12:00PM'] 
	AFTERNOON_HOURS = ['2:00PM ~ 2:30PM', '2:30PM ~ 3:00PM', '3:00PM ~ 3:30PM',
										'3:30PM ~ 4:00PM'] 
	BUSINESS_HOURS =  MORNING_HOURS + AFTERNOON_HOURS 

	self.per_page = 500

end
