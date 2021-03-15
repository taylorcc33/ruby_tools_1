##### seeds.rb

require "faker"

10.times do |i|
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author
  )
end







##### App.js

import React, { useState } from 'react';
import Books from './Books'

const App = (props) => {
    const [books, setBooks] = useState([])
    let x = 1;
    const getBooks = () => {
       console.log('clicked, TODO: make this work') 
    }
   
    return (
      <div>
        <h1>Book Homework</h1>
        <button onClick={getBooks()}>Get Books From DataBase</button>
        <Books books={books} />
      </div>
    );

}

export default App;









##### Books.js

import React from 'react';

const Books = (props) => {
    const {books} = props
    return (
      <div>
        <h1>Books Component {books.length} books</h1>
      </div>
    );

}

export default Books;



##### books_controller

def app
  # render our app with no props, will get the data we need with axios calls
  render component: 'App'
end
 
 def index
   @books = Book.order(likes: :desc)
   
   # don't want to render component here just return data as JSON
   # render component: "Items", props: { items: @items }
   
   render json: @books
 end