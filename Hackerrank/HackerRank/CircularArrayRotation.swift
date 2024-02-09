//
//  CircularArrayRotation.swift
//  Hackerrank
//
//  Created by Sebastian Tleye on 09/02/2024.
//

import Foundation

//https://www.hackerrank.com/challenges/circular-array-rotation/problem

struct CircularArrayRotation {
    
    func solve() {
        let numbers = [
            29261, 80254, 86934, 3704, 76338, 96698, 47885, 88475, 65211, 65976,
            75238, 58566, 28684, 20348, 45383, 58620, 48360, 99801, 51885, 82661,
            83066, 14311, 24803, 99267, 21541, 93195, 21194, 20775, 64817, 42323,
            7640, 10429, 38928, 94573, 30484, 15265, 7622, 78368, 3739, 72833,
            60696, 95328, 31398, 5731, 15676, 93132, 64351, 64035, 9284, 32587,
            46695, 92349, 46897, 87850, 7968, 84789, 81044, 45513, 5563, 62212,
            87836, 13202, 88993, 26763, 24127, 19476, 42028, 31748, 14196, 62118,
            4580, 91243, 73798, 52329, 96973, 89473, 61812, 77675, 69859, 71095,
            10261, 32905, 79796, 57157, 20754, 87763, 41945, 1798, 33275, 63859,
            80361, 37462, 93413, 69353, 64225, 17539, 5181, 22604, 49286, 19376,
            1073, 70218, 26970, 74870, 38898, 23942, 80694, 710, 1617, 50552,
            88156, 11877, 83457, 67951, 85386, 4210, 55713, 43682, 22359, 5340,
            23893, 2720, 59153, 17305, 88424, 23377, 51195, 93604, 62332, 480,
            29331, 79757, 87049, 56300, 54626, 25947, 96594, 35320, 26656, 98210,
            2223, 31163, 26438, 85679, 99114, 28175, 89889, 71178, 88209, 12247,
            76517, 12101, 31318, 35670, 45757, 19742, 75398, 96951, 29697, 54082,
            13782, 75380, 33838, 831, 31679, 4815, 26777, 28272, 56486, 69784,
            42833, 58709, 946, 85623, 44387, 59, 13797, 50627, 87589, 2005, 62874,
            80457, 14105, 94191, 32478, 59861, 30284, 7876, 73163, 59981, 78309,
            86945, 35360, 28498, 87775, 83390, 49664, 30903, 28014, 6150, 686,
            70846, 81210, 17983, 56468, 41948, 34394, 86617, 92575, 21982, 88621,
            71800, 2438, 19078, 82342, 34916, 95290, 12626, 59143, 68453, 88958,
            37451, 71749, 24317, 82300, 59523, 24058, 31963, 90425, 52071, 54464,
            7462, 39269, 35673, 25444, 12088, 93973, 76189, 98704, 86547, 98170,
            3677, 74698, 16960, 22754, 57039, 51875, 34395, 86016, 11017, 19199,
            74973, 64819, 90947, 15641, 63470, 66821, 39699, 95432, 73597, 91769,
            49896, 81058, 31037, 1920, 22854, 43125, 12244, 99042, 58180, 15142,
            13564, 61856, 89839, 30523, 961, 63230, 98749, 51708, 49245, 26117,
            70906, 24218, 90935, 78205, 39858, 54404, 45025, 95908, 66187, 34974,
            87677, 32434, 32383, 35065, 50706, 55236, 78189, 62949, 70630, 36369,
            78091, 545, 14576, 67929, 47419, 15537, 31158, 46167, 67244, 96755,
            72283, 54501, 37324, 79569, 32705, 77181, 50324, 94082, 73089, 16510,
            45407, 77117, 65296, 77789, 12181, 16001, 49377, 6722, 78949, 36358,
            59442, 73391, 36902, 74017, 41320, 84320, 5905, 88829, 46838, 89500,
            1935, 19120, 44001, 39258, 98688, 93057, 32791, 49011, 3490, 22231,
            81872, 48896, 99347, 47167, 26685, 27879, 79519, 92413, 34600, 74820,
            28770, 94041, 48210, 65671, 84410, 5881, 66342, 90314, 11062, 13179,
            96166, 12996, 32298, 40166, 52254, 47337, 49574, 85044, 12699, 53064,
            7274, 94570, 18311, 22972, 58089, 61347, 50850, 37607, 53759, 1802,
            12426, 82528, 12194, 60636, 64550, 96603, 66516, 30891, 3269, 93929,
            60421, 99434, 6925, 9070, 55951, 59178, 56406, 5524, 60573, 69104,
            74939, 84198, 80026, 93250, 7169, 38114, 54596, 74370, 92072, 24707,
            76171, 4498, 7234, 88365, 81485, 71784, 84967, 64352, 19026, 4587,
            58281, 79447, 20372, 65205, 88516, 92674, 40734, 44922, 98198, 17658,
            30377, 89488, 1855, 10402, 99089, 25375, 64867, 70037, 99744, 56939,
            94743, 75915, 77788, 1976, 64279, 75624, 90111, 65597, 39975, 9137,
            70184, 98255, 88583, 6907, 79811, 93450, 99581, 36896, 38371, 14130,
            54553, 85100, 3617, 72759, 11853, 19058, 98133, 76720, 89094, 97877,
            50010, 188, 73791, 44149, 18515, 54421, 19772, 8626, 20017, 59746,
            17762, 6552, 74353, 22696, 13459, 70515, 16145, 29391, 7411, 70868,
            43520, 78315, 55967, 63488, 51074, 84171, 82545, 49206, 60890, 87990,
            63434, 27251, 4529, 53576
        ]
        
        let queries = [
            8, 323, 475, 409, 330, 282, 387, 133, 120, 424,
            193, 425, 380, 99, 435, 107, 396, 506, 467, 64,
            189, 242, 315, 110, 504, 396, 2, 143, 44, 425,
            138, 52, 150, 16, 379, 480, 298, 251, 98, 335,
            77, 208, 246, 457, 308, 83, 50, 106, 75, 434,
            88, 264, 161, 320, 291, 150, 118, 293, 210, 162,
            121, 266, 132, 271, 282, 511, 237, 497, 164, 252,
            317, 241, 461, 480, 100, 254, 49, 67, 277, 124,
            501, 365, 305, 147, 170, 81, 215, 206, 292, 425,
            368, 413, 93, 417, 169, 375, 413, 323, 357, 494,
            61, 160, 137, 7, 42, 155, 178, 91, 222, 455,
            132, 209, 223, 437, 273, 310, 436, 405, 1, 130,
            233, 287, 28, 326, 189, 114, 187, 5, 438, 29,
            416, 416, 106, 39, 423, 149, 194, 3, 157, 416,
            375, 290, 27, 83, 129, 218, 311, 482, 108, 229,
            97, 341, 1, 125, 70, 108, 157, 257, 113, 80,
            203, 14, 413, 310, 485, 238, 376, 164, 241, 18,
            498, 101, 225, 442, 102, 355, 62, 330, 322, 171,
            44, 337, 429, 46, 462, 499, 154, 21, 158, 184,
            18, 362, 115, 431, 74, 86, 154, 450, 167, 312,
            468, 67, 331, 96, 427, 433, 451, 489, 165, 175,
            62, 209, 512, 492, 172, 377, 393, 243, 398, 37,
            427, 417, 316, 460, 250, 390, 463, 405, 325, 115,
            202, 195, 100, 18, 291, 12, 368, 144, 501, 450,
            237, 481, 145, 234, 375, 317, 13, 253, 46, 329,
            207, 390, 148, 8, 252, 398, 315, 200, 288, 125,
            316, 408, 238, 333, 343, 446, 345, 114, 76, 248,
            49, 230, 214, 194, 381, 74, 429, 395, 245, 392,
            209, 369, 184, 357, 295, 437, 240, 95, 122, 446,
            138, 355, 256, 293, 173, 84, 224, 435, 198, 217,
            169, 165, 447, 300, 276, 314, 292, 190, 194, 22,
            499, 320, 308, 169, 79, 88, 91, 236, 101, 130,
            84, 239, 486, 340, 17, 144, 425, 158, 497, 25,
            376, 151, 107, 308, 451, 384, 107, 228, 59, 218,
            167, 476, 455, 476, 130, 19, 481, 221, 173, 67,
            268, 257, 223, 239, 83, 157, 301, 508, 316, 283,
            450, 177, 351, 43, 402, 287, 427, 427, 433, 403,
            130, 2, 364, 71, 395, 411, 7, 362, 34, 180,
            346, 303, 438, 55, 27, 6, 212, 245, 431, 445,
            13, 283, 107, 281, 243, 427, 54, 155, 339, 404,
            476, 469, 323, 242, 457, 204, 139, 465, 483, 90,
            47, 314, 393, 402, 286, 338, 325, 416, 68, 241,
            346, 514, 442, 371, 280, 170, 283, 251, 243, 107,
            57, 121, 61, 381, 363, 436, 502, 419, 303, 387,
            427, 350, 186, 305, 155, 390, 45, 480, 291, 114,
            124, 122, 30, 51, 493, 310, 221, 261, 479, 381,
            368, 21, 502, 347, 319, 268, 268, 223, 89, 56,
            95, 1, 323, 199, 224, 478, 74, 269, 444, 365,
            383, 53, 487, 330, 21, 383, 43, 242, 129, 7,
            109, 415, 460, 13, 247, 182, 281, 0, 405, 371
        ]

        print(circularArrayRotation(a: numbers, k: 100000, queries: queries))
    }
    
    func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
        var res = [Int]()
        let n = a.count
        for query in queries {
            res.append(a[(query-k) %% n])
        }
        return res
    }

}

infix operator %%

extension Int {
    
    static func %% (lhs: Int, rhs: Int) -> Int {
        let r = lhs % rhs
        return r < 0 ? r + rhs : r
    }

}
