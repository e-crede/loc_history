class GpsLoggerController < ActionController::API
  def upload
    # TODO authenticate user and set real ID
    params[:user_id] = 1
    @payload = Location.new(gps_logger_params)
    if @payload.save
      render nothing: true, status: :ok
    else
      render nothing: true, status: :unprocessable_entity
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def gps_logger_params
    params.permit( :lat, :lon, :sat, :desc, :alt, :acc,
                                        :dir, :prov, :spd, :timestamp, :timeoffset,
                                        :time, :starttimestamp, :date, :batt,
                                        :ischarging, :aid, :ser, :act, :filename,
                                        :profile, :hdop, :vdop, :pdop, :dist,
                                        :user_id
                                      )
  end
end
