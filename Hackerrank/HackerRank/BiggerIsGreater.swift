//
//  BiggerIsGreater.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 28/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/bigger-is-greater/problem

struct BiggerIsGreater {
    
    func solve() {
//        let str = """
//            imllmmcslslkyoegymoa
//            fvincndjrurfh
//            rtglgzzqxnuflitnlyit
//            mhtvaqofxtyrz
//            zalqxykemvzzgaka
//            wjjulziszbqqdcpdnhdo
//            japjbvjlxzkgietkm
//            jqczvgqywydkunmjw
//            ehdegnmorgafrjxvksc
//            tydwixlwghlmqo
//            wddnwjneaxbwhwamr
//            pnimbesirfbivxl
//            mijamkzpiiniveik
//            qxtwpdpwexuej
//            qtcshorwyck
//            xoojiggdcyjrupr
//            vcjmvngcdyabcmjz
//            xildrrhpca
//            rrcntnbqchsfhvijh
//            kmotatmrabtcomu
//            bnfcejmyotvw
//            dnppdkpywiaxddoqx
//            tmowsxkrodmkkra
//            jfkaehlegohwggf
//            ttylsiegnttymtyx
//            kyetllczuyibdkwyihrq
//            xdhqbvlbtmmtshefjf
//            kpdpzzohihzwgdfzgb
//            kuywptftapaa
//            qfqpegznnyludrv
//            ufwogufbzaboaepslikq
//            jfejqapjvbdcxtkry
//            sypjbvatgidyxodd
//            wdpfyqjcpcn
//            baabpjckkytudr
//            uvwurzjyzbhcqmrypraq
//            kvtwtmqygksbim
//            ivsjycnooeodwpt
//            zqyxjnnitzawipqsm
//            blmrzavodtfzyepz
//            bmqlhqndacv
//            phvauobwkrcfwdecsd
//            vpygyqubqywkndhpzw
//            yikanhdrjxw
//            vnpblfxmvwkflqobrk
//            pserilwzxwyorldsxksl
//            qymbqaehnyzhfqpqprpl
//            fcakwzuqlzglnibqmkd
//            jkscckttaeifiksgkmxx
//            dkbllravwnhhfjjrce
//            imzsyrykfvjt
//            tvogoocldlukwfcajvix
//            cvnagtypozljpragvlj
//            hwcmacxvmus
//            rhrzcpprqccf
//            clppxvwtaktchqrdif
//            qwusnlldnolhq
//            yitveovrja
//            arciyxaxtvmfgquwb
//            pzbxvxdjuuvuv
//            nxfowilpdxwlpt
//            swzsaynxbytytqtq
//            qyrogefleeyt
//            iotjgthvslvmjpcchhuf
//            knfpyjtzfq
//            tmtbfayantmwk
//            asxwzygngwn
//            rmwiwrurubt
//            bhmpfwhgqfcqfldlhs
//            yhbidtewpgp
//            jwwbeuiklpodvzii
//            anjhprmkwibe
//            lpwhqaebmr
//            dunecynelymcpyonjq
//            hblfldireuivzekegit
//            uryygzpwifrricwvge
//            kzuhaysegaxtwqtvx
//            kvarmrbpoxxujhvgpw
//            hanhaggqzdpunkugzmhq
//            gnwqwsylqeuqr
//            qzkjbnyvclrkmdtc
//            argsnaqbquv
//            obbnlkoaklcx
//            ojiilqieycsasvqosycu
//            qhlgiwsmtxbffjsxt
//            vvrvnmndeogyp
//            ibeqzyeuvfzb
//            sajpyegttujxyx
//            zmdjphzogfldlkgbchnt
//            tbanvjmwirxx
//            gmdhdlmopzyvddeqyjja
//            yxvmvedubzcpd
//            soygdzhbckfuk
//            gkbekyrhcwc
//            wevzqpnqwtpfu
//            rbobquotbysufwqjeo
//            bpgqfwoyntuhkvwo
//            schtabphairewhfmp
//            rlmrahlisggguykeu
//            fjtfrmlqvsekq
//        """
//        let components = str.components(separatedBy: "\n")
//        for line in components {
//            print(biggerIsGreater(w: line.trimmingCharacters(in: .whitespacesAndNewlines)))
//        }
        print(biggerIsGreater(w: "132"))
    }
    
    func biggerIsGreater(w: String) -> String {
        var a = Array(w)
        let n = a.count
        for j in stride(from: n-1, to: 0, by: -1) {
            for i in stride(from: j-1, to: -1, by: -1) {
                if a[j] > a[i] {
                    a.swapAt(i, j)
                    a[i+1..<n].sort()
                    return String(a)
                } else {
                    break
                }
            }
        }
        return "no answer"
    }
    
}
