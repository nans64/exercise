require 'csv'

class Gossip

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save(x,y)

    CSV.open("./db/gossip.csv", "ab") do |csv|
    csv << [x, y]

    end
  end

  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

end