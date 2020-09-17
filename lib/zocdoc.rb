require 'json'

def change_date_format(dates)
  better_dates = []
  dates.each do |date|
    if date.match?(/\A\d{4}\/\d{2}\/\d{2}\z/)
      better_dates << date.gsub('/', '')
    elsif date.match?(/\A\d{2}\/\d{2}\/\d{4}\z/)
      date_array = date.split('/')
      better_date_string = date_array.reverse.join('')
      better_dates << better_date_string
    elsif date.match?(/\A\d{2}\-\d{2}\-\d{4}\z/)
      date_array = date.split('-')
      better_date_string = date_array[2] + date_array[0] + date_array[1]
      better_dates << better_date_string
    end
  end
  better_dates.reject! do |date|
    date[4..5].to_i > 12
  end
  better_dates.reject! do |date|
    date[6..7].to_i > 31
  end
  better_dates
end


def sort_by_price_ascending(json_string)
  prices = JSON.parse(json_string)
  sorted_prices = prices.sort_by {|a| [a['price'], a['name']]}
  sorted_prices.to_json
end
