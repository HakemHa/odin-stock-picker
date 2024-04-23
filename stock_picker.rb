def stock_picker(stocks)
    buy = 0
    sell = 0
    lbuy = 0
    (1...stocks.length).each do |i|
        if stocks[lbuy] > stocks[i]
            lbuy = i
        end
        if stocks[sell]-stocks[buy] < stocks[i]-stocks[lbuy]
            buy = lbuy
            sell = i
        end
    end
    ans = [buy, sell]
    return ans
end