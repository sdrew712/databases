log_file = open("um-server-01.txt") #opens text file that holds data


def sales_reports(log_file): #creates function sales_reports that uses the file
    for line in log_file: #for each line in the file
        line = line.rstrip() #removes whitespace
        day = line[0:3] #sets day from the 0th index to the 3rd, so the first 3 letters
        if day == "Mon": #if day is "Mon"
            print(line) #print the whole line


sales_reports(log_file) #calls the previous function and passes in the file
