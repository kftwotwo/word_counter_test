require('sinatra')
require('./lib/word_count')

get('/') do
  erb(:index)
end

get('/index') do
  @count = params.fetch('input1').word_counter(params.fetch("input2"))
  erb(:result)
end
