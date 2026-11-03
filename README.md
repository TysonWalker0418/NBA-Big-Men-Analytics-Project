NBA Big-Men three-point shot: 2000-2001 to 2025-2026

    Between 2000 and 2026, big-men's share of three-point roughly doubled while offense efficiency and pace also rose. 
    I compared teams within each season to examine whether teams that relied more on big-man three-point shooting also had differences in 
    offensive efficiency, pace, and ball movement. I found a small positive relationship with offensive efficiency during 2001-2013, but 
    that relationship was not statistically significant in the 2014-2026 period. Overall, the results suggest that big men became a much 
    larger part of the NBA's three-point shooting evolution, but the data doesn't necessarily show that this change caused improvements in
    team offense.
    
https://public.tableau.com/views/Nba_bigs_Dashboard/Dashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

Question:

How has the rise in three-point shooting by NBA big men (PF-C) between 2000-2001 and 2025-2026 seasons related to team pace, offensive efficiency, and ball movement within the NBA?

Why I chose this question:

Being a former college basketball player, there is a always a lot of curiosity not only when I used to play but especially now as I continue to watch the sport of basketball. One night my brother and I were having a disagreement on whether we thought big-men shooting threes causes a lot of change to the game of basketball as it continues to grow and change as the years go on. With that being said I thought I would take matters into my own hands and figure it out myself, leading me to develop this question.

Key Findings?

- Big's developed and became better shooters over time: The share of three-point attempts from bigs compared to the rest of the team rose from about 12% (2001) to around 26% (2026), with a peak of 30% (2020).The share of threes taken by bigs that are qualified within averaging 1+ three per game went up from about 12% to roughly 72%.

- Power Forward's led and Center's followed: Power Forward's (PFs) had averaged 1+ three a game every season since 2013 (about 3.4 by 2020) with a peak of attempts in 2025 with 3.6. Now Center's (C) have averaged 1+ three a game every season since 2019 with a peak around 1.9 in 2026.

- The League changed at the same time: Pace essentially rose from about 91 to 99 possessions per 48 minutes (a full NBA game without overtime), offensive rating went from about 103 to 116, with assists from around 22 to 27 per game, with the largest jump between 2014 and 2020. Within this topic I can't distinctly correlate big men shooting more threes necessarily causes these to rise with the data I used but overall it contributes in the overall big picture.

- Between teams, the link is weak: I decided to compare each team to its own season's league average, 2001-2013 teams who's big men who took 10 more percentage points of the team's threes had offensive ratings about 0.5 points per 100 possessions higher (95% range 0.2 to 0.8,p=0.003) The result out of this was fragile, to offset this I removed Dallas which cut the correlation from 0.15 to 0.10, and controlling for each team's overall three-point rate cut the effect to +0.24 (p=0.14). For 2014-2026 there was really no relationship (-0.16, p=0.43) I found no reliable link to pace or assists in either period. I used p-value to determine whether the relationships I found were significant statistically or if they happen due to random variation in the data. 0.05 is important because this is what I used as my significance level. For instance a p-value lower than 0.05 means there is enough statistical data evidence to determine the relationship is significant. Once again it shows a significant relationship, but it doesn't necessarily prove that big-man three-point shooting caused the change in offensive efficiency.

My takeaway:

I expected data to show a major leap as years went on through 2000-2026 with big-men threes taken pulling offensive efficiency up with them. What I found was bigs clearly became better shooters which resulted to bigs shooting far more threes, but I couldn't necessarily prove that them attempting more threes changed efficiency or pace across teams in the same season in a reliable way. The part that surprised me the most was that the link I found in early years disappeared after year 2014 even when bigs shot more threes than ever. I would be cautious about the fragile early-era result. In 2001-2013, teams whose bigs took a larger share of threes had slightly. higher offensive ratings, which could make someone think bigs shooting more threes made offenses better. But when I compared teams while holding thier overall three-point rate constant, the effect shrank and became less coninving which may have possibly been because the overall teams shot more threes (including bigs). This showed me that checking and making sure your data is correct and convincing is very important. What I learned overall is sometimes you have a question you want to find, but sometimes you don't get an exact answer to that question, but a better understanding.

Data:

