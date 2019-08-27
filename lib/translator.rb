require "yaml"
require "pry"

def load_library (file_path)
  translator = YAML.load_file(file_path)
  new_translator = {}
  translator.each do |emotion, emoticons|
    if new_translator["get_meaning"]
      new_translator["get_meaning"][emoticons[1]] = emotion
      new_translator["get_emoticon"][emoticons[0]] = emoticons[1]
    else  
      new_translator["get_meaning"]= {emoticons[1] => emotion}
      new_translator["get_emoticon"] = {emoticons[0] => emoticons[1]}
    end
  end
  return new_translator
end

def get_japanese_emoticon (file_path, west_emot)
  new_translator = load_library (file_path)
  # return new_translator[get_emoticon][west_emot]

end

def get_english_meaning
  # code goes here
end
