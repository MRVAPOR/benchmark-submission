(set-info :smt-lib-version 2.6)
(set-logic NRA)
(set-info :source |
Generated by: Johann-Tobias Aaron Raphael Schäg;
Generated on: 2022-02-22;
Generator: hand;
Application: Strassen-Matrix-Multiplication is an algorithm to do block 2x2 matrix multiplication using only 7 matrix multiplication. In this problem we try to find linear coefficient for summing the 7 pre-multiplied matrices, which should be trivial;
Target solver: cvc4, z3;
Publications: https://en.wikipedia.org/wiki/Strassen_algorithm
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status sat)

(assert 
(exists (
(w111 Real) (w112 Real) (w113 Real) (w114 Real) (w115 Real) (w116 Real) (w117 Real) (w121 Real) (w122 Real) (w123 Real) (w124 Real) (w125 Real) (w126 Real) (w127 Real) (w211 Real) (w212 Real) (w213 Real) (w214 Real) (w215 Real) (w216 Real) (w217 Real) (w221 Real) (w222 Real) (w223 Real) (w224 Real) (w225 Real) (w226 Real) (w227 Real) 
)
(forall ( (a11 Real) (a12 Real) (a21 Real) (a22 Real) (b11 Real) (b12 Real) (b21 Real) (b22 Real) )

(and 
(= (+ (* a11 b11) (* a12 b21)) (+ (* w111 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w112 (* (+ (* 0 a11) (* 0 a12) (* 1 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 0 b22)))) (* w113 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 1 b12) (* 0 b21) (* (- 1) b22)))) (* w114 (* (+ (* 0 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* (- 1) b11) (* 0 b12) (* 1 b21) (* 0 b22)))) (* w115 (* (+ (* 1 a11) (* 1 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w116 (* (+ (* (- 1) a11) (* 0 a12) (* 1 a21) (* 0 a22)) (+ (* 1 b11) (* 1 b12) (* 0 b21) (* 0 b22)))) (* w117 (* (+ (* 0 a11) (* 1 a12) (* 0 a21) (* (- 1) a22)) (+ (* 0 b11) (* 0 b12) (* 1 b21) (* 1 b22)))))) 
(= (+ (* a11 b12) (* a12 b22)) (+ (* w121 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w122 (* (+ (* 0 a11) (* 0 a12) (* 1 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 0 b22)))) (* w123 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 1 b12) (* 0 b21) (* (- 1) b22)))) (* w124 (* (+ (* 0 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* (- 1) b11) (* 0 b12) (* 1 b21) (* 0 b22)))) (* w125 (* (+ (* 1 a11) (* 1 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w126 (* (+ (* (- 1) a11) (* 0 a12) (* 1 a21) (* 0 a22)) (+ (* 1 b11) (* 1 b12) (* 0 b21) (* 0 b22)))) (* w127 (* (+ (* 0 a11) (* 1 a12) (* 0 a21) (* (- 1) a22)) (+ (* 0 b11) (* 0 b12) (* 1 b21) (* 1 b22))))))   
(= (+ (* a21 b11) (* a22 b21)) (+ (* w211 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w212 (* (+ (* 0 a11) (* 0 a12) (* 1 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 0 b22)))) (* w213 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 1 b12) (* 0 b21) (* (- 1) b22)))) (* w214 (* (+ (* 0 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* (- 1) b11) (* 0 b12) (* 1 b21) (* 0 b22)))) (* w215 (* (+ (* 1 a11) (* 1 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w216 (* (+ (* (- 1) a11) (* 0 a12) (* 1 a21) (* 0 a22)) (+ (* 1 b11) (* 1 b12) (* 0 b21) (* 0 b22)))) (* w217 (* (+ (* 0 a11) (* 1 a12) (* 0 a21) (* (- 1) a22)) (+ (* 0 b11) (* 0 b12) (* 1 b21) (* 1 b22))))))
(= (+ (* a21 b12) (* a22 b22)) (+ (* w221 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w222 (* (+ (* 0 a11) (* 0 a12) (* 1 a21) (* 1 a22)) (+ (* 1 b11) (* 0 b12) (* 0 b21) (* 0 b22)))) (* w223 (* (+ (* 1 a11) (* 0 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 1 b12) (* 0 b21) (* (- 1) b22)))) (* w224 (* (+ (* 0 a11) (* 0 a12) (* 0 a21) (* 1 a22)) (+ (* (- 1) b11) (* 0 b12) (* 1 b21) (* 0 b22)))) (* w225 (* (+ (* 1 a11) (* 1 a12) (* 0 a21) (* 0 a22)) (+ (* 0 b11) (* 0 b12) (* 0 b21) (* 1 b22)))) (* w226 (* (+ (* (- 1) a11) (* 0 a12) (* 1 a21) (* 0 a22)) (+ (* 1 b11) (* 1 b12) (* 0 b21) (* 0 b22)))) (* w227 (* (+ (* 0 a11) (* 1 a12) (* 0 a21) (* (- 1) a22)) (+ (* 0 b11) (* 0 b12) (* 1 b21) (* 1 b22)))))))
)
)
)

(check-sat)
(exit)