func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    var currentBestTeam = ""
    var scores = [String: Int]()
    scores = [String: Int] ()
    scores[currentBestTeam] = 0
    for (idx, competition) in competitions.enumerated() {
        let result = results[idx]
        let (homeTeam, awayTeam) = (competition[0], competition[1])
            // initialize var w/ first two values
        var winningTeam = awayTeam
        if result == HOME_TEAM_WON {
            winningTeam = homeTeam
        }

        updateScores(winningTeam, 3, &scores)

        if scores[winningTeam]! > scores[currentBestTeam]! {
            currentBestTeam = winningTeam
        }
    }
    return currentBestTeam
}

func updateScores(_ team: String, _ points: Int, _ scores: inout [String: Int]) {
    if scores[team] == nil {
        scores[team] = 0
    }
    scores[team] = scores[team]! + points
    print(scores[team])
}

var comp = [["HTML", "C#", 
            "Python", "C#", 
            "Python", "HTML"]]
var res = [0,0,1]
let HOME_TEAM_WON = 1
print(tournamentWinner(comp, res))