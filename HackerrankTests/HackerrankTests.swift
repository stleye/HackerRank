//
//  HackerrankTests.swift
//  HackerrankTests
//
//  Created by Sebastian Tleye on 30/01/2024.
//

import XCTest
@testable import Hackerrank

final class HackerrankTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testElectronicsShop() {
        let electronicShops = ElectronicsShop()

        var result = electronicShops.getMoneySpent(keyboards: [40, 50, 60], drives: [5, 8, 12], b: 60)
        XCTAssertEqual(result, 58)
        
        result = electronicShops.getMoneySpent(keyboards: [40], drives: [50], b: 60)
        XCTAssertEqual(result, -1)
        
        result = electronicShops.getMoneySpent(keyboards: [40], drives: [50], b: 90)
        XCTAssertEqual(result, 90)
    }
    
    func testNumberLineJumps() {
        let numberLineJumps = NumberLineJumps()
        
        var result = numberLineJumps.kangaroo(x1: 2, v1: 1, x2: 1, v2: 2)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 1, x2: 2, v2: 1)
        XCTAssertEqual(result, "NO")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 4, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 5, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 1, v1: 2, x2: 6, v2: 1)
        XCTAssertEqual(result, "YES")
        
        result = numberLineJumps.kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
        XCTAssertEqual(result, "NO")
    }
    
    func testBetweenTwoSets() {
        let betweenToSets = BetweenTwoSets()
        
        var result = betweenToSets.getTotalX(a: [2], b: [1])
        XCTAssertEqual(result, 0)
        
        result = betweenToSets.getTotalX(a: [1], b: [2])
        XCTAssertEqual(result, 2)
        
        result = betweenToSets.getTotalX(a: [2, 4], b: [16, 32, 96])
        XCTAssertEqual(result, 3)
    }
    
    func testSubarrayDivision() {
        let subarrayDivision = SubarrayDivision()
        
        var result = subarrayDivision.birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
        XCTAssertEqual(result, 2)
        
        result = subarrayDivision.birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)
        XCTAssertEqual(result, 0)
        
        result = subarrayDivision.birthday(s: [4], d: 4, m: 1)
        XCTAssertEqual(result, 1)
    }
    
    func testBalancedBrackets() {
        let balancedBrackets = BalancedBrackets()
        
        var result = balancedBrackets.isBalanced(s: "{{[[(())]]}}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "[(])")
        XCTAssertEqual(result, "NO")
        
        result = balancedBrackets.isBalanced(s: "{}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{}()()()[]")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{[()]}")
        XCTAssertEqual(result, "YES")
        
        result = balancedBrackets.isBalanced(s: "{")
        XCTAssertEqual(result, "NO")
    }
    
    func testMigratoryBirds() {
        let migratoryBirds = MigratoryBirds()
        
        var result = migratoryBirds.migratoryBirds(arr: [1, 4, 4, 4, 5, 3])
        XCTAssertEqual(result, 4)

        result = migratoryBirds.migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])
        XCTAssertEqual(result, 3)
        
        result = migratoryBirds.migratoryBirds(arr: [1, 1, 1, 2, 2, 2])
        XCTAssertEqual(result, 1)
        
        result = migratoryBirds.migratoryBirds(arr: [2, 2, 2, 1, 1, 1])
        XCTAssertEqual(result, 1)
    }

    func testDrawingBook() {
        let drawingBook = DrawingBook()

        var result = drawingBook.pageCount(n: 6, p: 2)
        XCTAssertEqual(result, 1)
        
        result = drawingBook.pageCount(n: 1, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 2, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 2, p: 2)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 1)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 2)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 3, p: 3)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 5, p: 4)
        XCTAssertEqual(result, 0)
        
        result = drawingBook.pageCount(n: 5, p: 3)
        XCTAssertEqual(result, 1)
    }
    
    func testQueensAttack2() {
        let queensAttack2 = QueensAttack2()
        let obstacles = [[1, 7], [2, 6], [4, 1], [4, 6], [4, 7], [4, 8], [7, 1], [7, 7], [8, 8], [6, 2], [2, 8]]
        
        var result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 8, c_q: 6, obstacles: obstacles)
        XCTAssertEqual(result, 14)
        
        result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 8, c_q: 7, obstacles: obstacles)
        XCTAssertEqual(result, 13)
        
        result = queensAttack2.queensAttack(n: 8, k: 8, r_q: 7, c_q: 8, obstacles: obstacles)
        XCTAssertEqual(result, 9)
    }
    
    func testExcludingSpecificCharacters() {
        let excludingSpecificCharacters = ExcludingSpecificCharacters()

        XCTAssertTrue(excludingSpecificCharacters.solve(input: "dddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddd."))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddd,"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "0ddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "2ddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "dadddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddDddd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddd dd"))
        XCTAssertFalse(excludingSpecificCharacters.solve(input: "ddddAd"))
    }
    
    func testEvenZerosAndOddOnes() {
        let evenZerosAndOddOnes = EvenZerosAndOddOnes()

        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "1101"))    // 2 zeros, 3 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "100"))     // 2 zeros, 1 one
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "1010"))   // 2 zeros, 2 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "1111"))   // 0 zeros, 4 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "000"))     // 3 zeros, 0 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: ""))        // Empty string
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "10"))       // 1 zero, 1 one
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "01"))      // 1 zero, 1 one
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "0110"))    // 2 zeros, 2 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "00000"))   // 5 zeros, 0 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "111111")) // 0 zeros, 6 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "1111111")) // 0 zeros, 6 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "0001"))    // 3 zeros, 1 one
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "11110"))   // 1 zero, 4 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "010101"))  // 3 zeros, 3 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "000000")) // 6 zeros, 0 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "1010101")) // 4 zeros, 4 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "0101010"))// 3 zeros, 4 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "001100")) // 4 zeros, 2 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "00000000"))// 8 zeros, 0 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "001000000"))// 8 zeros, 0 ones
        XCTAssertFalse(evenZerosAndOddOnes.solve(input: "11111111"))// 0 zeros, 8 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "101010101"))// 5 zeros, 5 ones
        XCTAssertTrue(evenZerosAndOddOnes.solve(input: "100000000"))// 8 zeros, 1 one
    }
    
    func testDetectEmailAddresses() {
        let input1 = """
                HackerRank is more than just a company
                    We are a tight group of hackers, bootstrappers, entrepreneurial thinkers and innovators. We are building an engaged community of problem solvers. Imagine the intelligence and value that a room would hold if it contained hackers/problem solvers from around the world? We're building this online.
                Hypothesis: Every hacker loves a particular type of challenge presented in a certain set of difficulty. If we build a large collection of real world challenges in different domains with an engaging interface, it is going to be incredible! Join us to create history.
                Available Positions
                Product Hacker product@hackerrank.com
                Challenge Curator
                Product Evangelist
                Product Designer
                Content Creator
                ACM World Finals Hacker
                Backend C++ Hacker
                Mail us at hackers@hackerrank.com to chat more. Or you can write to us at interviewstreet@hackerrank.com!
                HACKERRANK PERKS
                Working for a startup is hard work, but there are plenty of benefits of working for a small, fun, growing team.
                [Image] Perk: Get tools for the jobAll the Right ToolsWe know that everyone's perfect workspace is unique to them. We will get you set up with whatever equipment you need to start hacking - a new 15” Macbook Pro or iMac, or a computer of your choice plus a display if you need it. Additionally, if you require any software or other tools, we've got it covered.[Image] Perk: Flexible HoursFlexible HoursBecause we work so hard, we encourage our employees to keep flexible hours and don't require them to track their time. A morning scrum and open communication ensures that the job gets done on time, and we rely on the honor system so that you can work on your own pace.[Image] Perk: HealthcareWellness SupportTo work hard, you have to be healthy. We will cover your health, dental, and visual insurance with no wait period. That means instant benefits from the day you're hired.[Image] Perk: Choice of LocationLocation, Location, LocationWe are the first Indian company to be backed by Y-Combinator, and as a result we have a thriving office in Bangalore and a growing office in Mountain View, CA. Depending on your residency or visa status, we will get you situated in one of our two offices, both of which are located in the heart of their country's tech industry.[Image] Perk: Choice of LocationCreative SupportIf you have a cool side project that you want to launch, we will pay for EC2/heroku servers to get it off the ground. Side projects fuel creativity and learning, which are crucial to the HackerRank culture.
                CULTURE
                The culture of a startup is reflective of the founders’ DNA. Larry Page & Sergey Brin were PhD’s from Stanford and that’s why Google is filled with high scoring graders from top schools and is very hard to get in if you’re not a CS major. Similarly, the hacker culture at Facebook is inspired by Zuckerberg, a hacker, the design culture by Steve Jobs and so on.
                The adjective to describe the environment/founders here is relentless hardworkers. It might be a general trait of a startup but I’m pretty sure it’s a notch higher here and defines the culture. This is what has taken us this far. It’s not working in weekends or allnighters that count, but the effort that goes into building something intellectually engaging for hackers and making it fun is high.
                You’ll have to embrace randomness and chaos. There’s some level of discipline (eg: daily scrums) but only so much. We push boundaries everyday, stretch our limits but no one complains because there’s a feeling of doing something great at the end of the day, every single day.
                """
        let output1 = "hackers@hackerrank.com;interviewstreet@hackerrank.com;product@hackerrank.com"
        
        let input2 = """
                E-MAIL ADDRESSES OF GMs AND DRMs ON IR
                RLY    GM E-Mail    Division    DRM E-Mail
                CR    gm@cr.railnet.gov.in    Mumbai    drm@bb.railnet.gov.in
                Bhusawal    drm@bsl.railnet.gov.in
                Pune    drm@pa.railnet.gov.in
                Nagpur    drm@ngp.railnet.gov.in
                Solapur    drm@sur.railnet.gov.in
                ER     gm@er.railnet.gov.in    Howrah    drmhwh@er.railnet.gov.in
                Sealdah    drmsdah@er.railnet.gov.in
                Asansol    drmasn@er.railnet.gov.in
                Malda    drmmldt@er.railnet.gov.in
                ECR     gm@ecr.railnet.gov.in    Danapur    drmdnr@ecr.railnet.gov.in
                Dhanbad    drmdhn@ecr.railnet.gov.in
                Mughalsarai    drmmgs@ecr.railnet.gov.in
                Samastipur    drmspj@ecr.railnet.gov.in
                Sonpur    drmsee@ecr.railnet.gov.in
                ECoR        gm@eastcoastrailway.gov.in      Khurda Road    drmkur@eastcoastrailway.gov.in
                Sambalpur    drmsbp@eastcoastrailway.gov.in
                Waltair    drmwat@eastcoastrailway.gov.in
                NR     gm@nr.railnet.gov.in    Delhi    drm@dli.railnet.gov.in
                Ambala    drm@umb.railnet.gov.in
                Moradabad    drm@mb.railnet.gov.in
                Lucknow    drm@lko.railnet.gov.in
                Ferozepur    drm@fzr.railnet.gov.in
                NCR        gm@ncr.railnet.gov.in      Allahabad    drm@ald.railnet.gov.in
                Jhansi    drm@jhs.railnet.gov.in
                Agra    drm@agc.railnet.gov.in
                NER    gm@ner.railnet.gov.in    Izzatnagar    drmizn@ner.railnet.gov.in
                Lucknow    drmljn@ner.railnet.gov.in
                Varanasi    drmbsb@ner.railnet.gov.in
                NFR    gm@nfr.railnet.gov.in    Katihar    drmkir@nfr.railnet.gov.in
                Alipurduar    drmapdj@nfr.railnet.gov.in
                Tinsukhia    drmtsk@nfr.railnet.gov.in
                Lumding    drmlmg@nfr.railnet.gov.in
                Rangia    drmrny@nfr.railnet.gov.in
                NWR    gm@nwr.railnet.gov.in    Jaipur    drmjp@nwr.railnet.gov.in
                Ajmer    drmaii@nwr.railnet.gov.in
                Bikaner    drmbkn@nwr.railnet.gov.in
                Jodhpur    drmju@nwr.railnet.gov.in
                SR    gm@sr.railnet.gov.in    Chennai    drmmas@sr.railnet.gov.in
                Madurai    drmmdu@sr.railnet.gov.in
                Salem    drmsa@sr.railnet.gov.in
                Palghat    drmpgt@sr.railnet.gov.in
                Tiruchirapalli    drmtpj@sr.railnet.gov.in
                Trivandrum    drmtvc@sr.railnet.gov.in
                SCR    gm@scr.railnet.gov.in    Secundrabad    drmsc@scr.railnet.gov.in
                Hyderabad    drmshyb@scr.railnet.gov.in
                Guntkal    drmgtl@scr.railnet.gov.in
                Guntur    drmgnt@scr.railnet.gov.in
                Nanded    drmned@scr.railnet.gov.in
                Vijayawada    drmbza@scr.railnet.gov.in
                """
        
        let output2 = "drm@agc.railnet.gov.in;drm@ald.railnet.gov.in;drm@bb.railnet.gov.in;drm@bsl.railnet.gov.in;drm@dli.railnet.gov.in;drm@fzr.railnet.gov.in;drm@jhs.railnet.gov.in;drm@lko.railnet.gov.in;drm@mb.railnet.gov.in;drm@ngp.railnet.gov.in;drm@pa.railnet.gov.in;drm@sur.railnet.gov.in;drm@umb.railnet.gov.in;drmaii@nwr.railnet.gov.in;drmapdj@nfr.railnet.gov.in;drmasn@er.railnet.gov.in;drmbkn@nwr.railnet.gov.in;drmbsb@ner.railnet.gov.in;drmbza@scr.railnet.gov.in;drmdhn@ecr.railnet.gov.in;drmdnr@ecr.railnet.gov.in;drmgnt@scr.railnet.gov.in;drmgtl@scr.railnet.gov.in;drmhwh@er.railnet.gov.in;drmizn@ner.railnet.gov.in;drmjp@nwr.railnet.gov.in;drmju@nwr.railnet.gov.in;drmkir@nfr.railnet.gov.in;drmkur@eastcoastrailway.gov.in;drmljn@ner.railnet.gov.in;drmlmg@nfr.railnet.gov.in;drmmas@sr.railnet.gov.in;drmmdu@sr.railnet.gov.in;drmmgs@ecr.railnet.gov.in;drmmldt@er.railnet.gov.in;drmned@scr.railnet.gov.in;drmpgt@sr.railnet.gov.in;drmrny@nfr.railnet.gov.in;drmsa@sr.railnet.gov.in;drmsbp@eastcoastrailway.gov.in;drmsc@scr.railnet.gov.in;drmsdah@er.railnet.gov.in;drmsee@ecr.railnet.gov.in;drmshyb@scr.railnet.gov.in;drmspj@ecr.railnet.gov.in;drmtpj@sr.railnet.gov.in;drmtsk@nfr.railnet.gov.in;drmtvc@sr.railnet.gov.in;drmwat@eastcoastrailway.gov.in;gm@cr.railnet.gov.in;gm@eastcoastrailway.gov.in;gm@ecr.railnet.gov.in;gm@er.railnet.gov.in;gm@ncr.railnet.gov.in;gm@ner.railnet.gov.in;gm@nfr.railnet.gov.in;gm@nr.railnet.gov.in;gm@nwr.railnet.gov.in;gm@scr.railnet.gov.in;gm@sr.railnet.gov.in"
        
        let detectEmailAddresses = DetectEmailAddresses()
        
        let res1 = detectEmailAddresses.solve(input: input1).sorted().joined(separator: ";")
        let res2 = detectEmailAddresses.solve(input: input2).sorted().joined(separator: ";")
        
        XCTAssertEqual(res1, output1)
        XCTAssertEqual(res2, output2)
    }

}
