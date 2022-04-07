
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
(set-info :status unsat)
; benchmark generated from python API
(declare-fun w__0 () Int)
(declare-fun v__0 () Int)
(declare-fun w__1 () Int)
(declare-fun v__1 () Int)
(declare-fun w__2 () Int)
(declare-fun v__2 () Int)
(declare-fun w__3 () Int)
(declare-fun v__3 () Int)
(declare-fun w__4 () Int)
(declare-fun v__4 () Int)
(declare-fun w__5 () Int)
(declare-fun v__5 () Int)
(declare-fun w__6 () Int)
(declare-fun v__6 () Int)
(declare-fun w__7 () Int)
(declare-fun v__7 () Int)
(declare-fun w__8 () Int)
(declare-fun v__8 () Int)
(declare-fun b__9 () Int)
(declare-fun b__8 () Int)
(declare-fun b__7 () Int)
(declare-fun b__6 () Int)
(declare-fun b__5 () Int)
(declare-fun b__4 () Int)
(declare-fun b__3 () Int)
(declare-fun b__2 () Int)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
(declare-fun start () (Array Int Int))
(assert
 (= v__0 w__0))
(assert
 (= v__1 w__1))
(assert
 (= v__2 w__2))
(assert
 (= v__3 w__3))
(assert
 (= v__4 w__4))
(assert
 (= v__5 w__5))
(assert
 (= v__6 w__6))
(assert
 (= v__7 w__7))
(assert
 (= v__8 w__8))
(assert
 (and (distinct b__0 b__1 b__2 b__3 b__4 b__5 b__6 b__7 b__8 b__9) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 9))
(assert
 (<= v__0 9))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 9))
(assert
 (<= v__1 9))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 9))
(assert
 (<= v__2 9))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 9))
(assert
 (<= v__3 9))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 9))
(assert
 (<= v__4 9))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 9))
(assert
 (<= v__5 9))
(assert
 (>= w__6 0))
(assert
 (>= v__6 0))
(assert
 (<= w__6 9))
(assert
 (<= v__6 9))
(assert
 (>= w__7 0))
(assert
 (>= v__7 0))
(assert
 (<= w__7 9))
(assert
 (<= v__7 9))
(assert
 (>= w__8 0))
(assert
 (>= v__8 0))
(assert
 (<= w__8 9))
(assert
 (<= v__8 9))
