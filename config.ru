require 'rack/contrib'
require 'rack-rewrite'
use Rack::Rewrite do
  rewrite '/', '/index.html'
end
use Rack::StaticCache, :urls => ['/images','/stylesheets','/js','/favicon.ico'], :root => "public"
use Rack::TryStatic, :root => "public", :urls => %w[/], :try => %w(.html .htm .xml .css .js .ico .jpg .png .gif .jpeg .bmp .tif .tiff .mid .midd .wav)
run lambda {|env| [404, {'Content-type' => 'text/plain'}, ['Not found']]}