# Data Portfolio


This is my portfolio website
💻📈

### 1. Objective
To identify the top-performing Canadian YouTube channels suitable for marketing collaborations throughout 2024, enabling the marketing team to execute data-driven campaigns that maximise return on investment.

### 2. Problem Statement
Sharon (Head of Marketing) faces the following challenges:

•	Online research consistently returns conflicting and overly complex insights
•	Third-party providers offer expensive options with underwhelming results
•	The BI reporting team lacks the bandwidth to support this assignment
•	The Canadian YouTube dataset contains gaps in engagement metrics. Effective reach is only populated for a subset of channels

### 3. Methodology
## 3.1 Data Sources
•	Power BI dashboard built on the top 100 Canadian YouTube channels (100 channels, 655.9M total subscribers, 538,620 confirmed total effective reach)
•	All channel data in this report is drawn exclusively from the Power BI dashboard screenshots

## 3.2 SQL Data Extraction
The following query was used to extract the top 100 Canadian channels from the raw source table, computing average views per video and views per subscriber as derived metrics.
<img width="922" height="522" alt="image" src="https://github.com/user-attachments/assets/6ff2b1ee-5134-4fa6-99be-220de751cc20" />
_Figure 1: SQL Channel Extraction with Derived Engagement Metrics_
## 3.3 SQL Reach Tier Segmentation
Channels were classified into reach tiers using a CASE expression on subscriber count, producing the Mega, Macro, Mid, and Micro segments used throughout this report.
<img width="922" height="567" alt="image" src="https://github.com/user-attachments/assets/15a56de2-eb3b-492c-877b-6955b0626f43" />
_Figure 2: SQL Reach Tier Segmentation by Subscriber Count_
## 3.4 Data Quality Checks
The following checks were applied before analysis:

<img width="922" height="592" alt="image" src="https://github.com/user-attachments/assets/3ff69f17-677d-47db-ba5a-180144344221" />
_Figure 3: SQL Row Count, Duplicate, and NULL Validation Checks_

| Quality Check | Status | Notes |
|---|---|---|
| Row count check | Passed | 100 channels confirmed in dataset |
| Column count check | Passed | Channel name, subscribers, reach tier, effective reach all present |
| Data type check | Passed | Subscriber counts numerical; tier labels categorical |
| Duplicate check | Passed | No duplicate channel names identified |
| Effective reach completeness | Partial | 5 of 22 visible channels have non-zero effective reach; remainder recorded as 0 |
_Note: Channels showing 0 effective reach are not necessarily inactive. This reflects missing engagement data in the source dataset, not zero audience interaction._

### 4. Dataset Overview
The Power BI dashboard covers 100 Canadian YouTube channels with a combined 655.9M subscribers and 538,620 confirmed total effective reach. The KPI summary below reflects the figures displayed directly in the dashboard.

<img width="922" height="364" alt="image" src="https://github.com/user-attachments/assets/14382de2-308b-45cf-a360-ab96158ccf03" />
_Figure 4: Key Metrics from the Canadian YouTube Power BI Dashboard_

## 4.1 Reach Tier Distribution
Across the confirmed visible channels, the majority fall in the Mid tier (1M–5M subscribers). Two channels reach Mega tier status (10M+), driven by Justin Bieber and Super Simple Songs.

<img width="828" height="527" alt="image" src="https://github.com/user-attachments/assets/48cb3b92-dca2-4ee8-8649-62f3c066839c" />
_Figure 5: Reach Tier Distribution Across Confirmed Visible Channels_

### 5. Confirmed Channel Data
All channels below are drawn directly from the Power BI dashboard screenshots. No additional channels have been included.

<img width="922" height="595" alt="image" src="https://github.com/user-attachments/assets/1932d903-1282-4d75-9eb9-205171796e33" />

_Figure 6: Confirmed Canadian YouTube Channels by Total Subscribers_

| # | Channel Name | Subscribers | Reach Tier | Effective Reach |
|---|---|---|---|---|
| 1 | Justin Bieber | 69.70M | Mega (10M+) | 0 |
| 2 | Super Simple Songs | 37.30M | Mega (10M+) | 0 |
| 3 | The Weeknd | 28.70M | Macro (5M–10M) | 17,200 |
| 4 | WatchMojo.com | 24.70M | Macro (5M–10M) | 0 |
| 5 | Linus Tech Tips | 14.90M | Mid (1M–5M) | 18,000 |
| 6 | AzzyLand | 13.40M | Mid (1M–5M) | 0 |
| 7 | Hacksmith Industries | 13.00M | Mid (1M–5M) | 0 |
| 8 | Typical Gamer | 13.00M | Mid (1M–5M) | 0 |
| 9 | MrSuicideSheep | 12.80M | Mid (1M–5M) | 0 |
| 10 | HZHtube Kids Fun | 12.10M | Mid (1M–5M) | 0 |
| 11 | Baby Big Mouth Kids | 10.50M | Mid (1M–5M) | 0 |
| 12 | SAS-ASMR | 9.40M | Mid (1M–5M) | 0 |
| 13 | Adam's English Lessons (engVid) | 3.00M | Micro (Under 1M) | 909 |
| 14 | AldosWorld TV | 3.60M | Mid (1M–5M) | 0 |
| 15 | Ali Gatie | 3.80M | Mid (1M–5M) | 3,300 |
| 16 | Anna McNulty | 3.70M | Mid (1M–5M) | 0 |
| 17 | AntsCanada | 4.50M | Mid (1M–5M) | 4,200 |
| 18 | Ayo & Teo | 6.40M | Mid (1M–5M) | 0 |
| 19 | Bajan Canadian | 5.70M | Mid (1M–5M) | 0 |
| 20 | BeforeTheyWereFamous | 3.60M | Mid (1M–5M) | 0 |
| 21 | BENOFTHEWEEK | 5.70M | Mid (1M–5M) | 0 |
| 22 | Cartooning Club How to Draw | 3.90M | Mid (1M–5M) | 0 |

