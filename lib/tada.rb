#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

# :name is optional, otherwise uses the basename of this executable

voiceList = %w(
Agnes     
Albert    
Alex      
Bad\ News  
Bahh      
Bells     
Boing     
Bruce     
Bubbles   
Cellos    
Deranged  
Fred      
Good\ News 
Hysterical
Junior    
Kathy     
Pipe\ Organ
Princess  
Ralph     
Trinoids  
Vicki     
Victoria  
Whisper   
Zarvox    
)

program :version, '1.0.0'
program :description, 'tada --voice VOICENAME --rate WORDS_PER_MINUTE'
program :help, 'voiceList', voiceList
default_command :tada

command :tada do |c|
  c.syntax = "tada [options]"
  c.description = "Say Tada!"
  c.option '--voice voiceName', String, 'Choose a voice'
  c.option '--rate Number', Integer, 'Words per minute'
  c.action do |args, options|
    options.default :voice => "Junior"
    options.default :rate  => 50
    speak "Tada", "#{options.voice}", "#{options.rate}"
  end
end