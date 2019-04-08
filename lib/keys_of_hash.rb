
class Hash
  def keys_of(*arguments)
    match = []
    
    self.each {|key,value|
      if value == arguments.join
        match.push(key)
        next                  #skips to next key/value as argument is single element
      else
        arguments.each {|x|
          if value == x
            match.push(key)
          end
        }
      end
    }
    match
  end
end
