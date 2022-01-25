
(set-info :smt-lib-version 2.6)
(set-logic QF_ANIA)
(set-info :source |
Generated by: Alex Ozdemir
Generated on: 2021-12-13
Generator: Z3Py API
Application: Soundness counterexamples for a cryptographic argument
Target solver: cvc5, Z3

# The special soundness of PLONK's grand product argument

Let F be a prime-order field and n a natural less than F's size. Let n = {1,
2, .., n} be a subset of F. The PLONK[1] grand product argument relies on the
fact that given a permutation pi: [n] -> [n] and functions A, B: [n] -> [n],

    prod_i (A(i) + beta * i + gamma) = prod_i (B(i) + beta * pi(i) + gamma)

holds for random beta, gamma in F with good probability only when A composed
with pi is B.

Does this implication hold in a deterministic setting, where the above is
checked for distinct---but non-random---beta and gamma?

If it is checked for n+1 distinct values of beta, and for each value of beta,
n+1 distinct values of gamma, then yes. One can prove this.

If it is checked for 2 distinct values of beta, and for each value of beta, n+1
distinct values of gamma, then no.

This series of benchmarks checks the implication holds
* for varying n
* for a fixed permutation pi = (2 3 ... n 1)
* for all A and B
  * that must be equal ("same") or may differ ("diff")
* for all distinct 2 ("unsound") or n+1 ("sound") beta values

rather than instantiating gamma explicitly, we just check that the multisets

    {{A[i] + beta * i}}_i  ==  {{B[i] + beta * pi(i)}}_i

are equal.

[1]: https://eprint.iacr.org/2019/953

|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status sat)
; benchmark generated from python API
(set-info :status unknown)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
(declare-fun w__0 () Int)
(declare-fun v__0 () Int)
(declare-fun w__1 () Int)
(declare-fun v__1 () Int)
(declare-fun w__2 () Int)
(declare-fun v__2 () Int)
(declare-fun w__3 () Int)
(declare-fun v__3 () Int)
(declare-fun start () (Array Int Int))
(assert
 (and (distinct b__0 b__1) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 4))
(assert
 (<= v__0 4))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 4))
(assert
 (<= v__1 4))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 4))
(assert
 (<= v__2 4))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 4))
(assert
 (<= v__3 4))
(assert
 (let ((?x181 (* b__0 1)))
 (let ((?x259 (+ v__3 ?x181)))
 (let ((?x187 (* b__0 4)))
 (let ((?x182 (+ v__2 ?x187)))
 (let ((?x126 (* b__0 3)))
 (let ((?x117 (+ v__1 ?x126)))
 (let ((?x173 (* b__0 2)))
 (let ((?x172 (+ v__0 ?x173)))
 (let ((?x274 (store start ?x172 (+ (select start ?x172) 1))))
 (let ((?x78 (store ?x274 ?x117 (+ (select ?x274 ?x117) 1))))
 (let ((?x186 (store ?x78 ?x182 (+ (select ?x78 ?x182) 1))))
 (let ((?x149 (store ?x186 ?x259 (+ (select ?x186 ?x259) 1))))
 (let ((?x185 (+ w__3 ?x187)))
 (let ((?x79 (+ w__2 ?x126)))
 (let ((?x275 (+ w__1 ?x173)))
 (let ((?x180 (+ w__0 ?x181)))
 (let ((?x179 (store start ?x180 (+ (select start ?x180) 1))))
 (let ((?x95 (store ?x179 ?x275 (+ (select ?x179 ?x275) 1))))
 (let ((?x188 (store ?x95 ?x79 (+ (select ?x95 ?x79) 1))))
 (let ((?x53 (store ?x188 ?x185 (+ (select ?x188 ?x185) 1))))
 (= ?x53 ?x149))))))))))))))))))))))
(assert
 (let ((?x27 (* b__1 1)))
 (let ((?x110 (+ v__3 ?x27)))
 (let ((?x225 (* b__1 4)))
 (let ((?x233 (+ v__2 ?x225)))
 (let ((?x86 (* b__1 3)))
 (let ((?x96 (+ v__1 ?x86)))
 (let ((?x36 (* b__1 2)))
 (let ((?x31 (+ v__0 ?x36)))
 (let ((?x112 (store start ?x31 (+ (select start ?x31) 1))))
 (let ((?x160 (store ?x112 ?x96 (+ (select ?x112 ?x96) 1))))
 (let ((?x227 (store ?x160 ?x233 (+ (select ?x160 ?x233) 1))))
 (let ((?x244 (store ?x227 ?x110 (+ (select ?x227 ?x110) 1))))
 (let ((?x235 (+ w__3 ?x225)))
 (let ((?x161 (+ w__2 ?x86)))
 (let ((?x80 (+ w__1 ?x36)))
 (let ((?x157 (+ w__0 ?x27)))
 (let ((?x35 (store start ?x157 (+ (select start ?x157) 1))))
 (let ((?x147 (store ?x35 ?x80 (+ (select ?x35 ?x80) 1))))
 (let ((?x224 (store ?x147 ?x161 (+ (select ?x147 ?x161) 1))))
 (let ((?x124 (store ?x224 ?x235 (+ (select ?x224 ?x235) 1))))
 (= ?x124 ?x244))))))))))))))))))))))
(assert
 (let (($x270 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__0 v__3))))
 (not $x270)))
(check-sat)