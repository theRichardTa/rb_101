# lets try uniques only
# so bbbb, bb => 2
# replace with nil?

def solution(full_text, search_text)
  removed = full_text.split(/#{search_text}/)
  (full_text.length - removed.join.length) / search_text.length
end

p solution('aa_bb_cc_dd_bb_e', 'bb')