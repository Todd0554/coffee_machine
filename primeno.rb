
students = ['Todd', 'Tom', 'Mike', 'Sherry']

def each (array)
    i = 0
    while i < array.count
        el = array[i]
        yield el
        i += 1
    end
end

each(students) do |student|
    puts student
end
    

