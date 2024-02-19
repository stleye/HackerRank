//
//  DetectHTMLLinks.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 18/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/detect-html-links/problem

struct DetectHTMLLinks {
    
    func solve() {
//        print(parse(inputString: #"<a href="http://www.hackerrank.com">HackerRank</a>"#))
//        print(parse(inputString: #"<p><a href="http://www.quackit.com/html/tutorial/html_links.cfm">Example Link</a></p>"#))
//        print(parse(inputString: #"<div class="more-info"><a href="http://www.quackit.com/html/examples/html_links_examples.cfm">More Link Examples...</a></div>"#))
//        print(parse(inputString: #"<div class="portal" role="navigation" id='p-navigation'>"#))
//        print(parse(inputString: #"<h3>Navigation</h3>"#))
//        print(parse(inputString: #"<li id="n-mainpage-description"><a href="/wiki/Main_Page" title="Visit the main page [z]" accesskey="z">Main page</a></li>"#))
//        print(parse(inputString: #"<li id="n-sitesupport"><a href="//donate.wikimedia.org/wiki/Special:FundraiserRedirector?utm_source=donate&utm_medium=sidebar&utm_campaign=C13_en.wikipedia.org&uselang=en" title="Support us">Donate to Wikipedia</a></li>"#))
        let input = """
<li style="-moz-float-edge: content-box">... that <a href="/wiki/Orval_Overall" title="Orval Overall">Orval Overall</a> <i>(pictured)</i> is the only <b><a href="/wiki/List_of_Major_League_Baseball_pitchers_who_have_struck_out_four_batters_in_one_inning" title="List of Major League Baseball pitchers who have struck out four batters in one inning">Major League Baseball player to strike out four batters in one inning</a></b> in the <a href="/wiki/World_Series" title="World Series">World Series</a>?</li>
<li style="-moz-float-edge: content-box">... that the three cities of the <b><a href="/wiki/West_Triangle_Economic_Zone" title="West Triangle Economic Zone">West Triangle Economic Zone</a></b> contribute 40% of Western China's GDP?</li>
<li style="-moz-float-edge: content-box">... that <i><a href="/wiki/Kismet_(1943_film)" title="Kismet (1943 film)">Kismet</a></i>, directed by <b><a href="/wiki/Gyan_Mukherjee" title="Gyan Mukherjee">Gyan Mukherjee</a></b>, ran at the <a href="/wiki/Roxy_Cinema_(Kolkata)" title="Roxy Cinema (Kolkata)">Roxy, Kolkata</a>, for 3 years and 8 months?</li>
<li style="-moz-float-edge: content-box">... that <a href="/wiki/Vauix_Carter" title="Vauix Carter">Vauix Carter</a> both coached and played for the <b><a href="/wiki/1882_Navy_Midshipmen_football_team" title="1882 Navy Midshipmen football team">1882 Navy Midshipmen football team</a></b>?</li>
<li style="-moz-float-edge: content-box">... that <a href="/wiki/Zhu_Chenhao" title="Zhu Chenhao">Zhu Chenhao</a> was sentenced to <a href="/wiki/Slow_slicing" title="Slow slicing">slow slicing</a> for leading the <b><a href="/wiki/Prince_of_Ning_rebellion" title="Prince of Ning rebellion">Prince of Ning rebellion</a></b> against the <a href="/wiki/Ming_Dynasty" title="Ming Dynasty">Ming Dynasty</a> <a href="/wiki/Zhengde_Emperor" title="Zhengde Emperor">emperor Zhengde</a>?</li>
<li style="-moz-float-edge: content-box">... that <b><a href="/wiki/Mirza_Adeeb" title="Mirza Adeeb">Mirza Adeeb</a></b> was a prominent modern Pakistani <a href="/wiki/Urdu" title="Urdu">Urdu</a> playwright whose later work focuses on social problems and daily life?</li>
<li style="-moz-float-edge: content-box">... that in <i><b><a href="/wiki/La%C3%9Ft_uns_sorgen,_la%C3%9Ft_uns_wachen,_BWV_213" title="Lat uns sorgen, lat uns wachen, BWV 213">Die Wahl des Herkules</a></b></i>, Hercules must choose between the good cop and the bad cop?<br style="clear:both;" />
<div style="text-align: right;" class="noprint"><b><a href="/wiki/Wikipedia:Recent_additions" title="Wikipedia:Recent additions">Archive</a></b>  <b><a href="/wiki/Wikipedia:Your_first_article" title="Wikipedia:Your first article">Start a new article</a></b>  <b><a href="/wiki/Template_talk:Did_you_know" title="Template talk:Did you know">Nominate an article</a></b></div>
</li>
"""
        
        let lines = input.components(separatedBy: "\n")
        for line in lines {
            print(parse(inputString: line))
        }
        
    }

    func parse(inputString: String) -> String {
        let pattern = #"<a\shref="([^"]+)"[^>]*>([^<]*)<((\1)*(\2)*)*"#
        let regex = try! NSRegularExpression(pattern: pattern)
        let matches = regex.matches(in: inputString, range: NSRange(inputString.startIndex..., in: inputString))
        var res = ""

        for match in matches {
            let g1 = String(inputString[Range(match.range(at: 1), in: inputString)!])
            let g2 = String(inputString[Range(match.range(at: 2), in: inputString)!])
            res += "\(g1),\(g2)\n"
        }
        
        return String(res.dropLast())
    }

    func parseInput() {
        let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
        FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
        let fileHandle = FileHandle(forWritingAtPath: stdout)!

        guard let n = Int(readLine() ?? "") else { fatalError("Bad input") }

        for _ in 1...n {
            guard let htmlLine = readLine() else { fatalError("Bad input") }
            let res = parse(inputString: htmlLine)
            if !res.isEmpty {
                fileHandle.write(res.data(using: .utf8)!)
                fileHandle.write("\n".data(using: .utf8)!)
            }
        }
    }

}
