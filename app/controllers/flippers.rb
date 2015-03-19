get '/flippers' do
  @flippers = Flipper.all
  erb :'flipper/index'  
end

get '/flippers/new' do
  erb :'flipper/new' 
end

get '/flippers/:id' do
  @cur_flipper = Flipper.find_by(id: params[:id]) 

  if @cur_flipper
    erb :'flipper/show'
  else
    [404, 'No Fipper Found'] 
  end

end

get '/flippers/:id/edit' do 
  flipper = Flipper.find_by(id: params[:id])
  erb :'flipper/edit', locals: {cur_flipper: flipper} 
end

put '/flippers/:id' do
  cur_flipper = Flipper.find_by(id: params[:id])

  if cur_flipper 
    cur_flipper.name = params[:name]
    cur_flipper.age = params[:age]
    cur_flipper.quirk = params[:quirk]

    if cur_flipper.save
      redirect "/flippers/#{cur_flipper.id}"
    else
      [500, 'something went wrong']
    end

  else
    [404, "no flipper found"]
  end

end

post '/flippers' do 
  new_flipper = Flipper.new(name: params[:name],
                            age:  params[:age],
                            quirk: params[:quirk])
  if new_flipper.save 
    redirect "/flippers/#{new_flipper.id}" 
  else 
    [402,"You did something wrong"]
  end
  
end
