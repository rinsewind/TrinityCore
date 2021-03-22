-- Shrine of Goldrinn quest order
UPDATE `quest_template` SET `AllowableRaces` = '946' WHERE `ID` IN ('25269','25270','25272','25279','25277','25355','25354','25617','25612');
UPDATE `quest_template` SET `AllowableRaces` = '2098253' WHERE `ID` IN ('25268','25271','25273','25280','25278','25353','35352','25618','25611'); 

DELETE FROM `quest_template_addon` WHERE `ID` IN ('25279','25280','25297','25300','25328','25332','25354','25575','25576','25577','25599');
UPDATE `quest_template_addon` SET `NextQuestID`='25271' WHERE `ID`='25268';
UPDATE `quest_template_addon` SET `NextQuestID`='25270' WHERE `ID`='25269';
UPDATE `quest_template_addon` SET `NextQuestID`='25272' WHERE `ID`='25270';
UPDATE `quest_template_addon` SET `NextQuestID`='25273' WHERE `ID`='25271';
UPDATE `quest_template_addon` SET `NextQuestID`='25279',`ExclusiveGroup` = '25272' WHERE `ID`='25272';
UPDATE `quest_template_addon` SET `NextQuestID`='25280',`ExclusiveGroup` = '25272' WHERE `ID`='25273';
UPDATE `quest_template_addon` SET `NextQuestID`='25355' WHERE `ID`='25277';
UPDATE `quest_template_addon` SET `NextQuestID`='25353' WHERE `ID`='25278';
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25279', '0', '0', '0', '25272', '25277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25280', '0', '0', '0', '25273', '25278', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25297', '0', '0', '0', '25272', '25298', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25300', '0', '0', '0', '25272', '25301', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template_addon` SET `NextQuestID`='25303' WHERE `ID`='25301';
UPDATE `quest_template_addon` SET `NextQuestID`='25312' WHERE `ID`='25303';
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25328', '0', '0', '0', '0', '25332', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25332', '0', '0', '0', '25328', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template_addon` SET `PrevQuestID`='25278', `NextQuestID`='25618' WHERE `ID`='25353';
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25354', '0', '0', '0', '25277', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template_addon` SET `PrevQuestID` = '25277', `NextQuestID` = '25617' WHERE (`ID` = '25355');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25575', '0', '0', '0', '0', '25599', '-25575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25576', '0', '0', '0', '0', '25599', '-25575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25577', '0', '0', '0', '0', '25599', '-25575', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template_addon` SET `NextQuestID`='25255' WHERE `ID`='25584';
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES ('25599', '0', '0', '0', '0', '25600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
UPDATE `quest_template_addon` SET `ExclusiveGroup`='25611' WHERE `ID`='25611';
UPDATE `quest_template_addon` SET `ExclusiveGroup`='25611' WHERE `ID`='25612';
UPDATE `quest_template_addon` SET `ExclusiveGroup`='25617' WHERE `ID`='25617';
UPDATE `quest_template_addon` SET `ExclusiveGroup`='25617' WHERE `ID`='25618';

DELETE FROM `quest_pool_template` WHERE `poolId` IN ('25272','25611','25617','25575');
INSERT INTO `quest_pool_template` (`poolId`, `numActive`, `description`) VALUES 
('25272', '0', 'goldrinn 25272'),
('25611', '0', 'goldrinn 25611'),
('25617', '0', 'goldrinn 25617'),
('25575', '0', 'goldrinn 25575');

DELETE FROM `quest_pool_members` WHERE `questId` IN ('25272','25273','25575','25576','25577','25611','25612','25617','25618');
INSERT INTO `quest_pool_members` (`questId`, `poolId`, `poolIndex`, `description`) VALUES 
('25272', '25272', '0', 'Lycanthoth the Corruptor'),
('25273', '25272', '1', 'Lycanthoth the Corruptor'),
('25575', '25575', '0', 'Forged of Shadow and Flame'),
('25576', '25575', '1', 'Rage of the Wolf Ancient'),
('25577', '25575', '2', 'Crushing the Cores'),
('25611', '25611', '0', 'Return from the Firelands'),
('25612', '25611', '1', 'Return from the Firelands'),
('25617', '25617', '0', 'Into the Maw!'),
('25618', '25617', '1', 'Into the Maw!');
