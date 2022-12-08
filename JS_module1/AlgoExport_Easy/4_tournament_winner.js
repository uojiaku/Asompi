
    const comp = [
      ["HTML", "C#"],
      ["C#", "Python"],
      ["Python", "HTML"]
    ]
    const res = [0, 0, 1]
  

const HOME_TEAM_WON = 1;

// O(n) time | O(k) - where n is the number of competitions and k is the number of teams

const tournamentWinner = (competitions, results) => {
    let currentBestTeam = '';
    const scores = {[currentBestTeam]: 0}

    for (let idx = 0; idx < competitions.length; idx++){
        const result = results[idx];
        const [homeTeam, awayTeam] = competitions[idx];

        const winningTeam = (result === HOME_TEAM_WON) ? homeTeam : awayTeam;

        updateScores(winningTeam, 3, scores);

        if (scores[winningTeam] > scores[currentBestTeam]) {
            currentBestTeam = winningTeam;
        }
    }
    return currentBestTeam;

}

const updateScores = (team, points, scores) => {
    if (!(team in scores)) {
        scores[team] = 0;
    }

    scores[team] += points;
    
}

console.log(tournamentWinner(comp, res))

// define 1 as the var for the winning team
// create an empty string for currentBestTeam
// for loop that runs for the length of the competitions array
//// extract a result from each iteration
//// extract the home and away team from each iteration
//// if the result is 1, then the hometeam won, else the awayTeam won
//// use the updateScores function, to update the score dictionary
//// if scores[winningTeam] is greater than scores[currentBestTeam]
//// then currentBestTeam = winningTeam
// return the currentBestTeam

// create the updateScore function with three params - team, points, scores
// if there is no team in scores array, 
// create one with scores[team] = 0
// outside of the if statement update the scores for each team 