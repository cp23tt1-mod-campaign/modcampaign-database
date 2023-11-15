-- Insert data into Campaign table
INSERT INTO `Campaign` (`campaignId`, `campaignName`, `campaignDetail`, `campaignStart`, `campaignEnd`, `campaignType`, `campaignUserLimit`, `campaignCategory`)
VALUES
(1, 'Campaign 1', 'Description for Campaign 1', '2023-10-23 08:00:00', '2023-10-30 08:00:00', 'Individual', 50, 1),
(2, 'Campaign 2', 'Description for Campaign 2', '2023-11-06 10:00:00', '2023-11-13 10:00:00', 'Group', 30, 2);

-- Insert data into CampaignCategory table
INSERT INTO `CampaignCategory` (`campaignCategoryId`, `categoryName`, `categoryTarget`)
VALUES
(1, 'Category 1', 'Target for Category 1'),
(2, 'Category 2', 'Target for Category 2');

-- Insert data into Feedback table
INSERT INTO `Feedback` (`feedbackId`, `subject`, `description`, `date`, `userId`)
VALUES
(1, 'Feedback 1', 'Description for Feedback 1', '2023-10-25 14:00:00', 1),
(2, 'Feedback 2', 'Description for Feedback 2', '2023-11-08 15:00:00', 2);

-- Insert data into User table
INSERT INTO `User` (`userId`, `username`, `password`, `firstName`, `lastName`, `bmi`, `height`, `weight`, `calories`, `role`, `healthPlatform`)
VALUES
(1, 'user1', 'password1', 'John', 'Doe', 25, 175, 75, '2000', 'Creator', 'HealthPlatform1'),
(2, 'user2', 'password2', 'Jane', 'Smith', 22, 160, 60, '1800', 'Attendess', 'HealthPlatform2');

-- Insert data into User_in_Campaign table
INSERT INTO `User_in_Campaign` (`userId`, `campaignId`)
VALUES
(1, 1),
(2, 1),
(2, 2);

