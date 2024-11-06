//opening the file
cd C:\Users\Abdulrahim_Abdullah\Downloads\Assignment
bro
use "C:\Users\Abdulrahim_Abdullah\Downloads\hotels-europe_features.dta"

//analysing and transforming data
tabulate rating_count, missing
tabulate ratingta, missing
tabulate stars, missing
tabulate distance, missing
tabulate rating, missing
tabulate stars, missing
count
drop if missing(stars)
count
bro
tabulate rating, missing
drop if missing(rating)
count
bro rating
bro

//generating new variable
describe
drop ratingta neighbourhood distance_alter center2label ratingta_count city_actual
describe
egen n_rating= count(rating), by(stars)
bro
describe
egen m_rating=count(stars), by(rating)
bro
egen n_country= count(stars), by(country)
bro
egen m_country= count(country), by(stars)
bro
drop n_country n_rating m_rating
cd C:\Users\Abdulrahim_Abdullah\Downloads\Assignment

//Creating summary statistics 
sum
sum, detail
help hist

//Creating and saving graphs
hist rating, normal
help graph
graph save Graph
graph export "Mygraph.png", as(png) replace
