class Book
  @@on_shelf = []
  @@on_loan = []
  ##@@new_book = []

  attr_accessor :due_date

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def borrow
    if self.lent_out?
      return false
    else
      self.due_date = Book.current_due_date
      @@on_loan<<self
      @@on_shelf.delete(self)
      return true
   end
 end

  def return_to_library
    if self.lent_out? == false
      return false
    else
      @@on_shelf << self
      @@on_loan.delete(self)
    end
  end

  def lent_out?
    @@on_loan.each do |book|
      if book == self
        return true
      end
    end
    return false
  end

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    new_book
  end

  def self.current_due_date
   Time.now + (60*60*24*14)
  end

  def self.overdue_books
    overdue = []
    @@on_loan.each do |book|
      if @due_date < Time.now
        overdue << book
      end
    end
    overdue
  end

  def self.browse
    @@on_shelf.sample
  end

  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end


end
