json.id game.id
json.name game.name
json.price game.price
json.platform do 
    json.partial! 'platforms/platform', platform: game.platform
end
json.description game.description