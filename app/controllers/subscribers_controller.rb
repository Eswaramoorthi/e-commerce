class SubscribersController < ApplicationController

	def index
		@subscriber = Subscriber.all
	end

	def new
		@subscriber = Subscriber.new
	end

	def create
		#raise params.inspect
	    @subscriber = Subscriber.new(sub_params)   
	    if @subscriber.save   
	      flash[:notice] = 'subscribed'   
	      redirect_to "/subscribers/payment"   
	    else   
	      flash[:error] = 'Failed to subscribe video!'   
	      render :new 
	    end  
    end

    def payment

    end 

    private
    def sub_params
    	params.require(:subscriber).permit(:email, :validity)
    end 

end
