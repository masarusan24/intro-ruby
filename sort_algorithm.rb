# クイックソート
def quick_sort(numbers)
  return numbers if numbers.length <= 1
  target = numbers.shift
  smallers = []
  biggers = []
  numbers.each do |number|
    if number < target
      smallers << number
    else
      biggers << number
    end
  end
  return quick_sort(smallers) + [target] + quick_sort(biggers)
end

# バブルソート
def bubble_sort(numbers)
  for i in 0..(numbers.length()-1)
    for j in 1..(numbers.length()-i-1)
      if numbers[j-1] > numbers[j]
        numbers[j-1], numbers[j] = numbers[j], numbers[j-1]
      end
    end
  end
  return numbers
end

# 選択ソート
def selection_sort(numbers)
  i = 0
  while i < numbers.length() - 1 do
    m_idx = i
    j = i + 1
    while j < numbers.length() do
      if numbers[j] < numbers[m_idx]
        m_idx = j
      end
      j += 1
    end
    numbers[m_idx],numbers[i] = numbers[i],numbers[m_idx]
    i += 1
  end
  return numbers
end
