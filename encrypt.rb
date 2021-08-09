require "./lib/enigma"

enigma = Enigma.new
input_file =  File.open(ARGV[0], "r")
init_message = input_file.read
input_file.close
enc_message = enigma.encrypt(init_message.to_s)
message = enc_message[:encryption]

encrypted = File.open(ARGV[1], "w")
encrypted.write(message)
encrypted.close

puts "Created #{ARGV[1]} with the key #{enc_message[:key]} and the date #{Time.now.strftime('%d%m%y')}"
