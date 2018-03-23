(define (look-up given-key set)
        (cond ((null? set) #f)
              ((= given-key (key (entry set)))
               (entry set))
              ((> given-key (key (entry set)))
               (look-up (right-branch set)))
              ((< given-key (key (entry set)))
               (look-up (left-branch set)))))