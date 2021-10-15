library(rvest)

link = "https://en.wikipedia.org/wiki/Comma-separated_values"
page = read_html(link)

table = page %>% html_node(".wikitable :nth-child(1)") %>% html_table()

write.csv(table, file="Cars")
read.csv("Cars")





