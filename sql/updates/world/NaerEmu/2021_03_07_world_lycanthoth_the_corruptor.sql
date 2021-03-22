-- Quest 25272,25273 Lycanthoth the Corruptor
DELETE FROM `smart_scripts` where `entryorguid`='39446' AND `source_type`='0';
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(39446,0,0,0,19,0,100,0,8000,8000,18000,21000,0,11,37776,0,0,0,0,0,1,0,0,0,0,0,0,0,'Lycanthoth - In combat - Cast Blood Howl'),
(39446,0,1,0,6,0,100,0,0,0,0,0,0,12,39622,1,300000,0,0,0,1,0,0,0,0,0,0,0,'Lycanthoth - On Death - Summon Spirit of Logosh'),
(39446,0,2,0,6,0,100,0,0,0,0,0,0,12,39627,1,300000,0,0,0,1,0,0,0,0,0,0,0,'Lycanthoth - On Death - Summon Spirit of Goldrinn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' AND `SourceEntry`='39446';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('22', '2', '39446', '0', '0', '16', '0', '946', '0', '0', '0', '0', '0', '', 'Summon Spirit of Logosh if player horde'),
('22', '3', '39446', '0', '0', '16', '0', '2098253', '0', '0', '0', '0', '0', '', 'Summon Spirit of Goldrinn if player alliance');

UPDATE `quest_template` SET `RewardSpell` = '0' WHERE `ID` IN ('25272','25273'); -- 87332 hasta que se complete con la animacion
