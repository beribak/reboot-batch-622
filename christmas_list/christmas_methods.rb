
def etsyScrapper(gift_type)
    url = "https://www.etsy.com/search?q=#{gift_type}"
    
    response = URI.open(url).read

    html_doc = Nokogiri::HTML(response)

    new_hash = {} 
    html_doc.search(".v2-listing-card__info").each do |info|
        etsy_name = info.search(".text-truncate").text.strip
        etsy_price = info.search(".currency-value").text.strip
        new_hash[etsy_name] = [etsy_price, "[ ]"]
    end

    return new_hash
end

def storeInCSV(hash)

    csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
    filepath = 'gifts.csv'
    
    CSV.open(filepath, 'wb', csv_options) do |csv|
        hash.each do |name, arr|
         csv << [name, arr[0]]
       end
    end
end