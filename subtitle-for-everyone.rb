def translate(yandex_translate_id,subtittle_file,language)

	require 'yandex-translator'
	translator = Yandex::Translator.new(yandex_translate_id)


	file = File.open(subtittle_file)

	file_data = file.readlines.map(&:chomp)
	 
	a = 0

	while  a < file_data.length  do

		if !file_data[a].start_with?(/[0-9]/) and !file_data[a].empty?

				ceviri = translator.translate file_data[a], from: language


				file = File.read(subtittle_file) 
				filtered_data = file.gsub(file_data[a], ceviri) 

				File.open(subtittle_file, "w") do |f|
				  f.write(filtered_data)
				end	
		
		end

	   	a +=1
	end
end