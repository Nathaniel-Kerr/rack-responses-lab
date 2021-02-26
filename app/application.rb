class Application

    def call(env)
        #env[:timestamp] = Time.now
        resp = Rack::Response.new
        time = Time.now.hour
        puts time
        if time < 12
            resp.write "Good Morning!"
        elsif time > 12 
            resp.write "Good Afternoon!"
        end
        resp.finish 

    end
end 