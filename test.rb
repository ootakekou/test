require 'logger'
 
logger = Logger.new('./filescan.log')
 
filename = "rubytest.txt"
 
begin
  File.foreach(filename) do |n|
  
    unless n.start_with?("#")

      logger.error("スキャンエラー: #{n.chomp}")
      
    else
      puts n
    end
  end
rescue => err
  logger.fatal("例外発生： #{err.message}")
  logger.fatal(err)
end