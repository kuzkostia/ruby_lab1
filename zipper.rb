require 'zip'

class Zipper 
  def self.create_archive(directory_path, temp_path, file_ext = 'rb')
    # Видаляємо файл в temp_path, якщо він існує
    File.delete(temp_path) if File.exist?(temp_path)

    # Перевірка, чи даний каталог існує
    unless File.directory?(directory_path)
      puts "Error: Directory '#{directory_path}' does not exist."
      return
    end

    # Перевірка, чи даний каталог не порожній
    file_names = Dir.entries(directory_path)
      .reject { |name| name == '.' || name == '..' || File.directory?(File.join(directory_path, name)) }
      .select { |name| File.extname(name) == ".#{file_ext}" }

    if file_names.empty?
      puts "Warning: No files with extension '.#{file_ext}' found in '#{directory_path}'."
      return
    end

    # Створення архіву та запис файлів (з відповідними іменами)
    Zip::File.open(temp_path, Zip::File::CREATE) do |zipfile|
      file_names.each do |filename|
        zipfile.add(filename, File.join(directory_path, filename))
      end
    end

    temp_path
  end
end