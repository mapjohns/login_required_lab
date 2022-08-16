class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create, :destroy]

    def main

    end

    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to '/login'
        else
            session[:name] = params[:name]
            redirect_to '/'
        end
    end

    def destroy
        session[:name] = nil unless session[:name].nil? 
        redirect_to '/'
    end

end