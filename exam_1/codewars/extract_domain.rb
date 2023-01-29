# p "http://www.hello.com".scan('://')

def domain_name(url)
  if !url.scan('://').empty?
    chunks = url.split('://')
    chunks = chunks[1] if chunks.length > 1
  else
    chunks = url
  end
  chunks = chunks.split('.')
  if chunks[0] == 'www'
    chunks[1]
  else
    chunks[0]    
  end
end

p domain_name("www.cawww.com")