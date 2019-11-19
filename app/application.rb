class Application
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item = req.path.split("/items/").last
      item
    else
      resp.write 404
      resp.status = 400
    end
  end
end