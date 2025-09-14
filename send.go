package main

import (
	"fmt"
	"os"
)

func main() {

		// If no argument is provided, print an error message
		if len(os.Args) < 2 {
			fmt.Println("Error: No message provided")
			return
		}

    fmt.Println("Sending a message.")
		message := os.Args[1]
		fmt.Println("Sending >> ", message)

}