_Note: This table shows the 22 channels visible across both Power BI dashboard screenshots. The full dataset contains 100 channels; the remaining channels were not visible in the provided screenshots and are therefore excluded from this report._

### 6. Effective Reach Analysis
Of the 22 confirmed visible channels, 5 have non-zero effective reach values as shown in the dashboard. These are the only channels for which engagement-based campaign modelling is directly supported by the data.

<img width="922" height="453" alt="image" src="https://github.com/user-attachments/assets/a0501468-40fa-45d3-b04a-76b75e7f820a" />
_Figure 7: Effective Reach for the 5 Confirmed Non-Zero Channels_

| Channel | Subscribers | Reach Tier | Effective Reach |
|---|---|---|---|
| Linus Tech Tips | 14.90M | Mid (1M–5M) | 18,000 |
| The Weeknd | 28.70M | Macro (5M–10M) | 17,200 |
| AntsCanada | 4.50M | Mid (1M–5M) | 4,200 |
| Ali Gatie | 3.80M | Mid (1M–5M) | 3,300 |
| Adam's English Lessons (engVid) | 3.00M | Micro (Under 1M) | 909 |

### 7. Campaign Recommendations
Recommendations are based strictly on data confirmed in the Power BI dashboard. Channels without effective reach data are recommended on the basis of subscriber tier and reach scale.

## 7.1 Primary Recommendation: Linus Tech Tips (Sponsored Video Series)
Linus Tech Tips has the highest confirmed effective reach in the dataset (18,000) among channels with available engagement data. Its large subscriber base (14.9M), consistent upload schedule, and technology-focused audience make it the strongest candidate for a sponsored video series. This campaign type rewards consistent uploaders and provides measurable ROI across multiple touchpoints.

## 7.2 Secondary Recommendation: The Weeknd (Product Placement or Influencer Deal)
The Weeknd holds the second-highest confirmed effective reach (17,200) and the third-largest subscriber base (28.7M) in the dataset. For brands targeting mainstream music and lifestyle demographics, a product placement or influencer marketing deal would generate broad exposure. A combined outreach to both Linus Tech Tips and The Weeknd would yield a total confirmed effective reach of 35,200.

## 7.3 Mid-Tier Channels with Confirmed Reach: AntsCanada and Ali Gatie
AntsCanada (4,200 effective reach) and Ali Gatie (3,300 effective reach) are Mid-tier channels with confirmed engagement data. While their subscriber counts are lower, their effective reach figures indicate genuine audience interaction. These channels represent lower-cost partnership opportunities for brands that do not require Mega or Macro-tier scale.

## 7.4 Mega-Tier Channels: Pending Engagement Data
Justin Bieber (69.7M) and Super Simple Songs (37.3M) lead the dataset by subscriber count but show 0 effective reach in the dashboard. This is a reflection of missing engagement data, not channel inactivity. Supplementing the dataset with YouTube API data is recommended before any partnership decisions are made for these channels.

| Campaign Type | Recommended Channel | Data Basis | Rationale |
|---|---|---|---|
| Sponsored Series | Linus Tech Tips | 18,000 eff. reach | Highest confirmed engagement; consistent uploader; tech audience |
| Influencer / Placement | The Weeknd | 17,200 eff. reach | Second-highest engagement; 28.7M subs; mainstream lifestyle audience |
| Micro-Partnership | AntsCanada / Ali Gatie | 4,200 / 3,300 | Lower-cost deals with confirmed engagement data |
| Pending Data | Justin Bieber / SSS | Eff. reach: 0 (data missing) | Revisit once YouTube API engagement data is available |

### 8. Limitations
•	This report covers only the 22 channels visible across both Power BI dashboard screenshots; 78 of the 100 channels in the full dataset are not included
•	Effective reach is missing for the majority of visible channels. 17 of 22 show 0
•	No views per video or upload frequency data is present in the Canadian dataset
•	Subscriber count is used as a reach proxy for channels where engagement data is absent
•	Data represents a point-in-time snapshot; figures may have changed since collection

_Recommendation: Pull full engagement metrics via the YouTube Data API v3 to enable ROI modelling across all 100 channels in a future iteration._

### 9. Next Steps

| # | Action | Owner |
|---|---|---|
| 1 | Enrich dataset with YouTube API (avg views/video, upload frequency, engagement rate) for all 100 channels | BI / Data team |
| 2 | Initiate outreach to Linus Tech Tips for a sponsored video series proposal | Sharon / Marketing |
| 3 | Explore product placement or influencer deal with The Weeknd's management | Sharon / Marketing |
| 4 | Assess lower-cost micro-partnership opportunities with AntsCanada and Ali Gatie | Sharon / Marketing |
| 5 | Revisit Justin Bieber and Super Simple Songs once full engagement data is available | BI / Data team |
| 6 | Publish SQL queries, Power BI file, and documentation to GitHub for reproducibility | Austin Amadi |
















