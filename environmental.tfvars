resource "local_file" "fruits" {
filename = ["Apple.txt", "Banana.txt", "Mango.txt"]
content  = "I like fruits"
}
