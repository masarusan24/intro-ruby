# 3つの値を要素にもつリストを渡すと、逆順にして返却する
def sort_algo(sample_list)
  sample_list[0],sample_list[-1] = sample_list[-1],sample_list[0]
  return sample_list
end

sample_list = [2, 6, 3]
p sort_algo(sample_list)