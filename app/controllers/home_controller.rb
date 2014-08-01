class HomeController < ApplicationController

	def index
		@user_count = User.all.count
		@agendas = Agenda.all
	end
end
