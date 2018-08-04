class Application
  def call(_env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1 == num_2 && num_1 == num_3
      resp.write 'You Win'
    else
      resp.write "#{num_1}\n"
      resp.write "#{num_2}\n"
      resp.write "#{num_3}\n"

      resp.write 'You Lose'
    end#if
    resp.finish
  end#call
end
