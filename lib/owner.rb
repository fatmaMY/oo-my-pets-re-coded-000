class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all=[]
  def self.all
  @@all
end
def self.reset_all
  @@all=[]
end
def self.count
  @@all.size
end
def initialize(species)
  @species=species
  @pets = {:fishes => [], :dogs => [], :cats => []}
self.class.all << self
end
def say_species
 "I am a #{@species}."
end
def buy_fish(fish_name)
  fish = Fish.new(fish_name)
   @pets[:fishes] << fish
end
def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end
  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
    def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    @pets[:dogs].each do |dog|
        dog.mood = "nervous"
      end
      @pets[:cats].each do |cat|
        cat.mood = "nervous"
      end
      @pets[:fishes].each do |fish|
        fish.mood = "nervous"
      end
      @pets.clear
    end
    def list_pets
      "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
end
end
