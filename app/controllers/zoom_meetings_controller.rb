class ZoomMeetingsController < ApplicationController
  def join
    @username = params[:username]
    @meeting_number = params[:meeting_number]
    @password = params[:password]
    @leave_url = params[:leave_url]
    @zoom_client = ZoomRuby.new
    @role = params[:role]
    @signature = @zoom_client.get_signature({meeting_number: @meeting_number, password: @password, role: @role})
    @apikey = ZoomRuby.configuration.api_key
  end
end