class HomeController < ApplicationController
    
    
    def input
        @contents = Post.all
        
        
        @username = User.find(session[:user_id]).userid unless session[:user_id].nil?
        
    end
    
    def output
        cola = Post.new
        cola.title = params[:title]
        cola.article = params[:article]
        cola.writer = params[:writer]
        cola.pwd = params[:pwd]
        cola.save
     
        redirect_to '/'
    end
    
    def delete
        one = Post.find(params[:id])
        one.destroy
        redirect_to '/'
    end
    
    def edit
        @two = Post.find(params[:id])
    end
    
    def update
        @three = Post.find(params[:id])
        @three.title = params[:title]
        @three.writer = params[:writer]
        @three.article = params[:article]
        @three.pwd = params[:pwd]
        @three.save
        redirect_to '/'
    end
    
    def show
        @detail = Post.find(params[:id])
    end
    
    def ripple
        coke = Ripple.new
        coke.post_id = params[:postid]
        coke.rippler = params[:rippler]
        coke.ripple = params[:ripple]
        coke.pwd = params[:pwd]
        coke.save
        
        redirect_to "/home/show/#{coke.post_id}"
    end
    
    def jogin
        render layout:false
        if params[:join] 
            user = User.new
            user.userid = params[:userid]
            user.userpwd = params[:userpwd]
            user.save
            
        else
            who = User.where(userid: params[:userid], userpwd: params[:userpwd]).take
            return session[:user_id] = who.id unless who.nil?
        end
        
    end
    
    def logout
        reset_session
        redirect_to '/'
    end
        
    
end
