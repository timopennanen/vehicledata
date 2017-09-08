class VehicleController < ApplicationController
  def initialize
    @vehicles = []
    @limit = 15
  end

  def get_vehicles
    @limit = params['limit'] if params.key?('limit')
    if (params[:vehicle_type])
      @vehicles = Vehicle.where(kunta: params[:kunta], ajoneuvoluokka: params[:vehicle_type]
                               ).where.not(ensirekisterointipvm: nil
                                          ).order(ensirekisterointipvm: :desc, kayttoonottopvm: :desc
                                                 ).limit(@limit).to_a.map(&:serializable_hash)
    else
      @vehicles = Vehicle.where(kunta: params[:kunta]
                               ).where.not(ensirekisterointipvm: nil
                                          ).order(ensirekisterointipvm: :desc, kayttoonottopvm: :desc
                                                 ).limit(@limit).to_a.map(&:serializable_hash)
    end
    render json: @vehicles
  end
end
