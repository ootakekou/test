require 'logger'
 
logger = Logger.new('./filescan.log')
 
filename = "sample.txt"
 
begin
  File.foreach(filename) do |line|
  
    unless line.start_with?("#")

      logger.error("スキャンエラー: #{line.chomp}")

    else
      puts line
    end
  end
rescue => err
  logger.fatal("例外発生： #{err.message}")
  logger.fatal(err)
end