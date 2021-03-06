


larger = function(pair) {
   if(pair[1] > pair[2]) return(TRUE) else return(FALSE)
}



swap_if_larger = function(pair) {
    if(larger(pair)) {
        return(rev(pair)) 
    } else {
        return(pair)
    }
}




swap_pass = function(vec) { 
    for(i in seq(1, length(vec)-1)) {
        vec[i:(i+1)] = swap_if_larger(vec[i:(i+1)])
    }
    return(vec)
}





bubble_sort = function(vec) {
    new_vec = swap_pass(vec)
    if(isTRUE(all.equal(vec, new_vec))) { 
        return(new_vec) 
    } else {
        return(bubble_sort(new_vec))
    }
}



 test_vec = round(runif(100, 0, 100))
 bubble_sort(c(2, 24, 3, 4, 5, 13, 6, 1) )



 system.time(bubble_sort(test_vec))
  
  
 system.time(sort(test_vec))
   