- Source: NBA stats (1947-present) on Kaggle, originally from Basketball-Reference. Downloaded October 14th, 2026.
- Files used: Player Totals.csv and Team Summaries.csv (Player Totals= Big-man 3pa metrics and Team Summaries= Compare against team performance) the raw files are not included in this repo; downloaded them into data/raw/ .
- Result: 776 team-seasons and 12,806 player-seasons, 2001-2026 (season 2001= 2000-2001 season)

Method and Decisions:

Choice| Definition| Why

- Big| Listed position C or PF| Easy and simple but includes some wings who can be PF's as well.
- Qualified player| 500+ total minutes| Removes small samples for cleaner data.
- Shoots threes| 1+ attempt per game| Visible threshold
- Team comparison| Each value minus that season's league average| Removes shared rise over time.
- Eras| 2001-2013 vs 2014-2026| After seeing the trend this is what I decided; results held for split years 2011-2016.

(Team assists was completed by summing player assists, since the team file does not include them)

Limitations:

- Team-level data cannot show cause. A strong offense may give its bigs more freedom to shoot, not the reverse.
- “Big” means listed position (PF, Centers) which include some wings who can be listed as Power Forwards but misses hybrid players who play other positions at once.
- A dip in 2011-2012 makes an appearance in big-man share, in Power Forwards’ attempts, and in bigs shooting threes. I cannot explain it further with this data I have/used.
- The 500-minute cutoff, the one-three-per-game threshold, and 2013/2014 split were choices of mine that I thought would make the data more presentable and understandable. The early-era result held for split years from 2011 to 2016.
- The team comparison cannot say whether the league-wide rise helped offenses throughout these years since it affected every team at once.
- “Flow” is measured only by assists per game in this data. Assists capture one kind of ball movement. I didn’t have touches, passes, or time of possession , which only exist from 2013-2014 and which my original plan mentioned. The claim about ball movement is narrower than the question.
- Defense is absent in which the league’s pace and scoring depend on how other teams defend throughout the league, which I didn’t model.
- I ran several checks within the data after the first result and Dallas was chosen as the check because it stood out.
- Everything here is about teams , so it says nothing about individual players. A team’s big-man share could be one or multiple players (PF and C).
- Pace and offensive ratings are estimates, leading to possessions aren’t directly counted in box score data which I don’t have so both rest on a published estimate.
- For traded players, the share uses each team stint separately, so a player listed at Center on one team and Power Forward on another is controlled by stint, while the player-level tables use a single combined row.
- Team assists are calculated by me. They’re the sum of players’s assists, not a published team figure in which it should all still match as if I did pull a teams published total.
- I picked 2013/2014 because the trend table showed a significant jump there. The result held for others years from 2011 to 2016 but this choice wasn’t something that was made in advance.
- The same franchise appears about 26 times, and a team’s offense one year tends to usually resemble its offense the next. This makes the p-values appear more convincing than they should since the average calculation assumes each row is unrelated. In this scenario I should have clustered the errors by team, which I didn’t do so the early-era p=0.003 is more than likely too small but treated as less certain then it reads.
- .500 total minutes relates to different things in the shortened 2012 (66-game), 2020 (72-game, then the bubble), and 2021 (72-game) seasons.

Next steps:

- Use tracking data or play-by-play to measure ball movement directly to get more precise data, instead of relying on only assists per game.
- Look at lineups, schemes, and individual players rather than team averages to get a better understanding of cause and effect.
- Replace listed positions with a data-driven definition of a big (ex. by shot location and rebounding).

How to reproduce:

- Download the Kaggle files into data/raw/ .
- Run notebooks/01_clean_and_metrics.ipynb .
- Run sql/01_create_tables.sql , then load the CSVs from data/clean/ into MySQL.
- Run notebooks/02_analysis.ipynb along with sql/02_analysis_queries.sql .
- Open tableau/nba_bigs_dashboard.twbx .

(Tools: Python(pandas, matplotlib, statsmodels) MySQL, Tableau Desktop)

Repo layout:

- data/clean = cleaned tables
- notebooks = cleaning and analysis
- sql = queries and schema
- tableau = dashboard
- visuals = charts
- docs = full conclusion

How I worked:

This was my first solo data project. I used Claude as a tutor to triple check specifically with my pandas work while helping explain certain errors that would occur. I chose the question, the definitions (what is considered as a big, the 500-minute cutoff, the era split) and the conclusions while also running and checking every step throughout this process myself.

Contact:

Tyson Walker | tyjwalker03@gmail.com | LinkedIn: tyson-walker04182003

















