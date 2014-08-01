class HomeController < ApplicationController

	def index
		@users_count = User.all.count
		@agendas = Agenda.all
	end
end
