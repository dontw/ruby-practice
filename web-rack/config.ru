# rack up
class Backdoor
  def initialize(app, who = "no one")
    @app = app
    @who = who
  end

  def call(env) # 入口
    status, headers, body = @app.call(env)

    body << "<br /> hacked by #{@who}"
    [
      status,
      headers,
      body,
    ]
  end
end

use Backdoor, "5xdoge"
use Backdoor, "4xdoge"
use Backdoor, "3xdoge"
use Backdoor, "2xdoge"
use Backdoor, "1xdoge"

run Proc.new { |env|
  [
    "200", # status
    { "Content-Type" => "text/html" }, # header
    ["Hello rack!"], # body
  ]
}

# excute order 
# proc
# use .. 1
# use ... 2
# ... 3 ...
