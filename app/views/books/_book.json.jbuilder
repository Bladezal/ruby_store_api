json.id book.id
json.name book.name
json.price book.price
json.author book.author
json.editor book.editor
json.platform do 
    json.partial! 'categories/category', category: book.category
end
json.description book.description