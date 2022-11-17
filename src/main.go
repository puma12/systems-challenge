package main

import (
	"fmt"
	"net/http"
	"github.com/gorilla/mux"
)

func main() {
	r := mux.NewRouter()
        output := `{"hello":"world"}`

	r.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request) {
                w.Header().Set("Content-Type", "application/json")
		fmt.Fprintf(w, output)
	})
       	http.ListenAndServe(":8080", r)

}
