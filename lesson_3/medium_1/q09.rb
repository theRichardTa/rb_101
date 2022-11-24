def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)

# it'll return no.. foo method returns as yes no matter what
# bar(yes) would lead to a false on line 6 and result in no