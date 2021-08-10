require './lib/enigma'

enigma = Enigma.new
input_file = File.open(ARGV[0], 'r')
key = ARGV[2]
date = ARGV[3]
init_message = input_file.read
input_file.close
dec_message = enigma.decrypt(init_message.to_s, key, date)
message = dec_message[:decryption]

decrypted = File.open(ARGV[1], 'w')
decrypted.write(message)
decrypted.close

puts "Created #{ARGV[1]} with the key #{dec_message[:key]} and the date #{Time.now.strftime('%d%m%y')}"
