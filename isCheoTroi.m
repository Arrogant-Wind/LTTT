function isCheoTroi= checkCheotroi(A)
  isCheoTroi=all(2*abs(dia(A))>sum(abs(A),2))
endfunction
