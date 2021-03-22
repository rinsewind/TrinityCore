-- Mount Hyjal: Free Your Mind, the Rest Follows
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`='39644';

DELETE FROM `smart_scripts` WHERE `entryorguid`='39644' AND `source_type`='0';
DELETE FROM `smart_scripts` WHERE `entryorguid`='3964400' AND `source_type`='9';
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('39644','0','0','0','62','0','100','0','11279','0','0','0','0','80','3964400','0','0','0','0','0','1','0','0','0','0','0','0','0','Twilight servitor - On gossip select - Run script.'),
('3964400','9','0','1','0','0','100','0','0','0','0','0','0','33','39719','0','0','0','0','0','7','0','0','0','0','0','0','0','Twilight servitor - On script - Gives credit.'),
('3964400','9','1','2','0','0','100','0','0','0','0','0','0','83','1','0','0','0','0','0','1','0','0','0','0','0','0','0','Twilight servitor - On script - Removes npc.flag.'),
('3964400','9','2','3','0','0','100','0','0','0','0','0','0','84','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Twilight servitor - On script - Say text.'),
('3964400','9','3','0','0','0','100','0','5000','5000','5000','5000','0','41','0','0','0','0','0','0','1','0','0','0','0','0','0','0','Twilight servitor - On script - Despawn.');

DELETE FROM `gossip_menu_option` WHERE `MenuId`='11279';
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcflag`, `VerifiedBuild`) VALUES 
('11279', '0', '0', '<Administer the draught.>', '39729', '1', '1', '0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '15' AND `SourceGroup` = '11279' AND `SourceEntry` = '0';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('15', '11279', '0', '0', '0', '9', '0', '25298', '0', '0', '0', '0', '0', '', 'Gossip available if player has quest');

DELETE FROM `creature_text` WHERE `CreatureID`='39644';
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `SoundType`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
('39644', '0', '0', 'My ... brain ... hurts!', '0', '0', '0', '0', '10000', '0', '0', '39733', '0', '0'),
('39644', '0', '1', 'What happened to me? I''m leaving!', '0', '0', '0', '0', '10000', '0', '0', '39731', '0', '0'),
('39644', '0', '2', 'Whoa, you made the voices go away. I''m outta here!', '0', '0', '0', '0', '10000', '0', '0', '39734', '0', '0'),
('39644', '0', '3', 'Wha - what? Where am I? I''ve got to get out of here!', '0', '0', '0', '0', '10000', '0', '0', '37930', '0', '0'),
('39644', '0', '4', '...What am I saying? Nothing makes sense anymore. I''ve got to get out of this place!', '0', '0', '0', '0', '10000', '0', '0', '39732', '0', '0');
