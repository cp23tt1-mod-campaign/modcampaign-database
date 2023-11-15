-- Inserting data into CampaignCategory table
INSERT INTO CampaignCategory (campaignCategoryId, categoryName, categoryTarget) VALUES
(1, 'Run', 'step'),
(2, 'Education', 'Supporting education initiatives'),
(3, 'Health and Fitness', 'Stay active and fit'),
(4, 'Arts and Culture', 'Promoting arts and cultural activities'),
(5, 'Environment', 'Environment conservation and awareness');

-- Inserting data into User table
INSERT INTO User (userId, username, password, firstName, lastName, bmi, height, weight, calories, role, healthPlatform) VALUES
(1, 'jirasinAdmin', 'password123', 'Jirasin', 'Chatbanyong', 25, 180, 75, '2000', 'Creator', 'AppleHealth'),
(2, 'naruebet', 'pass456', 'Naruebet', 'Pattarasanya', 22, 165, 60, '1800', 'Attendess', 'GoogleFit'),
(3, 'creator1', 'securePass', 'Bob', 'Smith', 27, 175, 80, '2200', 'Creator', 'AppleHealth'),
(4, 'attendee1', 'secret', 'Eva', 'Williams', 23, 160, 55, '1600', 'Attendess', 'AppleHealth'),
(5, 'napasorn', 'adminPass', 'Napasorn', 'Pattanadecha', 29, 185, 90, '2500', 'Creator', 'AppleHealth');

-- Inserting data into Campaign table
INSERT INTO Campaign (campaignId, campaignName, campaignDetail, campaignStart, campaignEnd, campaignType, campaignImageUrl, campaignUserLimit, campaignCategoryId, userId) VALUES
(1, 'Fitness Challenge', 'Join our fitness challenge to stay healthy and active.', '2023-11-20 08:00:00', '2023-12-20 20:00:00', 'Individual', 'image1.jpg', 100, 1, 1),
(2, 'Education for All', 'Support education for underprivileged children.', '2023-12-01 10:00:00', '2023-12-31 18:00:00', 'Group', 'image2.jpg', 50, 2, 3),
(3, 'Community Cleanup', 'Volunteer for a cleaner and greener community.', '2023-11-25 09:00:00', '2023-12-15 17:00:00', 'Group', 'image3.jpg', 30, 3, 1),
(4, 'Art Exhibition', 'Promoting local art and culture through an exhibition.', '2023-12-10 12:00:00', '2023-12-20 22:00:00', 'Individual', 'image4.jpg', NULL, 4, 2),
(5, 'Green Initiative', 'Join us in conserving the environment for a better future.', '2023-11-30 14:00:00', '2023-12-31 23:59:59', 'Individual', 'image5.jpg', 200, 5, 4);

-- Inserting data into Feedback table
INSERT INTO Feedback (feedbackId, subject, description, date, userId) VALUES
(1, 'Great Event!', 'The fitness challenge was fantastic. Looking forward to the next one!', '2023-12-01 15:30:00', 2),
(2, 'Suggestion for Improvement', 'Consider adding more educational content to the platform.', '2023-11-28 10:45:00', 4),
(3, 'Community Cleanup Feedback', 'Thank you for organizing the community cleanup. It made a significant impact!', '2023-12-05 18:20:00', 3),
(4, 'Art Exhibition Appreciation', 'The art exhibition showcased amazing talent. Kudos to the organizers!', '2023-12-15 21:00:00', 5),
(5, 'Green Initiative Support', "I fully support the green initiative. Let's work together for a sustainable future!", '2023-12-03 12:10:00', 1);

-- Inserting data into User_in_Campaign table
INSERT INTO User_in_Campaign (userId, campaignId) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(1, 2),
(3, 2),
(5, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(3, 4),
(5, 5);




