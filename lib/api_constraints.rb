class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:defualt]
  end

  def matches?(request)
    @default || request.headers['Accept'].include?("application/localhost:3000.v#{@version}")
  end
end