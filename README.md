# xkcd_knapsack


Solution to http://xkcd.com/287

## Getting Started

1. Clone the reop

	`git clone`
	
2. Install dependencies

	`bundle install`
	
3. Run specs

	`rspec`
	
4. Make CLI executable

	`chmod +x bin/cli`
	
## CLI Usage

`bin/cli -f <PATH_TO_FILE>`

or

`bin/cli --file <PATH_TO_FILE>`

_Either command will read the data file and output the different possible combinations of menu items where the sum of a combination equals the target price (the first line of the data file). If no combinations are found it will output..._ 

`No combination of menu items is equal in cost to the target price"`


