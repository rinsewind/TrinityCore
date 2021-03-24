-- Elementary! https://es.wowhead.com/quest=25303/elemental
SET @QUEST= 25303;
SET @NPC1= 39730; -- fire
SET @NPC2= 39737; -- earth
SET @NPC3= 39736; -- air
SET @NPC4= 39738; -- water
SET @NPC5= 39756; -- https://www.wowhead.com/npc=39756/the-manipulator
SET @SPELL1= 74287;
SET @SPELL2= 74288;
SET @SPELL3= 74290;
SET @SPELL4= 74292;
SET @SPELL5= 74294;

UPDATE `creature_template` SET `IconName`='Interact', `npcflag` = '16777216', `AIName` = '' WHERE `entry` IN (@NPC1,@NPC2,@NPC4);
UPDATE `creature_template` SET `IconName`='Interact', `npcflag` = '16777216', `AIName` = 'SmartAI' WHERE `entry`= @NPC3;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@NPC1,@NPC2,@NPC3,@NPC4);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(@NPC1,@SPELL1,'1','0'),
(@NPC2,@SPELL2,'1','0'),
(@NPC3,@SPELL3,'1','0'),
(@NPC4,@SPELL4,'1','0'),
(@NPC1,@SPELL5,'1','0'),
(@NPC2,@SPELL5,'1','0'),
(@NPC3,@SPELL5,'1','0'),
(@NPC4,@SPELL5,'1','0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='18' AND `SourceGroup` IN (@NPC1,@NPC2,@NPC3,@NPC4);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- Crucible of fire
('18',@NPC1,@SPELL1,'0','0','1','1',@SPELL1,'0','0','1','0','0','','Crucible of fire cast Aura de fuego if player has not Aura de fuego'),
('18',@NPC1,@SPELL5,'0','0','1','0',@SPELL1,'0','0','0','0','0','','Crucible of fire cast Explosión elemental if player has not Aura de fuego'),
-- Crucible of earth
('18',@NPC2,@SPELL2,'0','0','1','0',@SPELL1,'0','0','0','0','0','','Crucible of fire cast Aura de tierra if player has Aura de fuego'),
('18',@NPC2,@SPELL5,'0','0','1','0',@SPELL1,'0','0','1','0','0','','Crucible of fire cast Explosión elemental if player has not Aura de fuego'),
-- Crucible of air
('18',@NPC3,@SPELL3,'0','0','1','0',@SPELL2,'0','0','0','0','0','','Crucible of fire cast Aura de fuego if player has Aura de tierra'),
('18',@NPC3,@SPELL5,'0','0','1','0',@SPELL2,'0','0','1','0','0','','Crucible of fire cast Explosión elemental if player has not Aura de tierra'),
-- Crucible of water
('18',@NPC4,@SPELL4,'0','0','1','0',@SPELL3,'0','0','0','0','0','','Crucible of water cast Potenciación Crepuscular if player has Aura de aire'),
('18',@NPC4,@SPELL5,'0','0','1','0',@SPELL3,'0','0','1','0','0','','Crucible of water cast Explosión elemental if player has not Aura de aire');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger`= @SPELL5;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(@SPELL5, -@SPELL1, '0', 'Explosión elemental quita Aura de fuego'),
(@SPELL5, -@SPELL2, '0', 'Explosión elemental quita Aura de tierra'),
(@SPELL5, -@SPELL3, '0', 'Explosión elemental quita Aura de aire'),
(@SPELL5, -@SPELL4, '0', 'Explosión elemental quita Potenciación Crepuscular');

DELETE FROM `smart_scripts` WHERE `entryorguid` = @NPC3 AND `source_type`='0';
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@NPC3,'0','0','0','73','0','100','0',@SPELL3,'0','0','0','12',@NPC5,'2','300000','0','0','0','8','0','0','0','5007.825195','-2029.565430','1270.925903','0.469569','Crucible of air on spell_click summon The Manipulator');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`='22' AND `SourceEntry` = @NPC3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('22','1',@NPC3,'0','0','1','0',@SPELL1,'0','0','0','0','0','','Crucible of air cast script if player has Aura de fuego'),
('22','1',@NPC3,'0','0','1','0',@SPELL2,'0','0','0','0','0','','Crucible of air cast script if player has Aura de tierra');
