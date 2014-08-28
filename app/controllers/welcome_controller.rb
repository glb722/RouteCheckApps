class WelcomeController < ApplicationController
  def index

  	@loggedIn = false; 
  	@password = params[:pass]
  	@username = params[:username]
    @routeType = params[:routeTypeId]
    session[:route_type_id] = params[:routeTypeId].to_i
    @day= Time.now.to_date
    session[:dayOfTheWeek]  = @day.strftime("%A")


    if(@routeType)
        redirect_to welcome_select_path
        @dailyType = params[:typeIn]
    end


  	if(checkLogin(@password, @username))
  		@loggedIn = true 
  	end 	
  end


  def select
  	@dailyType = params[:typeIn]
    
    session[:dailyType] = @dailyType.to_i
    if(@dailyType)
        redirect_to welcome_route_path
    end
  end



  def route
    @routePage = params[:route]
    @routeId = @routePage.to_i
    session[:routeId] = @routeId
    
    if(@routePage)
      redirect_to welcome_check_path
    end
  end

  def check
    @route_sub_type = RouteSubType.find_by_id(session[:dailyType])
  end




  def checkLogin(password, username)
  	if(password == "admin")
  		if(username == "admin")

  			return true
  		end
  	end
  end	

  
end
