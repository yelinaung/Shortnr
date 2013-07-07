helpers do
  include Rack::Utils

  def sht
    rand(36**8).to_s(36)
  end
end