(assert
 (let ((?x834 (* b__0 1)))
 (let ((?x707 (+ v__8 ?x834)))
 (let ((?x418 (* b__0 9)))
 (let ((?x123 (+ v__7 ?x418)))
 (let ((?x146 (* b__0 8)))
 (let ((?x635 (+ v__6 ?x146)))
 (let ((?x495 (* b__0 7)))
 (let ((?x926 (+ v__5 ?x495)))
 (let ((?x925 (* b__0 6)))
 (let ((?x634 (+ v__4 ?x925)))
 (let ((?x1211 (* b__0 5)))
 (let ((?x666 (+ v__3 ?x1211)))
 (let ((?x443 (* b__0 4)))
 (let ((?x778 (+ v__2 ?x443)))
 (let ((?x683 (* b__0 3)))
 (let ((?x780 (+ v__1 ?x683)))
 (let ((?x721 (* b__0 2)))
 (let ((?x798 (+ v__0 ?x721)))
 (let ((?x784 (store start ?x798 (+ (select start ?x798) 1))))
 (let ((?x176 (store ?x784 ?x780 (+ (select ?x784 ?x780) 1))))
 (let ((?x469 (store ?x176 ?x778 (+ (select ?x176 ?x778) 1))))
 (let ((?x636 (store ?x469 ?x666 (+ (select ?x469 ?x666) 1))))
 (let ((?x651 (store ?x636 ?x634 (+ (select ?x636 ?x634) 1))))
 (let ((?x917 (store ?x651 ?x926 (+ (select ?x651 ?x926) 1))))
 (let ((?x429 (store ?x917 ?x635 (+ (select ?x917 ?x635) 1))))
 (let ((?x1228 (store ?x429 ?x123 (+ (select ?x429 ?x123) 1))))
 (let ((?x671 (store ?x1228 ?x707 (+ (select ?x1228 ?x707) 1))))
 (let ((?x137 (+ w__8 ?x418)))
 (let ((?x360 (+ w__7 ?x146)))
 (let ((?x916 (+ w__6 ?x495)))
 (let ((?x684 (+ w__5 ?x925)))
 (let ((?x789 (+ w__4 ?x1211)))
 (let ((?x372 (+ w__3 ?x443)))
 (let ((?x764 (+ w__2 ?x683)))
 (let ((?x783 (+ w__1 ?x721)))
 (let ((?x43 (+ w__0 ?x834)))
 (let ((?x274 (store start ?x43 (+ (select start ?x43) 1))))
 (let ((?x293 (store ?x274 ?x783 (+ (select ?x274 ?x783) 1))))
 (let ((?x384 (store ?x293 ?x764 (+ (select ?x293 ?x764) 1))))
 (let ((?x986 (store ?x384 ?x372 (+ (select ?x384 ?x372) 1))))
 (let ((?x80 (store ?x986 ?x789 (+ (select ?x986 ?x789) 1))))
 (let ((?x833 (store ?x80 ?x684 (+ (select ?x80 ?x684) 1))))
 (let ((?x920 (store ?x833 ?x916 (+ (select ?x833 ?x916) 1))))
 (let ((?x509 (store ?x920 ?x360 (+ (select ?x920 ?x360) 1))))
 (let ((?x723 (store ?x509 ?x137 (+ (select ?x509 ?x137) 1))))
 (= ?x723 ?x671)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x524 (* b__1 1)))
 (let ((?x410 (+ v__8 ?x524)))
 (let ((?x1229 (* b__1 9)))
 (let ((?x1247 (+ v__7 ?x1229)))
 (let ((?x747 (* b__1 8)))
 (let ((?x754 (+ v__6 ?x747)))
 (let ((?x455 (* b__1 7)))
 (let ((?x394 (+ v__5 ?x455)))
 (let ((?x947 (* b__1 6)))
 (let ((?x690 (+ v__4 ?x947)))
 (let ((?x1109 (* b__1 5)))
 (let ((?x1110 (+ v__3 ?x1109)))
 (let ((?x259 (* b__1 4)))
 (let ((?x338 (+ v__2 ?x259)))
 (let ((?x425 (* b__1 3)))
 (let ((?x853 (+ v__1 ?x425)))
 (let ((?x1388 (* b__1 2)))
 (let ((?x1389 (+ v__0 ?x1388)))
 (let ((?x1366 (store start ?x1389 (+ (select start ?x1389) 1))))
 (let ((?x96 (store ?x1366 ?x853 (+ (select ?x1366 ?x853) 1))))
 (let ((?x1000 (store ?x96 ?x338 (+ (select ?x96 ?x338) 1))))
 (let ((?x122 (store ?x1000 ?x1110 (+ (select ?x1000 ?x1110) 1))))
 (let ((?x1238 (store ?x122 ?x690 (+ (select ?x122 ?x690) 1))))
 (let ((?x1395 (store ?x1238 ?x394 (+ (select ?x1238 ?x394) 1))))
 (let ((?x581 (store ?x1395 ?x754 (+ (select ?x1395 ?x754) 1))))
 (let ((?x178 (store ?x581 ?x1247 (+ (select ?x581 ?x1247) 1))))
 (let ((?x745 (store ?x178 ?x410 (+ (select ?x178 ?x410) 1))))
 (let ((?x1378 (+ w__8 ?x1229)))
 (let ((?x487 (+ w__7 ?x747)))
 (let ((?x1034 (+ w__6 ?x455)))
 (let ((?x989 (+ w__5 ?x947)))
 (let ((?x235 (+ w__4 ?x1109)))
 (let ((?x1001 (+ w__3 ?x259)))
 (let ((?x313 (+ w__2 ?x425)))
 (let ((?x660 (+ w__1 ?x1388)))
 (let ((?x861 (+ w__0 ?x524)))
 (let ((?x582 (store start ?x861 (+ (select start ?x861) 1))))
 (let ((?x38 (store ?x582 ?x660 (+ (select ?x582 ?x660) 1))))
 (let ((?x905 (store ?x38 ?x313 (+ (select ?x38 ?x313) 1))))
 (let ((?x75 (store ?x905 ?x1001 (+ (select ?x905 ?x1001) 1))))
 (let ((?x349 (store ?x75 ?x235 (+ (select ?x75 ?x235) 1))))
 (let ((?x603 (store ?x349 ?x989 (+ (select ?x349 ?x989) 1))))
 (let ((?x768 (store ?x603 ?x1034 (+ (select ?x603 ?x1034) 1))))
 (let ((?x1246 (store ?x768 ?x487 (+ (select ?x768 ?x487) 1))))
 (let ((?x1375 (store ?x1246 ?x1378 (+ (select ?x1246 ?x1378) 1))))
 (= ?x1375 ?x745)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x156 (* b__2 1)))
 (let ((?x1023 (+ v__8 ?x156)))
 (let ((?x624 (* b__2 9)))
 (let ((?x388 (+ v__7 ?x624)))
 (let ((?x238 (* b__2 8)))
 (let ((?x824 (+ v__6 ?x238)))
 (let ((?x1069 (* b__2 7)))
 (let ((?x534 (+ v__5 ?x1069)))
 (let ((?x951 (* b__2 6)))
 (let ((?x952 (+ v__4 ?x951)))
 (let ((?x475 (* b__2 5)))
 (let ((?x447 (+ v__3 ?x475)))
 (let ((?x168 (* b__2 4)))
 (let ((?x231 (+ v__2 ?x168)))
 (let ((?x820 (* b__2 3)))
 (let ((?x296 (+ v__1 ?x820)))
 (let ((?x555 (* b__2 2)))
 (let ((?x376 (+ v__0 ?x555)))
 (let ((?x187 (store start ?x376 (+ (select start ?x376) 1))))
 (let ((?x943 (store ?x187 ?x296 (+ (select ?x187 ?x296) 1))))
 (let ((?x744 (store ?x943 ?x231 (+ (select ?x943 ?x231) 1))))
 (let ((?x110 (store ?x744 ?x447 (+ (select ?x744 ?x447) 1))))
 (let ((?x845 (store ?x110 ?x952 (+ (select ?x110 ?x952) 1))))
 (let ((?x16 (store ?x845 ?x534 (+ (select ?x845 ?x534) 1))))
 (let ((?x559 (store ?x16 ?x824 (+ (select ?x16 ?x824) 1))))
 (let ((?x698 (store ?x559 ?x388 (+ (select ?x559 ?x388) 1))))
 (let ((?x1036 (store ?x698 ?x1023 (+ (select ?x698 ?x1023) 1))))
 (let ((?x699 (+ w__8 ?x624)))
 (let ((?x462 (+ w__7 ?x238)))
 (let ((?x595 (+ w__6 ?x1069)))
 (let ((?x627 (+ w__5 ?x951)))
 (let ((?x24 (+ w__4 ?x475)))
 (let ((?x793 (+ w__3 ?x168)))
 (let ((?x1047 (+ w__2 ?x820)))
 (let ((?x165 (+ w__1 ?x555)))
 (let ((?x240 (+ w__0 ?x156)))
 (let ((?x1052 (store start ?x240 (+ (select start ?x240) 1))))
 (let ((?x795 (store ?x1052 ?x165 (+ (select ?x1052 ?x165) 1))))
 (let ((?x246 (store ?x795 ?x1047 (+ (select ?x795 ?x1047) 1))))
 (let ((?x507 (store ?x246 ?x793 (+ (select ?x246 ?x793) 1))))
 (let ((?x33 (store ?x507 ?x24 (+ (select ?x507 ?x24) 1))))
 (let ((?x46 (store ?x33 ?x627 (+ (select ?x33 ?x627) 1))))
 (let ((?x499 (store ?x46 ?x595 (+ (select ?x46 ?x595) 1))))
 (let ((?x185 (store ?x499 ?x462 (+ (select ?x499 ?x462) 1))))
 (let ((?x1022 (store ?x185 ?x699 (+ (select ?x185 ?x699) 1))))
 (= ?x1022 ?x1036)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x39 (* b__3 1)))
 (let ((?x1268 (+ v__8 ?x39)))
 (let ((?x1289 (* b__3 9)))
 (let ((?x1290 (+ v__7 ?x1289)))
 (let ((?x1328 (* b__3 8)))
 (let ((?x1329 (+ v__6 ?x1328)))
 (let ((?x1293 (* b__3 7)))
 (let ((?x1294 (+ v__5 ?x1293)))
 (let ((?x1266 (* b__3 6)))
 (let ((?x1267 (+ v__4 ?x1266)))
 (let ((?x1097 (* b__3 5)))
 (let ((?x1090 (+ v__3 ?x1097)))
 (let ((?x419 (* b__3 4)))
 (let ((?x810 (+ v__2 ?x419)))
 (let ((?x517 (* b__3 3)))
 (let ((?x797 (+ v__1 ?x517)))
 (let ((?x734 (* b__3 2)))
 (let ((?x639 (+ v__0 ?x734)))
 (let ((?x668 (store start ?x639 (+ (select start ?x639) 1))))
 (let ((?x120 (store ?x668 ?x797 (+ (select ?x668 ?x797) 1))))
 (let ((?x695 (store ?x120 ?x810 (+ (select ?x120 ?x810) 1))))
 (let ((?x1095 (store ?x695 ?x1090 (+ (select ?x695 ?x1090) 1))))
 (let ((?x1276 (store ?x1095 ?x1267 (+ (select ?x1095 ?x1267) 1))))
 (let ((?x1309 (store ?x1276 ?x1294 (+ (select ?x1276 ?x1294) 1))))
 (let ((?x1270 (store ?x1309 ?x1329 (+ (select ?x1309 ?x1329) 1))))
 (let ((?x1298 (store ?x1270 ?x1290 (+ (select ?x1270 ?x1290) 1))))
 (let ((?x1273 (store ?x1298 ?x1268 (+ (select ?x1298 ?x1268) 1))))
 (let ((?x1308 (+ w__8 ?x1289)))
 (let ((?x1271 (+ w__7 ?x1328)))
 (let ((?x1310 (+ w__6 ?x1293)))
 (let ((?x1277 (+ w__5 ?x1266)))
 (let ((?x1264 (+ w__4 ?x1097)))
 (let ((?x416 (+ w__3 ?x419)))
 (let ((?x276 (+ w__2 ?x517)))
 (let ((?x669 (+ w__1 ?x734)))
 (let ((?x318 (+ w__0 ?x39)))
 (let ((?x794 (store start ?x318 (+ (select start ?x318) 1))))
 (let ((?x111 (store ?x794 ?x669 (+ (select ?x794 ?x669) 1))))
 (let ((?x62 (store ?x111 ?x276 (+ (select ?x111 ?x276) 1))))
 (let ((?x1099 (store ?x62 ?x416 (+ (select ?x62 ?x416) 1))))
 (let ((?x1323 (store ?x1099 ?x1264 (+ (select ?x1099 ?x1264) 1))))
 (let ((?x1292 (store ?x1323 ?x1277 (+ (select ?x1323 ?x1277) 1))))
 (let ((?x1322 (store ?x1292 ?x1310 (+ (select ?x1292 ?x1310) 1))))
 (let ((?x1279 (store ?x1322 ?x1271 (+ (select ?x1322 ?x1271) 1))))
 (let ((?x1316 (store ?x1279 ?x1308 (+ (select ?x1279 ?x1308) 1))))
 (= ?x1316 ?x1273)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x940 (* b__4 1)))
 (let ((?x471 (+ v__8 ?x940)))
 (let ((?x560 (* b__4 9)))
 (let ((?x61 (+ v__7 ?x560)))
 (let ((?x119 (* b__4 8)))
 (let ((?x843 (+ v__6 ?x119)))
 (let ((?x149 (* b__4 7)))
 (let ((?x287 (+ v__5 ?x149)))
 (let ((?x136 (* b__4 6)))
 (let ((?x731 (+ v__4 ?x136)))
 (let ((?x78 (* b__4 5)))
 (let ((?x561 (+ v__3 ?x78)))
 (let ((?x909 (* b__4 4)))
 (let ((?x908 (+ v__2 ?x909)))
 (let ((?x1040 (* b__4 3)))
 (let ((?x1041 (+ v__1 ?x1040)))
 (let ((?x205 (* b__4 2)))
 (let ((?x204 (+ v__0 ?x205)))
 (let ((?x539 (store start ?x204 (+ (select start ?x204) 1))))
 (let ((?x1017 (store ?x539 ?x1041 (+ (select ?x539 ?x1041) 1))))
 (let ((?x892 (store ?x1017 ?x908 (+ (select ?x1017 ?x908) 1))))
 (let ((?x199 (store ?x892 ?x561 (+ (select ?x892 ?x561) 1))))
 (let ((?x230 (store ?x199 ?x731 (+ (select ?x199 ?x731) 1))))
 (let ((?x1198 (store ?x230 ?x287 (+ (select ?x230 ?x287) 1))))
 (let ((?x201 (store ?x1198 ?x843 (+ (select ?x1198 ?x843) 1))))
 (let ((?x472 (store ?x201 ?x61 (+ (select ?x201 ?x61) 1))))
 (let ((?x688 (store ?x472 ?x471 (+ (select ?x472 ?x471) 1))))
 (let ((?x352 (+ w__8 ?x560)))
 (let ((?x226 (+ w__7 ?x119)))
 (let ((?x132 (+ w__6 ?x149)))
 (let ((?x101 (+ w__5 ?x136)))
 (let ((?x484 (+ w__4 ?x78)))
 (let ((?x891 (+ w__3 ?x909)))
 (let ((?x1018 (+ w__2 ?x1040)))
 (let ((?x800 (+ w__1 ?x205)))
 (let ((?x941 (+ w__0 ?x940)))
 (let ((?x162 (store start ?x941 (+ (select start ?x941) 1))))
 (let ((?x1039 (store ?x162 ?x800 (+ (select ?x162 ?x800) 1))))
 (let ((?x910 (store ?x1039 ?x1018 (+ (select ?x1039 ?x1018) 1))))
 (let ((?x537 (store ?x910 ?x891 (+ (select ?x910 ?x891) 1))))
 (let ((?x730 (store ?x537 ?x484 (+ (select ?x537 ?x484) 1))))
 (let ((?x237 (store ?x730 ?x101 (+ (select ?x730 ?x101) 1))))
 (let ((?x315 (store ?x237 ?x132 (+ (select ?x237 ?x132) 1))))
 (let ((?x194 (store ?x315 ?x226 (+ (select ?x315 ?x226) 1))))
 (let ((?x283 (store ?x194 ?x352 (+ (select ?x194 ?x352) 1))))
 (= ?x283 ?x688)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x642 (* b__5 1)))
 (let ((?x934 (+ v__8 ?x642)))
 (let ((?x1033 (* b__5 9)))
 (let ((?x996 (+ v__7 ?x1033)))
 (let ((?x1348 (* b__5 8)))
 (let ((?x1349 (+ v__6 ?x1348)))
 (let ((?x1337 (* b__5 7)))
 (let ((?x961 (+ v__5 ?x1337)))
 (let ((?x790 (* b__5 6)))
 (let ((?x523 (+ v__4 ?x790)))
 (let ((?x706 (* b__5 5)))
 (let ((?x708 (+ v__3 ?x706)))
 (let ((?x290 (* b__5 4)))
 (let ((?x611 (+ v__2 ?x290)))
 (let ((?x503 (* b__5 3)))
 (let ((?x583 (+ v__1 ?x503)))
 (let ((?x565 (* b__5 2)))
 (let ((?x85 (+ v__0 ?x565)))
 (let ((?x105 (store start ?x85 (+ (select start ?x85) 1))))
 (let ((?x531 (store ?x105 ?x583 (+ (select ?x105 ?x583) 1))))
 (let ((?x239 (store ?x531 ?x611 (+ (select ?x531 ?x611) 1))))
 (let ((?x191 (store ?x239 ?x708 (+ (select ?x239 ?x708) 1))))
 (let ((?x446 (store ?x191 ?x523 (+ (select ?x191 ?x523) 1))))
 (let ((?x1340 (store ?x446 ?x961 (+ (select ?x446 ?x961) 1))))
 (let ((?x1354 (store ?x1340 ?x1349 (+ (select ?x1340 ?x1349) 1))))
 (let ((?x1011 (store ?x1354 ?x996 (+ (select ?x1354 ?x996) 1))))
 (let ((?x1188 (store ?x1011 ?x934 (+ (select ?x1011 ?x934) 1))))
 (let ((?x1013 (+ w__8 ?x1033)))
 (let ((?x1355 (+ w__7 ?x1348)))
 (let ((?x1342 (+ w__6 ?x1337)))
 (let ((?x568 (+ w__5 ?x790)))
 (let ((?x1369 (+ w__4 ?x706)))
 (let ((?x151 (+ w__3 ?x290)))
 (let ((?x505 (+ w__2 ?x503)))
 (let ((?x192 (+ w__1 ?x565)))
 (let ((?x644 (+ w__0 ?x642)))
 (let ((?x69 (store start ?x644 (+ (select start ?x644) 1))))
 (let ((?x576 (store ?x69 ?x192 (+ (select ?x69 ?x192) 1))))
 (let ((?x618 (store ?x576 ?x505 (+ (select ?x576 ?x505) 1))))
 (let ((?x558 (store ?x618 ?x151 (+ (select ?x618 ?x151) 1))))
 (let ((?x103 (store ?x558 ?x1369 (+ (select ?x558 ?x1369) 1))))
 (let ((?x1335 (store ?x103 ?x568 (+ (select ?x103 ?x568) 1))))
 (let ((?x1347 (store ?x1335 ?x1342 (+ (select ?x1335 ?x1342) 1))))
 (let ((?x936 (store ?x1347 ?x1355 (+ (select ?x1347 ?x1355) 1))))
 (let ((?x933 (store ?x936 ?x1013 (+ (select ?x936 ?x1013) 1))))
 (= ?x933 ?x1188)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x656 (* b__6 1)))
 (let ((?x1132 (+ v__8 ?x656)))
 (let ((?x807 (* b__6 9)))
 (let ((?x263 (+ v__7 ?x807)))
 (let ((?x945 (* b__6 8)))
 (let ((?x496 (+ v__6 ?x945)))
 (let ((?x653 (* b__6 7)))
 (let ((?x356 (+ v__5 ?x653)))
 (let ((?x304 (* b__6 6)))
 (let ((?x1403 (+ v__4 ?x304)))
 (let ((?x340 (* b__6 5)))
 (let ((?x339 (+ v__3 ?x340)))
 (let ((?x848 (* b__6 4)))
 (let ((?x342 (+ v__2 ?x848)))
 (let ((?x994 (* b__6 3)))
 (let ((?x995 (+ v__1 ?x994)))
 (let ((?x535 (* b__6 2)))
 (let ((?x254 (+ v__0 ?x535)))
 (let ((?x30 (store start ?x254 (+ (select start ?x254) 1))))
 (let ((?x482 (store ?x30 ?x995 (+ (select ?x30 ?x995) 1))))
 (let ((?x654 (store ?x482 ?x342 (+ (select ?x482 ?x342) 1))))
 (let ((?x420 (store ?x654 ?x339 (+ (select ?x654 ?x339) 1))))
 (let ((?x421 (store ?x420 ?x1403 (+ (select ?x420 ?x1403) 1))))
 (let ((?x121 (store ?x421 ?x356 (+ (select ?x421 ?x356) 1))))
 (let ((?x1071 (store ?x121 ?x496 (+ (select ?x121 ?x496) 1))))
 (let ((?x1121 (store ?x1071 ?x263 (+ (select ?x1071 ?x263) 1))))
 (let ((?x1141 (store ?x1121 ?x1132 (+ (select ?x1121 ?x1132) 1))))
 (let ((?x1122 (+ w__8 ?x807)))
 (let ((?x1065 (+ w__7 ?x945)))
 (let ((?x842 (+ w__6 ?x653)))
 (let ((?x134 (+ w__5 ?x304)))
 (let ((?x640 (+ w__4 ?x340)))
 (let ((?x743 (+ w__3 ?x848)))
 (let ((?x454 (+ w__2 ?x994)))
 (let ((?x1024 (+ w__1 ?x535)))
 (let ((?x655 (+ w__0 ?x656)))
 (let ((?x825 (store start ?x655 (+ (select start ?x655) 1))))
 (let ((?x1032 (store ?x825 ?x1024 (+ (select ?x825 ?x1024) 1))))
 (let ((?x977 (store ?x1032 ?x454 (+ (select ?x1032 ?x454) 1))))
 (let ((?x1364 (store ?x977 ?x743 (+ (select ?x977 ?x743) 1))))
 (let ((?x207 (store ?x1364 ?x640 (+ (select ?x1364 ?x640) 1))))
 (let ((?x1175 (store ?x207 ?x134 (+ (select ?x207 ?x134) 1))))
 (let ((?x949 (store ?x1175 ?x842 (+ (select ?x1175 ?x842) 1))))
 (let ((?x93 (store ?x949 ?x1065 (+ (select ?x949 ?x1065) 1))))
 (let ((?x1131 (store ?x93 ?x1122 (+ (select ?x93 ?x1122) 1))))
 (= ?x1131 ?x1141)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x415 (* b__7 1)))
 (let ((?x585 (+ v__8 ?x415)))
 (let ((?x224 (* b__7 9)))
 (let ((?x253 (+ v__7 ?x224)))
 (let ((?x652 (* b__7 8)))
 (let ((?x659 (+ v__6 ?x652)))
 (let ((?x397 (* b__7 7)))
 (let ((?x358 (+ v__5 ?x397)))
 (let ((?x1059 (* b__7 6)))
 (let ((?x1053 (+ v__4 ?x1059)))
 (let ((?x885 (* b__7 5)))
 (let ((?x219 (+ v__3 ?x885)))
 (let ((?x65 (* b__7 4)))
 (let ((?x251 (+ v__2 ?x65)))
 (let ((?x76 (* b__7 3)))
 (let ((?x437 (+ v__1 ?x76)))
 (let ((?x616 (* b__7 2)))
 (let ((?x221 (+ v__0 ?x616)))
 (let ((?x18 (store start ?x221 (+ (select start ?x221) 1))))
 (let ((?x468 (store ?x18 ?x437 (+ (select ?x18 ?x437) 1))))
 (let ((?x26 (store ?x468 ?x251 (+ (select ?x468 ?x251) 1))))
 (let ((?x266 (store ?x26 ?x219 (+ (select ?x26 ?x219) 1))))
 (let ((?x801 (store ?x266 ?x1053 (+ (select ?x266 ?x1053) 1))))
 (let ((?x594 (store ?x801 ?x358 (+ (select ?x801 ?x358) 1))))
 (let ((?x1056 (store ?x594 ?x659 (+ (select ?x594 ?x659) 1))))
 (let ((?x1351 (store ?x1056 ?x253 (+ (select ?x1056 ?x253) 1))))
 (let ((?x598 (store ?x1351 ?x585 (+ (select ?x1351 ?x585) 1))))
 (let ((?x1352 (+ w__8 ?x224)))
 (let ((?x1058 (+ w__7 ?x652)))
 (let ((?x153 (+ w__6 ?x397)))
 (let ((?x32 (+ w__5 ?x1059)))
 (let ((?x1112 (+ w__4 ?x885)))
 (let ((?x870 (+ w__3 ?x65)))
 (let ((?x467 (+ w__2 ?x76)))
 (let ((?x244 (+ w__1 ?x616)))
 (let ((?x316 (+ w__0 ?x415)))
 (let ((?x217 (store start ?x316 (+ (select start ?x316) 1))))
 (let ((?x414 (store ?x217 ?x244 (+ (select ?x217 ?x244) 1))))
 (let ((?x107 (store ?x414 ?x467 (+ (select ?x414 ?x467) 1))))
 (let ((?x792 (store ?x107 ?x870 (+ (select ?x107 ?x870) 1))))
 (let ((?x1060 (store ?x792 ?x1112 (+ (select ?x792 ?x1112) 1))))
 (let ((?x131 (store ?x1060 ?x32 (+ (select ?x1060 ?x32) 1))))
 (let ((?x650 (store ?x131 ?x153 (+ (select ?x131 ?x153) 1))))
 (let ((?x599 (store ?x650 ?x1058 (+ (select ?x650 ?x1058) 1))))
 (let ((?x1062 (store ?x599 ?x1352 (+ (select ?x599 ?x1352) 1))))
 (= ?x1062 ?x598)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x567 (* b__8 1)))
 (let ((?x1489 (+ v__8 ?x567)))
 (let ((?x1480 (* b__8 9)))
 (let ((?x1481 (+ v__7 ?x1480)))
 (let ((?x1471 (* b__8 8)))
 (let ((?x1472 (+ v__6 ?x1471)))
 (let ((?x1462 (* b__8 7)))
 (let ((?x1463 (+ v__5 ?x1462)))
 (let ((?x1453 (* b__8 6)))
 (let ((?x1454 (+ v__4 ?x1453)))
 (let ((?x1444 (* b__8 5)))
 (let ((?x1445 (+ v__3 ?x1444)))
 (let ((?x1435 (* b__8 4)))
 (let ((?x1436 (+ v__2 ?x1435)))
 (let ((?x1426 (* b__8 3)))
 (let ((?x1427 (+ v__1 ?x1426)))
 (let ((?x1417 (* b__8 2)))
 (let ((?x1418 (+ v__0 ?x1417)))
 (let ((?x1421 (store start ?x1418 (+ (select start ?x1418) 1))))
 (let ((?x1430 (store ?x1421 ?x1427 (+ (select ?x1421 ?x1427) 1))))
 (let ((?x1439 (store ?x1430 ?x1436 (+ (select ?x1430 ?x1436) 1))))
 (let ((?x1448 (store ?x1439 ?x1445 (+ (select ?x1439 ?x1445) 1))))
 (let ((?x1457 (store ?x1448 ?x1454 (+ (select ?x1448 ?x1454) 1))))
 (let ((?x1466 (store ?x1457 ?x1463 (+ (select ?x1457 ?x1463) 1))))
 (let ((?x1475 (store ?x1466 ?x1472 (+ (select ?x1466 ?x1472) 1))))
 (let ((?x1484 (store ?x1475 ?x1481 (+ (select ?x1475 ?x1481) 1))))
 (let ((?x1492 (store ?x1484 ?x1489 (+ (select ?x1484 ?x1489) 1))))
 (let ((?x1485 (+ w__8 ?x1480)))
 (let ((?x1476 (+ w__7 ?x1471)))
 (let ((?x1467 (+ w__6 ?x1462)))
 (let ((?x1458 (+ w__5 ?x1453)))
 (let ((?x1449 (+ w__4 ?x1444)))
 (let ((?x1440 (+ w__3 ?x1435)))
 (let ((?x1431 (+ w__2 ?x1426)))
 (let ((?x1422 (+ w__1 ?x1417)))
 (let ((?x547 (+ w__0 ?x567)))
 (let ((?x1416 (store start ?x547 (+ (select start ?x547) 1))))
 (let ((?x1425 (store ?x1416 ?x1422 (+ (select ?x1416 ?x1422) 1))))
 (let ((?x1434 (store ?x1425 ?x1431 (+ (select ?x1425 ?x1431) 1))))
 (let ((?x1443 (store ?x1434 ?x1440 (+ (select ?x1434 ?x1440) 1))))
 (let ((?x1452 (store ?x1443 ?x1449 (+ (select ?x1443 ?x1449) 1))))
 (let ((?x1461 (store ?x1452 ?x1458 (+ (select ?x1452 ?x1458) 1))))
 (let ((?x1470 (store ?x1461 ?x1467 (+ (select ?x1461 ?x1467) 1))))
 (let ((?x1479 (store ?x1470 ?x1476 (+ (select ?x1470 ?x1476) 1))))
 (let ((?x1488 (store ?x1479 ?x1485 (+ (select ?x1479 ?x1485) 1))))
 (= ?x1488 ?x1492)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x1575 (* b__9 1)))
 (let ((?x1652 (+ v__8 ?x1575)))
 (let ((?x1643 (* b__9 9)))
 (let ((?x1644 (+ v__7 ?x1643)))
 (let ((?x1634 (* b__9 8)))
 (let ((?x1635 (+ v__6 ?x1634)))
 (let ((?x1625 (* b__9 7)))
 (let ((?x1626 (+ v__5 ?x1625)))
 (let ((?x1616 (* b__9 6)))
 (let ((?x1617 (+ v__4 ?x1616)))
 (let ((?x1607 (* b__9 5)))
 (let ((?x1608 (+ v__3 ?x1607)))
 (let ((?x1598 (* b__9 4)))
 (let ((?x1599 (+ v__2 ?x1598)))
 (let ((?x1589 (* b__9 3)))
 (let ((?x1590 (+ v__1 ?x1589)))
 (let ((?x1580 (* b__9 2)))
 (let ((?x1581 (+ v__0 ?x1580)))
 (let ((?x1584 (store start ?x1581 (+ (select start ?x1581) 1))))
 (let ((?x1593 (store ?x1584 ?x1590 (+ (select ?x1584 ?x1590) 1))))
 (let ((?x1602 (store ?x1593 ?x1599 (+ (select ?x1593 ?x1599) 1))))
 (let ((?x1611 (store ?x1602 ?x1608 (+ (select ?x1602 ?x1608) 1))))
 (let ((?x1620 (store ?x1611 ?x1617 (+ (select ?x1611 ?x1617) 1))))
 (let ((?x1629 (store ?x1620 ?x1626 (+ (select ?x1620 ?x1626) 1))))
 (let ((?x1638 (store ?x1629 ?x1635 (+ (select ?x1629 ?x1635) 1))))
 (let ((?x1647 (store ?x1638 ?x1644 (+ (select ?x1638 ?x1644) 1))))
 (let ((?x1655 (store ?x1647 ?x1652 (+ (select ?x1647 ?x1652) 1))))
 (let ((?x1648 (+ w__8 ?x1643)))
 (let ((?x1639 (+ w__7 ?x1634)))
 (let ((?x1630 (+ w__6 ?x1625)))
 (let ((?x1621 (+ w__5 ?x1616)))
 (let ((?x1612 (+ w__4 ?x1607)))
 (let ((?x1603 (+ w__3 ?x1598)))
 (let ((?x1594 (+ w__2 ?x1589)))
 (let ((?x1585 (+ w__1 ?x1580)))
 (let ((?x1576 (+ w__0 ?x1575)))
 (let ((?x1579 (store start ?x1576 (+ (select start ?x1576) 1))))
 (let ((?x1588 (store ?x1579 ?x1585 (+ (select ?x1579 ?x1585) 1))))
 (let ((?x1597 (store ?x1588 ?x1594 (+ (select ?x1588 ?x1594) 1))))
 (let ((?x1606 (store ?x1597 ?x1603 (+ (select ?x1597 ?x1603) 1))))
 (let ((?x1615 (store ?x1606 ?x1612 (+ (select ?x1606 ?x1612) 1))))
 (let ((?x1624 (store ?x1615 ?x1621 (+ (select ?x1615 ?x1621) 1))))
 (let ((?x1633 (store ?x1624 ?x1630 (+ (select ?x1624 ?x1630) 1))))
 (let ((?x1642 (store ?x1633 ?x1639 (+ (select ?x1633 ?x1639) 1))))
 (let ((?x1651 (store ?x1642 ?x1648 (+ (select ?x1642 ?x1648) 1))))
 (= ?x1651 ?x1655)))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x1747 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__7 v__6) (= w__8 v__7) (= w__0 v__8))))
 (not $x1747)))
(check-sat)
(exit)