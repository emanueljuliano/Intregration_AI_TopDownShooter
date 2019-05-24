extends Label
var line
var res = ''
var line_len = 70
var num_lines = 17

func _ready():
	randomize()
	
	var file = File.new()
	random_book(file)
	
	text = random_line(file) #text that will appear in the label
	
	set_max_lines_visible(num_lines)
	
#Randomize the book
func random_book(file):
	var n = int(rand_range(1, 6))
	print('book', n)
	file.open("res://books/book" + str(n) + ".txt", file.READ)
	
#Randomize the lines
func random_line(file):
	var count = 0
	var line_num = rand_range(10, 3000)
	var content = ''
	
	while not file.eof_reached():
		count += 1;
		line = file.get_line()
		
		if count < line_num:
			continue
		elif  count < line_num + num_lines:  # gets the number of lines and add to content
			if len(line) > line_len:
				res = ''
				line = slice_string(line)
			content += line + '\n'
		else:
			break
	print('line', count)
	
	return content
	
#Limits the len of the line
func slice_string(s):
	if len(s) < line_len:
		return res
	res += s.left(line_len) + '\n'
	return slice_string(s.right(line_len))
	
	
	
	
	