# send the index.html back to the client 
get '/' do
    File.read(File.join('app/views', 'index.html'))
  end
  