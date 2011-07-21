ALTER TABLE GROUPER_ATTRIBUTES DROP constraint FK_ATTRIBUTES_FIELD_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_ACTION_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_DEF_NAME_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_ASSIGN_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_DEF_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_GROUP_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_MEMBER_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_MSHIP_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN DROP constraint FK_ATTR_ASSIGN_OWNER_STEM_ID;
ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN_VALUE DROP constraint FK_ATTR_ASSIGN_VALUE_ASSIGN_ID;
ALTER TABLE GROUPER_ATTRIBUTE_DEF DROP constraint FK_ATTR_DEF_STEM;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME DROP constraint FK_ATTR_DEF_NAME_DEF_ID;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME DROP constraint FK_ATTR_DEF_NAME_STEM;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET DROP constraint FK_ATTR_DEF_NAME_IF;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET DROP constraint FK_ATTR_DEF_NAME_SET_PARENT;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET DROP constraint FK_ATTR_DEF_NAME_THEN;
ALTER TABLE GROUPER_ATTRIBUTE_DEF_SCOPE DROP constraint FK_ATTR_DEF_SCOPE_DEF_ID;
ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION DROP constraint FK_ATTR_ASSN_ATTR_DEF_ID;
ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET DROP constraint FK_ATTR_ACTION_SET_IF;
ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET DROP constraint FK_ATTR_ACTION_SET_PARENT;
ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET DROP constraint FK_ATTR_ACTION_SET_THEN;
ALTER TABLE GROUPER_AUDIT_ENTRY DROP constraint FK_AUDIT_ENTRY_TYPE_ID;
ALTER TABLE GROUPER_CHANGE_LOG_ENTRY DROP constraint FK_CHANGE_LOG_ENTRY_TYPE_ID;
ALTER TABLE GROUPER_COMPOSITES DROP constraint FK_COMPOSITES_CREATOR_ID;
ALTER TABLE GROUPER_COMPOSITES DROP constraint FK_COMPOSITES_LEFT_FACTOR;
ALTER TABLE GROUPER_COMPOSITES DROP constraint FK_COMPOSITES_OWNER;
ALTER TABLE GROUPER_COMPOSITES DROP constraint FK_COMPOSITES_RIGHT_FACTOR;
ALTER TABLE GROUPER_FIELDS DROP constraint FK_FIELDS_GROUPTYPE_UUID;
ALTER TABLE GROUPER_FLAT_ATTRIBUTE_DEF DROP constraint FK_FLAT_ATTRDEF_ATTRDEF_ID;
ALTER TABLE GROUPER_FLAT_GROUPS DROP constraint FK_FLAT_GROUP_GROUP_ID;
ALTER TABLE GROUPER_FLAT_MEMBERSHIPS DROP constraint FK_FLAT_MSHIP_FIELD_ID;
ALTER TABLE GROUPER_FLAT_MEMBERSHIPS DROP constraint FK_FLAT_MSHIP_MEMBER_ID;
ALTER TABLE GROUPER_FLAT_MEMBERSHIPS DROP constraint FK_FLAT_MSHIP_OWNER_ATTRDEF_ID;
ALTER TABLE GROUPER_FLAT_MEMBERSHIPS DROP constraint FK_FLAT_MSHIP_OWNER_GROUP_ID;
ALTER TABLE GROUPER_FLAT_MEMBERSHIPS DROP constraint FK_FLAT_MSHIP_OWNER_STEM_ID;
ALTER TABLE GROUPER_FLAT_STEMS DROP constraint FK_FLAT_STEM_STEM_ID;
ALTER TABLE GROUPER_GROUPS DROP constraint FK_GROUPS_CREATOR_ID;
ALTER TABLE GROUPER_GROUPS DROP constraint FK_GROUPS_MODIFIER_ID;
ALTER TABLE GROUPER_GROUPS DROP constraint FK_GROUPS_PARENT_STEM;
ALTER TABLE GROUPER_GROUPS_TYPES DROP constraint FK_GROUPS_TYPES_GROUP_UUID;
ALTER TABLE GROUPER_GROUPS_TYPES DROP constraint FK_GROUPS_TYPES_TYPE_UUID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_CREATOR_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_FIELD_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_MEMBER_FIELD_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_MEMBER_GROUP_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_MEMBER_STEM_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_OWNER_ATTR_DEF_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_OWNER_GROUP_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_OWNER_STEM_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_PARENT_ID;
ALTER TABLE GROUPER_GROUP_SET DROP constraint FK_GROUP_SET_VIA_GROUP_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIPS_COMP_VIA_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIPS_CREATOR_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIPS_GROUP_OWNER_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIPS_MEMBER_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIPS_STEM_OWNER_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MEMBERSHIP_FIELD_ID;
ALTER TABLE GROUPER_MEMBERSHIPS DROP constraint FK_MSHIP_ATTR_DEF_OWNER_ID;
ALTER TABLE GROUPER_ROLE_SET DROP constraint FK_ROLE_IF;
ALTER TABLE GROUPER_ROLE_SET DROP constraint FK_ROLE_SET_PARENT;
ALTER TABLE GROUPER_ROLE_SET DROP constraint FK_ROLE_THEN;
ALTER TABLE GROUPER_STEMS DROP constraint FK_STEMS_CREATOR_ID;
ALTER TABLE GROUPER_STEMS DROP constraint FK_STEMS_MODIFIER_ID;
ALTER TABLE GROUPER_STEMS DROP constraint FK_STEMS_PARENT_STEM;
ALTER TABLE GROUPER_TYPES DROP constraint FK_TYPES_CREATOR_UUID;

insert into grouper_ddl (id, object_name, db_version, last_updated, history) values ('54041ae1e7664b698a9487ab59c8cf69', 'Grouper', 1, '2011/07/21 12:13:23', 
'2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ');
commit;


update grouper_ddl set db_version = 2, last_updated = '2011/07/21 12:13:32', 
history = '2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 3, last_updated = '2011/07/21 12:13:41', 
history = '2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 4, last_updated = '2011/07/21 12:13:50', 
history = '2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 5, last_updated = '2011/07/21 12:14:00', 
history = '2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 6, last_updated = '2011/07/21 12:14:09', 
history = '2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 7, last_updated = '2011/07/21 12:14:18', 
history = '2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 8, last_updated = '2011/07/21 12:14:29', 
history = '2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 9, last_updated = '2011/07/21 12:14:39', 
history = '2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 10, last_updated = '2011/07/21 12:14:55', 
history = '2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 11, last_updated = '2011/07/21 12:15:11', 
history = '2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 12, last_updated = '2011/07/21 12:15:21', 
history = '2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 13, last_updated = '2011/07/21 12:15:31', 
history = '2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 14, last_updated = '2011/07/21 12:15:44', 
history = '2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 15, last_updated = '2011/07/21 12:16:00', 
history = '2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;

DROP INDEX MEMBERSHIP_UNIQ_IDX;


update grouper_ddl set db_version = 16, last_updated = '2011/07/21 12:16:19', 
history = '2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;

CREATE UNIQUE INDEX membership_uniq_idx ON GROUPER_MEMBERSHIPS (OWNER_ID, MEMBER_ID, FIELD_ID);


update grouper_ddl set db_version = 17, last_updated = '2011/07/21 12:16:35', 
history = '2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 18, last_updated = '2011/07/21 12:16:50', 
history = '2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 19, last_updated = '2011/07/21 12:17:04', 
history = '2011/07/21 12:17:04: upgrade Grouper from V18 to V19, 2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 20, last_updated = '2011/07/21 12:17:27', 
history = '2011/07/21 12:17:27: upgrade Grouper from V19 to V20, 2011/07/21 12:17:04: upgrade Grouper from V18 to V19, 2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 21, last_updated = '2011/07/21 12:17:52', 
history = '2011/07/21 12:17:52: upgrade Grouper from V20 to V21, 2011/07/21 12:17:27: upgrade Grouper from V19 to V20, 2011/07/21 12:17:04: upgrade Grouper from V18 to V19, 2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 22, last_updated = '2011/07/21 12:18:14', 
history = '2011/07/21 12:18:14: upgrade Grouper from V21 to V22, 2011/07/21 12:17:52: upgrade Grouper from V20 to V21, 2011/07/21 12:17:27: upgrade Grouper from V19 to V20, 2011/07/21 12:17:04: upgrade Grouper from V18 to V19, 2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;


update grouper_ddl set db_version = 23, last_updated = '2011/07/21 12:18:47', 
history = '2011/07/21 12:18:47: upgrade Grouper from V22 to V23, 2011/07/21 12:18:14: upgrade Grouper from V21 to V22, 2011/07/21 12:17:52: upgrade Grouper from V20 to V21, 2011/07/21 12:17:27: upgrade Grouper from V19 to V20, 2011/07/21 12:17:04: upgrade Grouper from V18 to V19, 2011/07/21 12:16:50: upgrade Grouper from V17 to V18, 2011/07/21 12:16:35: upgrade Grouper from V16 to V17, 2011/07/21 12:16:19: upgrade Grouper from V15 to V16, 2011/07/21 12:16:00: upgrade Grouper from V14 to V15, 2011/07/21 12:15:44: upgrade Grouper from V13 to V14, 2011/07/21 12:15:31: upgrade Grouper from V12 to V13, 2011/07/21 12:15:21: upgrade Grouper from V11 to V12, 2011/07/21 12:15:11: upgrade Grouper from V10 to V11, 2011/07/21 12:14:55: upgrade Grouper from V9 to V10, 2011/07/21 12:14:39: upgrade Grouper from V8 to V9, 2011/07/21 12:14:29: upgrade Grouper from V7 to V8, 2011/07/21 12:14:18: upgrade Grouper from V6 to V7, 2011/07/21 12:14:09: upgrade Grouper from V5 to V6, 2011/07/21 12:14:00: upgrade Grouper from V4 to V5, 2011/07/21 12:13:50: upgrade Grouper from V3 to V4, 2011/07/21 12:13:41: upgrade Grouper from V2 to V3, 2011/07/21 12:13:32: upgrade Grouper from V1 to V2, 2011/07/21 12:13:23: upgrade Grouper from V0 to V1, ' where object_name = 'Grouper';
commit;

ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION
    ADD CONSTRAINT fk_attr_assn_attr_def_id FOREIGN KEY (ATTRIBUTE_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET
    ADD CONSTRAINT fk_attr_action_set_parent FOREIGN KEY (PARENT_ATTR_ASSN_ACTION_ID) REFERENCES GROUPER_ATTR_ASSIGN_ACTION_SET (ID);

ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET
    ADD CONSTRAINT fk_attr_action_set_if FOREIGN KEY (IF_HAS_ATTR_ASSN_ACTION_ID) REFERENCES GROUPER_ATTR_ASSIGN_ACTION (ID);

ALTER TABLE GROUPER_ATTR_ASSIGN_ACTION_SET
    ADD CONSTRAINT fk_attr_action_set_then FOREIGN KEY (THEN_HAS_ATTR_ASSN_ACTION_ID) REFERENCES GROUPER_ATTR_ASSIGN_ACTION (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_action_id FOREIGN KEY (ATTRIBUTE_ASSIGN_ACTION_ID) REFERENCES GROUPER_ATTR_ASSIGN_ACTION (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_def_name_id FOREIGN KEY (ATTRIBUTE_DEF_NAME_ID) REFERENCES GROUPER_ATTRIBUTE_DEF_NAME (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_assign_id FOREIGN KEY (OWNER_ATTRIBUTE_ASSIGN_ID) REFERENCES GROUPER_ATTRIBUTE_ASSIGN (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_def_id FOREIGN KEY (OWNER_ATTRIBUTE_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_group_id FOREIGN KEY (OWNER_GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_member_id FOREIGN KEY (OWNER_MEMBER_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_mship_id FOREIGN KEY (OWNER_MEMBERSHIP_ID) REFERENCES GROUPER_MEMBERSHIPS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN
    ADD CONSTRAINT fk_attr_assign_owner_stem_id FOREIGN KEY (OWNER_STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_ASSIGN_VALUE
    ADD CONSTRAINT fk_attr_assign_value_assign_id FOREIGN KEY (ATTRIBUTE_ASSIGN_ID) REFERENCES GROUPER_ATTRIBUTE_ASSIGN (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF
    ADD CONSTRAINT fk_attr_def_stem FOREIGN KEY (STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME
    ADD CONSTRAINT fk_attr_def_name_stem FOREIGN KEY (STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME
    ADD CONSTRAINT fk_attr_def_name_def_id FOREIGN KEY (ATTRIBUTE_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET
    ADD CONSTRAINT fk_attr_def_name_set_parent FOREIGN KEY (PARENT_ATTR_DEF_NAME_SET_ID) REFERENCES GROUPER_ATTRIBUTE_DEF_NAME_SET (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET
    ADD CONSTRAINT fk_attr_def_name_if FOREIGN KEY (IF_HAS_ATTRIBUTE_DEF_NAME_ID) REFERENCES GROUPER_ATTRIBUTE_DEF_NAME (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_NAME_SET
    ADD CONSTRAINT fk_attr_def_name_then FOREIGN KEY (THEN_HAS_ATTRIBUTE_DEF_NAME_ID) REFERENCES GROUPER_ATTRIBUTE_DEF_NAME (ID);

ALTER TABLE GROUPER_ATTRIBUTE_DEF_SCOPE
    ADD CONSTRAINT fk_attr_def_scope_def_id FOREIGN KEY (ATTRIBUTE_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_ATTRIBUTES
    ADD CONSTRAINT fk_attributes_field_id FOREIGN KEY (FIELD_ID) REFERENCES GROUPER_FIELDS (ID);

ALTER TABLE GROUPER_AUDIT_ENTRY
    ADD CONSTRAINT fk_audit_entry_type_id FOREIGN KEY (AUDIT_TYPE_ID) REFERENCES GROUPER_AUDIT_TYPE (ID);

ALTER TABLE GROUPER_CHANGE_LOG_ENTRY
    ADD CONSTRAINT fk_change_log_entry_type_id FOREIGN KEY (CHANGE_LOG_TYPE_ID) REFERENCES GROUPER_CHANGE_LOG_TYPE (ID);

ALTER TABLE GROUPER_COMPOSITES
    ADD CONSTRAINT fk_composites_owner FOREIGN KEY (OWNER) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_COMPOSITES
    ADD CONSTRAINT fk_composites_left_factor FOREIGN KEY (LEFT_FACTOR) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_COMPOSITES
    ADD CONSTRAINT fk_composites_right_factor FOREIGN KEY (RIGHT_FACTOR) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_COMPOSITES
    ADD CONSTRAINT fk_composites_creator_id FOREIGN KEY (CREATOR_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_FIELDS
    ADD CONSTRAINT fk_fields_grouptype_uuid FOREIGN KEY (GROUPTYPE_UUID) REFERENCES GROUPER_TYPES (ID);

ALTER TABLE GROUPER_FLAT_ATTRIBUTE_DEF
    ADD CONSTRAINT fk_flat_attrdef_attrdef_id FOREIGN KEY (ATTRIBUTE_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_FLAT_GROUPS
    ADD CONSTRAINT fk_flat_group_group_id FOREIGN KEY (GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_FLAT_MEMBERSHIPS
    ADD CONSTRAINT fk_flat_mship_field_id FOREIGN KEY (FIELD_ID) REFERENCES GROUPER_FIELDS (ID);

ALTER TABLE GROUPER_FLAT_MEMBERSHIPS
    ADD CONSTRAINT fk_flat_mship_owner_attrdef_id FOREIGN KEY (OWNER_ATTR_DEF_ID) REFERENCES GROUPER_FLAT_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_FLAT_MEMBERSHIPS
    ADD CONSTRAINT fk_flat_mship_owner_group_id FOREIGN KEY (OWNER_GROUP_ID) REFERENCES GROUPER_FLAT_GROUPS (ID);

ALTER TABLE GROUPER_FLAT_MEMBERSHIPS
    ADD CONSTRAINT fk_flat_mship_owner_stem_id FOREIGN KEY (OWNER_STEM_ID) REFERENCES GROUPER_FLAT_STEMS (ID);

ALTER TABLE GROUPER_FLAT_MEMBERSHIPS
    ADD CONSTRAINT fk_flat_mship_member_id FOREIGN KEY (MEMBER_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_FLAT_STEMS
    ADD CONSTRAINT fk_flat_stem_stem_id FOREIGN KEY (STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_creator_id FOREIGN KEY (CREATOR_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_field_id FOREIGN KEY (FIELD_ID) REFERENCES GROUPER_FIELDS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_via_group_id FOREIGN KEY (VIA_GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_parent_id FOREIGN KEY (PARENT_ID) REFERENCES GROUPER_GROUP_SET (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_owner_attr_def_id FOREIGN KEY (OWNER_ATTR_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_owner_group_id FOREIGN KEY (OWNER_GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_member_group_id FOREIGN KEY (MEMBER_GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_owner_stem_id FOREIGN KEY (OWNER_STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_member_stem_id FOREIGN KEY (MEMBER_STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_GROUP_SET
    ADD CONSTRAINT fk_group_set_member_field_id FOREIGN KEY (MEMBER_FIELD_ID) REFERENCES GROUPER_FIELDS (ID);

ALTER TABLE GROUPER_GROUPS
    ADD CONSTRAINT fk_groups_parent_stem FOREIGN KEY (PARENT_STEM) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_GROUPS
    ADD CONSTRAINT fk_groups_creator_id FOREIGN KEY (CREATOR_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_GROUPS
    ADD CONSTRAINT fk_groups_modifier_id FOREIGN KEY (MODIFIER_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_GROUPS_TYPES
    ADD CONSTRAINT fk_groups_types_group_uuid FOREIGN KEY (GROUP_UUID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_GROUPS_TYPES
    ADD CONSTRAINT fk_groups_types_type_uuid FOREIGN KEY (TYPE_UUID) REFERENCES GROUPER_TYPES (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_memberships_member_id FOREIGN KEY (MEMBER_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_membership_field_id FOREIGN KEY (FIELD_ID) REFERENCES GROUPER_FIELDS (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_memberships_creator_id FOREIGN KEY (CREATOR_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_memberships_group_owner_id FOREIGN KEY (OWNER_GROUP_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_memberships_stem_owner_id FOREIGN KEY (OWNER_STEM_ID) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_memberships_comp_via_id FOREIGN KEY (VIA_COMPOSITE_ID) REFERENCES GROUPER_COMPOSITES (ID);

ALTER TABLE GROUPER_MEMBERSHIPS
    ADD CONSTRAINT fk_mship_attr_def_owner_id FOREIGN KEY (OWNER_ATTR_DEF_ID) REFERENCES GROUPER_ATTRIBUTE_DEF (ID);

ALTER TABLE GROUPER_ROLE_SET
    ADD CONSTRAINT fk_role_set_parent FOREIGN KEY (PARENT_ROLE_SET_ID) REFERENCES GROUPER_ROLE_SET (ID);

ALTER TABLE GROUPER_ROLE_SET
    ADD CONSTRAINT fk_role_if FOREIGN KEY (IF_HAS_ROLE_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_ROLE_SET
    ADD CONSTRAINT fk_role_then FOREIGN KEY (THEN_HAS_ROLE_ID) REFERENCES GROUPER_GROUPS (ID);

ALTER TABLE GROUPER_STEMS
    ADD CONSTRAINT fk_stems_parent_stem FOREIGN KEY (PARENT_STEM) REFERENCES GROUPER_STEMS (ID);

ALTER TABLE GROUPER_STEMS
    ADD CONSTRAINT fk_stems_creator_id FOREIGN KEY (CREATOR_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_STEMS
    ADD CONSTRAINT fk_stems_modifier_id FOREIGN KEY (MODIFIER_ID) REFERENCES GROUPER_MEMBERS (ID);

ALTER TABLE GROUPER_TYPES
    ADD CONSTRAINT fk_types_creator_uuid FOREIGN KEY (CREATOR_UUID) REFERENCES GROUPER_MEMBERS (ID);

COMMENT ON TABLE grouper_ddl IS 'holds a record for each database object name, and db version, and java version';

COMMENT ON COLUMN grouper_ddl.id IS 'uuid of this ddl record';

COMMENT ON COLUMN grouper_ddl.object_name IS 'Corresponds to an enum in grouper.ddl package (with Ddl on end), represents one module, so grouper itself is one object';

COMMENT ON COLUMN grouper_ddl.db_version IS 'Version of this object as far as DB knows about';

COMMENT ON COLUMN grouper_ddl.last_updated IS 'last update timestamp, string so it can easily be used from update statement';

COMMENT ON COLUMN grouper_ddl.history IS 'history of this object name, with most recent first (truncated after 4k)';

COMMENT ON TABLE grouper_attributes IS 'attributes for groups, including name, extension, etc';

COMMENT ON COLUMN grouper_attributes.id IS 'db id of this attribute record';

COMMENT ON COLUMN grouper_attributes.group_id IS 'group_uuid foreign key';

COMMENT ON COLUMN grouper_attributes.field_id IS 'foreign key to field by id';

COMMENT ON COLUMN grouper_attributes.value IS 'value this attribute record';

COMMENT ON COLUMN grouper_attributes.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_attributes.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_audit_entry IS 'holds one record for each audit entry record which is a high level action that ties together lower level actions';

COMMENT ON COLUMN grouper_audit_entry.act_as_member_id IS 'Member id (foreign key) of the user who is being acted as';

COMMENT ON COLUMN grouper_audit_entry.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_audit_entry.created_on IS 'When this audit entry record was created';

COMMENT ON COLUMN grouper_audit_entry.description IS 'Description is a sentence form expression of what is being audited';

COMMENT ON COLUMN grouper_audit_entry.env_name IS 'environment label of the system running, from grouper.properties';

COMMENT ON COLUMN grouper_audit_entry.grouper_engine IS 'Grouper engine is e.g. UI, WS, GSH, loader, etc';

COMMENT ON COLUMN grouper_audit_entry.grouper_version IS 'Grouper version of the API executing';

COMMENT ON COLUMN grouper_audit_entry.hibernate_version_number IS 'hibernate version number keeps track of if multiple sessions step on toes';

COMMENT ON COLUMN grouper_audit_entry.id IS 'db id of this audit entry record';

COMMENT ON COLUMN grouper_audit_entry.int01 IS 'The int 01 value';

COMMENT ON COLUMN grouper_audit_entry.int02 IS 'The int 02 value';

COMMENT ON COLUMN grouper_audit_entry.int03 IS 'The int 03 value';

COMMENT ON COLUMN grouper_audit_entry.int04 IS 'The int 04 value';

COMMENT ON COLUMN grouper_audit_entry.int05 IS 'The int 05 value';

COMMENT ON COLUMN grouper_audit_entry.last_updated IS 'When this audit entry was last updated';

COMMENT ON COLUMN grouper_audit_entry.logged_in_member_id IS 'Member id (foreign key) of the user logged in';

COMMENT ON COLUMN grouper_audit_entry.server_host IS 'Host of the system running the grouper API';

COMMENT ON COLUMN grouper_audit_entry.string01 IS 'The string 01 value';

COMMENT ON COLUMN grouper_audit_entry.string02 IS 'The string 02 value';

COMMENT ON COLUMN grouper_audit_entry.string03 IS 'The string 03 value';

COMMENT ON COLUMN grouper_audit_entry.string04 IS 'The string 04 value';

COMMENT ON COLUMN grouper_audit_entry.string05 IS 'The string 05 value';

COMMENT ON COLUMN grouper_audit_entry.string06 IS 'The string 06 value';

COMMENT ON COLUMN grouper_audit_entry.string07 IS 'The string 07 value';

COMMENT ON COLUMN grouper_audit_entry.string08 IS 'The string 08 value';

COMMENT ON COLUMN grouper_audit_entry.user_ip_address IS 'IP address of the user connecting to the system (e.g. from UI or WS)';

COMMENT ON COLUMN grouper_audit_entry.duration_microseconds IS 'Duration of the context, in microseconds (millionths of a second)';

COMMENT ON COLUMN grouper_audit_entry.query_count IS 'Number of database queries required for this context';

COMMENT ON COLUMN grouper_audit_entry.server_user_name IS 'Username of the OS user running the API.  This might identify who ran a GSH call';

COMMENT ON TABLE grouper_audit_type IS 'audit type is a category and an action that organizes audits.  Also holds labels for all the misc string and int fields';

COMMENT ON COLUMN grouper_audit_type.action_name IS 'The action in this audit category to differentiate from others';

COMMENT ON COLUMN grouper_audit_type.audit_category IS 'The category of this audit in logical grouping';

COMMENT ON COLUMN grouper_audit_type.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_audit_type.created_on IS 'When this audit type was created';

COMMENT ON COLUMN grouper_audit_type.hibernate_version_number IS 'Hibernate version number makes sure multiple sessions do not step on toes';

COMMENT ON COLUMN grouper_audit_type.id IS 'Unique id of this audit entry';

COMMENT ON COLUMN grouper_audit_type.label_int01 IS 'The int 01 value';

COMMENT ON COLUMN grouper_audit_type.label_int02 IS 'The int 02 value';

COMMENT ON COLUMN grouper_audit_type.label_int03 IS 'The int 03 value';

COMMENT ON COLUMN grouper_audit_type.label_int04 IS 'The int 04 value';

COMMENT ON COLUMN grouper_audit_type.label_int05 IS 'The int 05 value';

COMMENT ON COLUMN grouper_audit_type.label_string01 IS 'The label of the string field 01 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string02 IS 'The label of the string field 02 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string03 IS 'The label of the string field 03 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string04 IS 'The label of the string field 04 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string05 IS 'The label of the string field 05 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string06 IS 'The label of the string field 06 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string07 IS 'The label of the string field 07 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.label_string08 IS 'The label of the string field 08 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_type.last_updated IS 'When this audit type was last updated';

COMMENT ON TABLE grouper_composites IS 'records the composite group, and its factors';

COMMENT ON COLUMN grouper_composites.id IS 'db id of this composite record';

COMMENT ON COLUMN grouper_composites.owner IS 'group uuid of the composite group';

COMMENT ON COLUMN grouper_composites.left_factor IS 'left factor of the composite group';

COMMENT ON COLUMN grouper_composites.right_factor IS 'right factor of the composite group';

COMMENT ON COLUMN grouper_composites.type IS 'e.g. union, complement, intersection';

COMMENT ON COLUMN grouper_composites.creator_id IS 'member uuid of who created this';

COMMENT ON COLUMN grouper_composites.create_time IS 'number of millis since 1970 until when created';

COMMENT ON COLUMN grouper_composites.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_composites.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_fields IS 'describes fields related to types';

COMMENT ON COLUMN grouper_fields.id IS 'db id of this field record';

COMMENT ON COLUMN grouper_fields.grouptype_uuid IS 'foreign key to group type';

COMMENT ON COLUMN grouper_fields.is_nullable IS 'if this is nullable';

COMMENT ON COLUMN grouper_fields.name IS 'name of the field';

COMMENT ON COLUMN grouper_fields.read_privilege IS 'which privilege is required to read this field';

COMMENT ON COLUMN grouper_fields.type IS 'type of field (e.g. attribute, list, access, naming)';

COMMENT ON COLUMN grouper_fields.write_privilege IS 'which privilege is required to write this attribute';

COMMENT ON COLUMN grouper_fields.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_groups IS 'holds the groups in the grouper system';

COMMENT ON COLUMN grouper_groups.id IS 'db id of this group record';

COMMENT ON COLUMN grouper_groups.parent_stem IS 'uuid of the stem that this group refers to';

COMMENT ON COLUMN grouper_groups.creator_id IS 'member uuid of the creator of this group';

COMMENT ON COLUMN grouper_groups.create_time IS 'number of millis since 1970 that this group was created';

COMMENT ON COLUMN grouper_groups.modifier_id IS 'member uuid of the last modifier of this group';

COMMENT ON COLUMN grouper_groups.modify_time IS 'number of millis since 1970 that this group was modified';

COMMENT ON COLUMN grouper_groups.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_groups.name IS 'group name is the fully qualified extension of group and all parent stems.  It shouldnt change much, and can be used to reference group from external systems';

COMMENT ON COLUMN grouper_groups.display_name IS 'group display name is the fully qualified display extension of group and all parent stems.  It can change as needed, and can not be used to reference group from external systems';

COMMENT ON COLUMN grouper_groups.extension IS 'group extension is the label for this group inside a stem.  It shouldnt change much, and can be used to reference group from external systems (in conjunction with parent stem id)';

COMMENT ON COLUMN grouper_groups.display_extension IS 'group display extension is the display label for this group inside a stem.  It cant change as needed, and can not be used to reference group from external systems';

COMMENT ON COLUMN grouper_groups.description IS 'group description is an optional text blurb that can be used to describe the group';

COMMENT ON COLUMN grouper_groups.last_membership_change IS 'If configured to keep track, this is the last membership change for this group';

COMMENT ON COLUMN grouper_groups.alternate_name IS 'An alternate name for this group';

COMMENT ON COLUMN grouper_groups.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_groups.type_of_group IS 'if this is a group or role';

COMMENT ON TABLE grouper_groups_types IS 'holds the association between group and type';

COMMENT ON COLUMN grouper_groups_types.id IS 'id of this group/type record';

COMMENT ON COLUMN grouper_groups_types.group_uuid IS 'group uuid foreign key';

COMMENT ON COLUMN grouper_groups_types.type_uuid IS 'type uuid foreign key';

COMMENT ON COLUMN grouper_groups_types.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_groups_types.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_members IS 'keeps track of subjects used in grouper.  Records are never deleted from this table';

COMMENT ON COLUMN grouper_members.id IS 'db id of this row';

COMMENT ON COLUMN grouper_members.subject_id IS 'subject id is the id from the subject source';

COMMENT ON COLUMN grouper_members.subject_source IS 'id of the source from sources.xml';

COMMENT ON COLUMN grouper_members.subject_type IS 'type of subject, e.g. person';

COMMENT ON COLUMN grouper_members.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_members.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_memberships IS 'keeps track of memberships and permissions';

COMMENT ON COLUMN grouper_memberships.id IS 'db id of this row';

COMMENT ON COLUMN grouper_memberships.owner_group_id IS 'group of the membership if applicable';

COMMENT ON COLUMN grouper_memberships.owner_stem_id IS 'stem of the membership if applicable';

COMMENT ON COLUMN grouper_memberships.member_id IS 'member of the memership';

COMMENT ON COLUMN grouper_memberships.owner_id IS 'owner of the memership';

COMMENT ON COLUMN grouper_memberships.field_id IS 'foreign key to field by id';

COMMENT ON COLUMN grouper_memberships.mship_type IS 'type of membership, immediate or composite';

COMMENT ON COLUMN grouper_memberships.via_composite_id IS 'for composite, this is the composite uuid';

COMMENT ON COLUMN grouper_memberships.creator_id IS 'member uuid of the creator of this record';

COMMENT ON COLUMN grouper_memberships.create_time IS 'number of millis since 1970 that this record was created';

COMMENT ON COLUMN grouper_memberships.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_memberships.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_memberships.enabled IS 'T or F to indicate if the membership is enabled';

COMMENT ON COLUMN grouper_memberships.enabled_timestamp IS 'When the membership will be enabled if the time is in the future.';

COMMENT ON COLUMN grouper_memberships.disabled_timestamp IS 'When the membership will be disabled if the time is in the future.';

COMMENT ON TABLE grouper_group_set IS 'keeps track of the set of immediate and effective group members for all groups and stems';

COMMENT ON COLUMN grouper_group_set.id IS 'db id of this row';

COMMENT ON COLUMN grouper_group_set.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_group_set.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_group_set.field_id IS 'field represented by this group set';

COMMENT ON COLUMN grouper_group_set.mship_type IS 'type of membership represented by this group set, immediate or composite or effective';

COMMENT ON COLUMN grouper_group_set.via_group_id IS 'same as member_group_id if depth is greater than 0, otherwise null.';

COMMENT ON COLUMN grouper_group_set.depth IS 'number of hops in directed graph';

COMMENT ON COLUMN grouper_group_set.parent_id IS 'parent group set';

COMMENT ON COLUMN grouper_group_set.creator_id IS 'member uuid of the creator of this record';

COMMENT ON COLUMN grouper_group_set.create_time IS 'number of millis since 1970 that this record was created';

COMMENT ON COLUMN grouper_group_set.owner_id IS 'owner id';

COMMENT ON COLUMN grouper_group_set.owner_attr_def_id IS 'owner attr def if applicable';

COMMENT ON COLUMN grouper_group_set.owner_attr_def_id_null IS 'same as owner_attr_def_id except nulls are replaced with the string <NULL>';

COMMENT ON COLUMN grouper_group_set.owner_group_id IS 'owner group if applicable';

COMMENT ON COLUMN grouper_group_set.owner_group_id_null IS 'same as owner_group_id except nulls are replaced with the string <NULL>';

COMMENT ON COLUMN grouper_group_set.owner_stem_id IS 'owner stem if applicable';

COMMENT ON COLUMN grouper_group_set.owner_stem_id_null IS 'same as owner_stem_id except nulls are replaced with the string <NULL>';

COMMENT ON COLUMN grouper_group_set.member_attr_def_id IS 'member attr def if applicable';

COMMENT ON COLUMN grouper_group_set.member_group_id IS 'member group if applicable';

COMMENT ON COLUMN grouper_group_set.member_stem_id IS 'member stem if applicable';

COMMENT ON COLUMN grouper_group_set.member_id IS 'member id';

COMMENT ON COLUMN grouper_group_set.member_field_id IS 'used to join with the field_id column in the grouper_memberships table';

COMMENT ON COLUMN grouper_flat_memberships.id IS 'db id for this row';

COMMENT ON COLUMN grouper_flat_memberships.owner_id IS 'owner id';

COMMENT ON COLUMN grouper_flat_memberships.owner_attr_def_id IS 'owner attr def if applicable';

COMMENT ON COLUMN grouper_flat_memberships.owner_group_id IS 'owner group if applicable';

COMMENT ON COLUMN grouper_flat_memberships.owner_stem_id IS 'owner stem if applicable';

COMMENT ON COLUMN grouper_flat_memberships.member_id IS 'member id';

COMMENT ON COLUMN grouper_flat_memberships.field_id IS 'field represented by this membership';

COMMENT ON COLUMN grouper_flat_memberships.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_flat_memberships.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_flat_groups.id IS 'db id for this row';

COMMENT ON COLUMN grouper_flat_groups.group_id IS 'group id foreign key in grouper_groups table';

COMMENT ON COLUMN grouper_flat_groups.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_flat_groups.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_flat_stems.id IS 'db id for this row';

COMMENT ON COLUMN grouper_flat_stems.stem_id IS 'stem id foreign key in grouper_stems table';

COMMENT ON COLUMN grouper_flat_stems.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_flat_stems.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_flat_attribute_def.id IS 'db id for this row';

COMMENT ON COLUMN grouper_flat_attribute_def.attribute_def_id IS 'attribute def id foreign key in grouper_attribute_def table';

COMMENT ON COLUMN grouper_flat_attribute_def.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_flat_attribute_def.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON TABLE grouper_stems IS 'entries for stems and their attributes';

COMMENT ON COLUMN grouper_stems.id IS 'db id of this row';

COMMENT ON COLUMN grouper_stems.parent_stem IS 'stem uuid of parent stem or empty if under root';

COMMENT ON COLUMN grouper_stems.name IS 'full name (id) path of stem';

COMMENT ON COLUMN grouper_stems.display_name IS 'full dislpay name path of stem';

COMMENT ON COLUMN grouper_stems.creator_id IS 'member_id of who created this stem';

COMMENT ON COLUMN grouper_stems.create_time IS 'number of millis since 1970 since this was created';

COMMENT ON COLUMN grouper_stems.modifier_id IS 'member_id of modifier who last edited';

COMMENT ON COLUMN grouper_stems.modify_time IS 'number of millis since 1970 since this was edited';

COMMENT ON COLUMN grouper_stems.display_extension IS 'display extension (not full path) of stem';

COMMENT ON COLUMN grouper_stems.extension IS 'extension (id) (not full path) of this stem';

COMMENT ON COLUMN grouper_stems.description IS 'description of stem';

COMMENT ON COLUMN grouper_stems.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_stems.last_membership_change IS 'If configured to keep track, this is the last membership change for this stem';

COMMENT ON COLUMN grouper_stems.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_types IS 'the various types which can be assigned to groups';

COMMENT ON COLUMN grouper_types.id IS 'db id of this row';

COMMENT ON COLUMN grouper_types.name IS 'name of this type';

COMMENT ON COLUMN grouper_types.creator_uuid IS 'member_id of the creator';

COMMENT ON COLUMN grouper_types.create_time IS 'number of millis since 1970 since this was created';

COMMENT ON COLUMN grouper_types.is_assignable IS 'if this type is assignable (not internal)';

COMMENT ON COLUMN grouper_types.is_internal IS 'if this type if internal (not assignable)';

COMMENT ON COLUMN grouper_types.hibernate_version_number IS 'hibernate uses this to version rows';

COMMENT ON COLUMN grouper_types.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON TABLE grouper_loader_log IS 'log table with a row for each grouper loader job run';

COMMENT ON COLUMN grouper_loader_log.id IS 'uuid of this log record';

COMMENT ON COLUMN grouper_loader_log.job_name IS 'Could be group name (friendly) or just config name';

COMMENT ON COLUMN grouper_loader_log.status IS 'STARTED, RUNNING, SUCCESS, ERROR, WARNING, CONFIG_ERROR';

COMMENT ON COLUMN grouper_loader_log.started_time IS 'When the job was started';

COMMENT ON COLUMN grouper_loader_log.ended_time IS 'When the job ended (might be blank if daemon died)';

COMMENT ON COLUMN grouper_loader_log.millis IS 'Milliseconds this process took';

COMMENT ON COLUMN grouper_loader_log.millis_get_data IS 'Milliseconds this process took to get the data from the source';

COMMENT ON COLUMN grouper_loader_log.millis_load_data IS 'Milliseconds this process took to load the data to grouper';

COMMENT ON COLUMN grouper_loader_log.job_type IS 'GrouperLoaderJobType enum value';

COMMENT ON COLUMN grouper_loader_log.job_schedule_type IS 'GrouperLoaderJobscheduleType enum value';

COMMENT ON COLUMN grouper_loader_log.job_description IS 'More information about the job';

COMMENT ON COLUMN grouper_loader_log.job_message IS 'Could be a status or error message or stack';

COMMENT ON COLUMN grouper_loader_log.host IS 'Host that this job ran on';

COMMENT ON COLUMN grouper_loader_log.group_uuid IS 'If this job involves one group, this is uuid';

COMMENT ON COLUMN grouper_loader_log.job_schedule_quartz_cron IS 'Quartz cron string for this col';

COMMENT ON COLUMN grouper_loader_log.job_schedule_interval_seconds IS 'How many seconds this is supposed to wait between runs';

COMMENT ON COLUMN grouper_loader_log.last_updated IS 'When this record was last updated';

COMMENT ON COLUMN grouper_loader_log.unresolvable_subject_count IS 'The number of records which were not subject resolvable';

COMMENT ON COLUMN grouper_loader_log.insert_count IS 'The number of records inserted';

COMMENT ON COLUMN grouper_loader_log.update_count IS 'The number of records updated';

COMMENT ON COLUMN grouper_loader_log.delete_count IS 'The number of records deleted';

COMMENT ON COLUMN grouper_loader_log.total_count IS 'The total number of records (e.g. total number of members)';

COMMENT ON COLUMN grouper_loader_log.parent_job_name IS 'If this job is a subjob of another job, then put the parent job name here';

COMMENT ON COLUMN grouper_loader_log.parent_job_id IS 'If this job is a subjob of another job, then put the parent job id here';

COMMENT ON COLUMN grouper_loader_log.and_group_names IS 'If this group query is anded with another group or groups, they are listed here comma separated';

COMMENT ON COLUMN grouper_loader_log.job_schedule_priority IS 'Priority of this job (5 is unprioritized, higher the better)';

CREATE VIEW grouper_audit_entry_v (created_on, audit_category, action_name, logged_in_subject_id, act_as_subject_id, label_string01, string01, label_string02, string02, label_string03, string03, label_string04, string04, label_string05, string05, label_string06, string06, label_string07, string07, label_string08, string08, label_int01, int01, label_int02, int02, label_int03, int03, label_int04, int04, label_int05, int05, context_id, grouper_engine, description, logged_in_source_id, act_as_source_id, logged_in_member_id, act_as_member_id, audit_type_id, user_ip_address, server_host, audit_entry_last_updated, audit_entry_id, grouper_version, env_name) AS select gae.created_on, gat.audit_category, gat.action_name, (select gm.subject_id from grouper_members gm where gm.id = gae.logged_in_member_id) as logged_in_subject_id, (select gm.subject_id from grouper_members gm where gm.id = gae.act_as_member_id) as act_as_subject_id, gat.label_string01, gae.string01, gat.label_string02, gae.string02, gat.label_string03, gae.string03, gat.label_string04, gae.string04, gat.label_string05, gae.string05, gat.label_string06, gae.string06, gat.label_string07, gae.string07, gat.label_string08, gae.string08, gat.label_int01, gae.int01, gat.label_int02, gae.int02, gat.label_int03, gae.int03, gat.label_int04, gae.int04, gat.label_int05, gae.int05, gae.context_id, gae.grouper_engine, gae.description, (select gm.subject_source from grouper_members gm where gm.id = gae.logged_in_member_id) as logged_in_source_id, (select gm.subject_source from grouper_members gm where gm.id = gae.act_as_member_id) as act_as_source_id, gae.logged_in_member_id, gae.act_as_member_id, gat.id as audit_type_id, gae.user_ip_address, gae.server_host, gae.last_updated, gae.id as audit_entry_id, gae.grouper_version, gae.env_name from grouper_audit_type gat, grouper_audit_entry gae where gat.id = gae.audit_type_id ;

COMMENT ON TABLE grouper_audit_entry_v IS 'Join of audit entry and audit type, and converts member ids to subject ids';

COMMENT ON COLUMN grouper_audit_entry_v.created_on IS 'When this audit entry record was created';

COMMENT ON COLUMN grouper_audit_entry_v.audit_category IS 'The category of this audit from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.action_name IS 'The action in this audit category from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.logged_in_subject_id IS 'The subject id of the logged in subject, e.g. from WS or UI';

COMMENT ON COLUMN grouper_audit_entry_v.act_as_subject_id IS 'The subject id of the user using the system if they are acting as another user, e.g. from WS';

COMMENT ON COLUMN grouper_audit_entry_v.label_string01 IS 'The label of the string field 01 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string01 IS 'The string 01 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string02 IS 'The label of the string field 02 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string02 IS 'The string 02 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string03 IS 'The label of the string field 03 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string03 IS 'The string 03 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string04 IS 'The label of the string field 04 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string04 IS 'The string 04 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string05 IS 'The label of the string field 05 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string05 IS 'The string 05 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string06 IS 'The label of the string field 06 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string06 IS 'The string 06 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string07 IS 'The label of the string field 07 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string07 IS 'The string 07 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_string08 IS 'The label of the string field 08 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.string08 IS 'The string 08 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_int01 IS 'The label of the int field 01 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.int01 IS 'The int 01 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_int02 IS 'The label of the int field 02 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.int02 IS 'The int 02 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_int03 IS 'The label of the int field 03 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.int03 IS 'The int 03 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_int04 IS 'The label of the int field 04 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.int04 IS 'The int 04 value';

COMMENT ON COLUMN grouper_audit_entry_v.label_int05 IS 'The label of the int field 05 from grouper_audit_type';

COMMENT ON COLUMN grouper_audit_entry_v.int05 IS 'The int 05 value';

COMMENT ON COLUMN grouper_audit_entry_v.context_id IS 'Context id links together multiple operations into one high level action';

COMMENT ON COLUMN grouper_audit_entry_v.grouper_engine IS 'Grouper engine is e.g. UI, WS, GSH, loader, etc';

COMMENT ON COLUMN grouper_audit_entry_v.description IS 'Description is a sentence form expression of what is being audited';

COMMENT ON COLUMN grouper_audit_entry_v.logged_in_source_id IS 'Source id of the user who is logged in';

COMMENT ON COLUMN grouper_audit_entry_v.act_as_source_id IS 'Source id of the user who is being acted as (e.g. in WS)';

COMMENT ON COLUMN grouper_audit_entry_v.logged_in_member_id IS 'Member id (foreign key) of the user logged in';

COMMENT ON COLUMN grouper_audit_entry_v.act_as_member_id IS 'Member id (foreign key) of the user who is being acted as';

COMMENT ON COLUMN grouper_audit_entry_v.audit_type_id IS 'ID of the audit type row';

COMMENT ON COLUMN grouper_audit_entry_v.user_ip_address IS 'IP address of the user connecting to the system (e.g. from UI or WS)';

COMMENT ON COLUMN grouper_audit_entry_v.server_host IS 'Host of the system running the grouper API';

COMMENT ON COLUMN grouper_audit_entry_v.audit_entry_last_updated IS 'When this audit entry was last updated';

COMMENT ON COLUMN grouper_audit_entry_v.audit_entry_id IS 'ID of this audit entry';

COMMENT ON COLUMN grouper_audit_entry_v.grouper_version IS 'Grouper version of the API executing';

COMMENT ON COLUMN grouper_audit_entry_v.env_name IS 'environment label of the system running, from grouper.properties';

CREATE VIEW grouper_change_log_entry_v (created_on, change_log_category, action_name, sequence_number, label_string01, string01, label_string02, string02, label_string03, string03, label_string04, string04, label_string05, string05, label_string06, string06, label_string07, string07, label_string08, string08, label_string09, string09, label_string10, string10, label_string11, string11, label_string12, string12, context_id, change_log_type_id) AS SELECT gcle.created_on, gclt.change_log_category, gclt.action_name, gcle.sequence_number,        gclt.label_string01, gcle.string01, gclt.label_string02, gcle.string02,        gclt.label_string03, gcle.string03, gclt.label_string04, gcle.string04,        gclt.label_string05, gcle.string05, gclt.label_string06, gcle.string06,        gclt.label_string07, gcle.string07, gclt.label_string08, gcle.string08,        gclt.label_string09, gcle.string09, gclt.label_string10, gcle.string10,        gclt.label_string11, gcle.string11, gclt.label_string12, gcle.string12,        gcle.context_id, gcle.change_log_type_id   FROM grouper_change_log_type gclt, grouper_change_log_entry gcle  WHERE gclt.id = gcle.change_log_type_id;

COMMENT ON TABLE grouper_change_log_entry_v IS 'Join of change log entry and change log type';

COMMENT ON COLUMN grouper_change_log_entry_v.created_on IS 'created_on: when this change happened, number of millis since 1970';

COMMENT ON COLUMN grouper_change_log_entry_v.change_log_category IS 'change_log_category: category of this change';

COMMENT ON COLUMN grouper_change_log_entry_v.action_name IS 'action_name: action of this change';

COMMENT ON COLUMN grouper_change_log_entry_v.sequence_number IS 'sequence_number: increasing integer of each change';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string01 IS 'label_string01: label of first string';

COMMENT ON COLUMN grouper_change_log_entry_v.string01 IS 'string01: value of first string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string02 IS 'label_string02: label of second string';

COMMENT ON COLUMN grouper_change_log_entry_v.string02 IS 'string02: value of second string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string03 IS 'label_string03: label of third string';

COMMENT ON COLUMN grouper_change_log_entry_v.string03 IS 'string03: value of third string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string04 IS 'label_string04: label of fourth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string04 IS 'string04: value of fourth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string05 IS 'label_string05: label of fifth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string05 IS 'string05: value of fifth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string06 IS 'label_string06: label of sixth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string06 IS 'string06: value of sixth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string07 IS 'label_string07: label of seventh string';

COMMENT ON COLUMN grouper_change_log_entry_v.string07 IS 'string07: value of seventh string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string08 IS 'label_string08: label of eighth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string08 IS 'string08: value of eighth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string09 IS 'label_string09: label of ninth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string09 IS 'string09: value of ninth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string10 IS 'label_string10: label of tenth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string10 IS 'string10: value of tenth string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string11 IS 'label_string11: label of eleventh string';

COMMENT ON COLUMN grouper_change_log_entry_v.string11 IS 'string11: value of eleventh string';

COMMENT ON COLUMN grouper_change_log_entry_v.label_string12 IS 'label_string12: label of twelfth string';

COMMENT ON COLUMN grouper_change_log_entry_v.string12 IS 'string12: value of twelfth string';

COMMENT ON COLUMN grouper_change_log_entry_v.context_id IS 'context_id: links this record with an audit record';

COMMENT ON COLUMN grouper_change_log_entry_v.change_log_type_id IS 'change_log_type_id: id of this category and name';

CREATE VIEW grouper_mship_attr_flat_lw_v (subject_id, subject_source, attribute_def_name, list_name, list_type, attribute_def_id) AS SELECT gm.subject_id, gm.subject_source,        gad.name as attribute_def_name, gf.name as list_name, gf.type as list_type,        gad.id as attribute_def_id   FROM grouper_flat_memberships gfm,        grouper_attribute_def gad,        grouper_fields gf,        grouper_members gm  WHERE gfm.owner_stem_id = gad.id    AND gfm.field_id = gf.id    AND gfm.member_id = gm.id ;

COMMENT ON TABLE grouper_mship_attr_flat_lw_v IS 'Lightweight view of memberships on attribute definitions, i.e. the privileges of attribute definitions, on the flat tables';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.subject_id IS 'subject_id: subject id of the subject of the membership';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.subject_source IS 'subject_source: source of the subject of this membership';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.attribute_def_name IS 'attribute_def_name: name of the attribute_def that this membership is on';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.list_name IS 'list_name: list name of this membership e.g. attrViewers';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.list_type IS 'list_type: type of this membership, e.g. attributeDef';

COMMENT ON COLUMN grouper_mship_attr_flat_lw_v.attribute_def_id IS 'attribute_def_id: id of this attribute_def';

CREATE VIEW grouper_mship_group_flat_lw_v (subject_id, subject_source, group_name, list_name, list_type, group_id) AS SELECT gm.subject_id as subject_id, gm.subject_source as subject_source,        gg.name as group_name, gf.name as list_name, gf.type as list_type,        gg.id as group_id   FROM grouper_flat_memberships gfm,        grouper_groups gg,        grouper_fields gf,        grouper_members gm  WHERE gfm.owner_group_id = gg.id    AND gfm.field_id = gf.id    AND gfm.member_id = gm.id ;

COMMENT ON TABLE grouper_mship_group_flat_lw_v IS 'Lightweight view of memberships on grouper, i.e. the members or privileges of groups, on the flat tables';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.subject_id IS 'subject_id: subject id of the subject of the membership';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.subject_source IS 'subject_source: source of the subject of this membership';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.group_name IS 'group_name: name of the group that this membership is on';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.list_name IS 'list_name: list name of this membership e.g. viewers';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.list_type IS 'list_type: type of this membership, e.g. list or access';

COMMENT ON COLUMN grouper_mship_group_flat_lw_v.group_id IS 'group_id: id of this group';

CREATE VIEW grouper_mship_stem_flat_lw_v (subject_id, subject_source, stem_name, list_name, list_type, stem_id) AS SELECT gm.subject_id, gm.subject_source,        gs.name as stem_name, gf.name as list_name, gf.type as list_type, gs.id as stem_id   FROM grouper_flat_memberships gfm,        grouper_stems gs,        grouper_fields gf,        grouper_members gm  WHERE gfm.owner_stem_id = gs.id    AND gfm.field_id = gf.id    AND gfm.member_id = gm.id ;

COMMENT ON TABLE grouper_mship_stem_flat_lw_v IS 'Lightweight view of memberships on stems, i.e. the privileges of stem, on the flat tables';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.subject_id IS 'subject_id: subject id of the subject of the membership';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.subject_source IS 'subject_source: source of the subject of this membership';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.stem_name IS 'stem_name: name of the stem that this membership is on';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.list_name IS 'list_name: list name of this membership e.g. creators or stemmers';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.list_type IS 'list_type: type of this membership, e.g. naming';

COMMENT ON COLUMN grouper_mship_stem_flat_lw_v.stem_id IS 'stem_id: id of this stem';

CREATE VIEW grouper_attributes_v (GROUP_NAME, GROUP_DISPLAY_NAME, ATTRIBUTE_NAME, ATTRIBUTE_VALUE, GROUP_TYPE_NAME, FIELD_ID, ATTRIBUTE_ID, GROUP_ID, GROUPTYPE_UUID, CONTEXT_ID) AS select  gg.name as group_name, gg.display_name as group_display_name, gf.NAME as attribute_name, ga.VALUE as attribute_value, gt.NAME as group_type_name, ga.FIELD_ID, ga.ID as attribute_id, gg.ID as group_id, gf.grouptype_uuid, ga.context_id from grouper_attributes ga, grouper_groups gg, grouper_fields gf, grouper_types gt where ga.FIELD_ID = gf.ID and ga.GROUP_ID = gg.ID and gf.GROUPTYPE_UUID = gt.ID ;

COMMENT ON TABLE grouper_attributes_v IS 'Join of groups and attributes with friendly names.  Attributes are name/value pairs for groups.  Each group type is related to a set of 0 to many attributes, each attribute is related to one group type.grouper_fields holds each attribute name under the field type of ^attribute^';

COMMENT ON COLUMN grouper_attributes_v.GROUP_NAME IS 'Group name is full id path, e.g. school:stem1:groupId';

COMMENT ON COLUMN grouper_attributes_v.GROUP_DISPLAY_NAME IS 'Group display name is the full friendly name, e.g. My School:Stem 1:The Group';

COMMENT ON COLUMN grouper_attributes_v.ATTRIBUTE_NAME IS 'Attribute name is the name of the name/value pair';

COMMENT ON COLUMN grouper_attributes_v.ATTRIBUTE_VALUE IS 'Attribute value is the value of the name/value pair';

COMMENT ON COLUMN grouper_attributes_v.GROUP_TYPE_NAME IS 'Group_type_name is the name of the group type this attribute is related to';

COMMENT ON COLUMN grouper_attributes_v.FIELD_ID IS 'Field_id is the uuid that uniquely identifies a the field';

COMMENT ON COLUMN grouper_attributes_v.ATTRIBUTE_ID IS 'Attribute_id is the uuid that uniquely identifies the pairing of group and attribute';

COMMENT ON COLUMN grouper_attributes_v.GROUP_ID IS 'Group_id is the uuid that uniquely identifies a group';

COMMENT ON COLUMN grouper_attributes_v.GROUPTYPE_UUID IS 'GroupType_uuid is the uuid that uniquely identifies a group type';

COMMENT ON COLUMN grouper_attributes_v.CONTEXT_ID IS 'Context id links together multiple operations into one high level action';

CREATE VIEW grouper_composites_v (OWNER_GROUP_NAME, COMPOSITE_TYPE, LEFT_FACTOR_GROUP_NAME, RIGHT_FACTOR_GROUP_NAME, OWNER_GROUP_DISPLAYNAME, LEFT_FACTOR_GROUP_DISPLAYNAME, RIGHT_FACTOR_GROUP_DISPLAYNAME, owner_group_id, LEFT_FACTOR_GROUP_ID, RIGHT_FACTOR_GROUP_ID, COMPOSITE_ID, CREATE_TIME, CREATOR_ID, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select  (select gg.name from grouper_groups gg  where gg.id = gc.owner) as owner_group_name,  gc.TYPE as composite_type,  (select gg.name from grouper_groups gg  where gg.id =  gc.left_factor) as left_factor_group_name,  (select gg.name from grouper_groups gg  where gg.id = gc.right_factor) as right_factor_group_name,  (select gg.display_name from grouper_groups gg  where gg.id = gc.owner) as owner_group_displayname,  (select gg.display_name from grouper_groups gg  where gg.id = gc.left_factor) as left_factor_group_displayname,  (select gg.display_name from grouper_groups gg  where gg.id = gc.right_factor) as right_factor_group_displayname,  gc.OWNER as owner_group_id,  gc.LEFT_FACTOR as left_factor_group_id,  gc.RIGHT_FACTOR as right_factor_group_id,  gc.ID as composite_id,  gc.CREATE_TIME,  gc.CREATOR_ID,  gc.HIBERNATE_VERSION_NUMBER, gc.context_id from grouper_composites gc  ;

COMMENT ON TABLE grouper_composites_v IS 'Grouper_composites_v is a view of composite relationships with friendly names.  A composite is a joining of two groups with a group math operator of: union, intersection, or complement.';

COMMENT ON COLUMN grouper_composites_v.OWNER_GROUP_NAME IS 'OWNER_GROUP_NAME: Name of the group which is the result of the composite operation, e.g. school:stem1:allPeople';

COMMENT ON COLUMN grouper_composites_v.COMPOSITE_TYPE IS 'COMPOSITE_TYPE: union (all members), intersection (only members in both), or complement (in first, not in second)';

COMMENT ON COLUMN grouper_composites_v.LEFT_FACTOR_GROUP_NAME IS 'LEFT_FACTOR_GROUP_NAME: Name of group which is the first of two groups in the composite operation, e.g. school:stem1:part1';

COMMENT ON COLUMN grouper_composites_v.RIGHT_FACTOR_GROUP_NAME IS 'RIGHT_FACTOR_GROUP_NAME: Name of group which is the second of two groups in the composite operation, e.g. school:stem1:part2';

COMMENT ON COLUMN grouper_composites_v.OWNER_GROUP_DISPLAYNAME IS 'OWNER_GROUP_DISPLAYNAME: Display name of result group of composite operation, e.g. My school:The stem1:All people';

COMMENT ON COLUMN grouper_composites_v.LEFT_FACTOR_GROUP_DISPLAYNAME IS 'LEFT_FACTOR_GROUP_DISPLAYNAME: Display name of group which is the first of two groups in the composite operation, e.g. My school:The stem1:Part 1';

COMMENT ON COLUMN grouper_composites_v.RIGHT_FACTOR_GROUP_DISPLAYNAME IS 'RIGHT_FACTOR_GROUP_DISPLAYNAME: Display name of group which is the second of two groups in the composite operation, e.g. My school:The stem1:Part 1';

COMMENT ON COLUMN grouper_composites_v.owner_group_id IS 'OWNER_GROUP_ID: UUID of the result group';

COMMENT ON COLUMN grouper_composites_v.LEFT_FACTOR_GROUP_ID IS 'LEFT_FACTOR_GROUP_ID: UUID of the first group of the composite operation';

COMMENT ON COLUMN grouper_composites_v.RIGHT_FACTOR_GROUP_ID IS 'RIGHT_FACTOR_GROUP_ID: UUID of the second group of the composite operation';

COMMENT ON COLUMN grouper_composites_v.COMPOSITE_ID IS 'COMPOSITE_ID: UUID of the composite relationship among the three groups';

COMMENT ON COLUMN grouper_composites_v.CREATE_TIME IS 'CREATE_TIME: number of millis since 1970 that the composite was created';

COMMENT ON COLUMN grouper_composites_v.CREATOR_ID IS 'CREATOR_ID: member id of the subject that created the composite relationship';

COMMENT ON COLUMN grouper_composites_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: increments with each update, starts at 0';

COMMENT ON COLUMN grouper_composites_v.CONTEXT_ID IS 'CONTEXT_ID: Context id links together multiple operations into one high level action';

CREATE VIEW grouper_groups_types_v (GROUP_NAME, GROUP_DISPLAYNAME, GROUP_TYPE_NAME, GROUP_ID, GROUP_TYPE_UUID, GROUPER_GROUPS_TYPES_ID, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select   (select gg.name from grouper_groups gg  where gg.id = ggt.GROUP_UUID) as group_name,  (select gg.display_name from grouper_groups gg  where gg.id = ggt.GROUP_UUID) as group_displayname,  gt.NAME as group_type_name,  ggt.GROUP_UUID as group_id,  ggt.TYPE_UUID as group_type_uuid,  ggt.ID as grouper_groups_types_id,  ggt.HIBERNATE_VERSION_NUMBER, ggt.context_id  from grouper_groups_types ggt, grouper_types gt  where ggt.TYPE_UUID = gt.ID  ;

COMMENT ON TABLE grouper_groups_types_v IS 'A group can have one or many types associated.  This is a view of those relationships with friendly names';

COMMENT ON COLUMN grouper_groups_types_v.GROUP_NAME IS 'GROUP_NAME: name of group which has the type, e.g. school:stem1:theGroup';

COMMENT ON COLUMN grouper_groups_types_v.GROUP_DISPLAYNAME IS 'GROUP_DISPLAYNAME: display name of the group which has the type, e.g. My school, the stem 1, The group';

COMMENT ON COLUMN grouper_groups_types_v.GROUP_TYPE_NAME IS 'GROUP_TYPE_NAME: friendly name of the type, e.g. grouperLoader';

COMMENT ON COLUMN grouper_groups_types_v.GROUP_ID IS 'GROUP_ID: uuid unique id of the group which has the type';

COMMENT ON COLUMN grouper_groups_types_v.GROUP_TYPE_UUID IS 'GROUP_TYPE_UUID: uuid unique id of the type related to the group';

COMMENT ON COLUMN grouper_groups_types_v.GROUPER_GROUPS_TYPES_ID IS 'GROUPER_GROUPS_TYPES_ID: uuid unique id of the relationship between the group and type';

COMMENT ON COLUMN grouper_groups_types_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: increments by one with each update, starts at 0';

COMMENT ON COLUMN grouper_groups_types_v.CONTEXT_ID IS 'Context id links together multiple operations into one high level action';

CREATE VIEW grouper_groups_v (EXTENSION, NAME, DISPLAY_EXTENSION, DISPLAY_NAME, DESCRIPTION, PARENT_STEM_NAME, TYPE_OF_GROUP, GROUP_ID, PARENT_STEM_ID, MODIFIER_SOURCE, MODIFIER_SUBJECT_ID, CREATOR_SOURCE, CREATOR_SUBJECT_ID, IS_COMPOSITE_OWNER, IS_COMPOSITE_FACTOR, CREATOR_ID, CREATE_TIME, MODIFIER_ID, MODIFY_TIME, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select  gg.extension as extension, gg.name as name, gg.display_extension as display_extension, gg.display_name as display_name, gg.description as description, gs.NAME as parent_stem_name, gg.type_of_group, gg.id as group_id, gs.ID as parent_stem_id, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gg.MODIFIER_ID) as modifier_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gg.MODIFIER_ID) as modifier_subject_id, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gg.CREATOR_ID) as creator_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gg.CREATOR_ID) as creator_subject_id, (select distinct 'T' from grouper_composites gc where gc.OWNER = gg.ID) as is_composite_owner, (select distinct 'T' from grouper_composites gc where gc.LEFT_FACTOR = gg.ID or gc.right_factor = gg.id) as is_composite_factor, gg.CREATOR_ID, gg.CREATE_TIME, gg.MODIFIER_ID, gg.MODIFY_TIME, gg.HIBERNATE_VERSION_NUMBER, gg.context_id   from grouper_groups gg, grouper_stems gs where gg.PARENT_STEM = gs.ID ;

COMMENT ON TABLE grouper_groups_v IS 'Contains one record for each group, with friendly names for some attributes and some more information';

COMMENT ON COLUMN grouper_groups_v.EXTENSION IS 'EXTENSION: part of group name not including path information, e.g. theGroup';

COMMENT ON COLUMN grouper_groups_v.NAME IS 'NAME: name of the group, e.g. school:stem1:theGroup';

COMMENT ON COLUMN grouper_groups_v.DISPLAY_EXTENSION IS 'DISPLAY_EXTENSION: name for display of the group, e.g. My school:The stem 1:The group';

COMMENT ON COLUMN grouper_groups_v.DISPLAY_NAME IS 'DISPLAY_NAME: name for display of the group without any path information, e.g. The group';

COMMENT ON COLUMN grouper_groups_v.DESCRIPTION IS 'DESCRIPTION: contains user entered information about the group e.g. why it exists';

COMMENT ON COLUMN grouper_groups_v.PARENT_STEM_NAME IS 'PARENT_STEM_NAME: name of the stem this group is in, e.g. school:stem1';

COMMENT ON COLUMN grouper_groups_v.TYPE_OF_GROUP IS 'TYPE_OF_GROUP: group if it is a group, role if it is a role';

COMMENT ON COLUMN grouper_groups_v.GROUP_ID IS 'GROUP_ID: uuid unique id of the group';

COMMENT ON COLUMN grouper_groups_v.PARENT_STEM_ID IS 'PARENT_STEM_ID: uuid unique id of the stem this group is in';

COMMENT ON COLUMN grouper_groups_v.MODIFIER_SOURCE IS 'MODIFIER_SOURCE: source name of the subject who last modified this group, e.g. schoolPersonSource';

COMMENT ON COLUMN grouper_groups_v.MODIFIER_SUBJECT_ID IS 'MODIFIER_SUBJECT_ID: subject id of the subject who last modified this group, e.g. 12345';

COMMENT ON COLUMN grouper_groups_v.CREATOR_SOURCE IS 'CREATOR_SOURCE: source name of the subject who created this group, e.g. schoolPersonSource';

COMMENT ON COLUMN grouper_groups_v.CREATOR_SUBJECT_ID IS 'CREATOR_SUBJECT_ID: subject id of the subject who created this group, e.g. 12345';

COMMENT ON COLUMN grouper_groups_v.IS_COMPOSITE_OWNER IS 'IS_COMPOSITE_OWNER: T if this is a result of a composite operation (union, intersection, complement), or blank if not';

COMMENT ON COLUMN grouper_groups_v.IS_COMPOSITE_FACTOR IS 'IS_COMPOSITE_FACTOR: T if this is a member of a composite operation, e.g. one of the grouper being unioned, intersected, or complemeneted';

COMMENT ON COLUMN grouper_groups_v.CREATOR_ID IS 'CREATOR_ID: member id of the subject who created this group, foreign key to grouper_members';

COMMENT ON COLUMN grouper_groups_v.CREATE_TIME IS 'CREATE_TIME: number of millis since 1970 since this group was created';

COMMENT ON COLUMN grouper_groups_v.MODIFIER_ID IS 'MODIFIER_ID: member id of the subject who last modified this group, foreign key to grouper_members';

COMMENT ON COLUMN grouper_groups_v.MODIFY_TIME IS 'MODIFY_TIME: number of millis since 1970 since this group was last changed';

COMMENT ON COLUMN grouper_groups_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: increments by 1 for each update';

COMMENT ON COLUMN grouper_groups_v.CONTEXT_ID IS 'Context id links together multiple operations into one high level action';

CREATE VIEW grouper_roles_v (EXTENSION, NAME, DISPLAY_EXTENSION, DISPLAY_NAME, DESCRIPTION, PARENT_STEM_NAME, ROLE_ID, PARENT_STEM_ID, MODIFIER_SOURCE, MODIFIER_SUBJECT_ID, CREATOR_SOURCE, CREATOR_SUBJECT_ID, IS_COMPOSITE_OWNER, IS_COMPOSITE_FACTOR, CREATOR_ID, CREATE_TIME, MODIFIER_ID, MODIFY_TIME, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select  gg.extension as extension, gg.name as name, gg.display_extension as display_extension, gg.display_name as display_name, gg.description as description, gs.NAME as parent_stem_name, gg.id as role_id, gs.ID as parent_stem_id, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gg.MODIFIER_ID) as modifier_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gg.MODIFIER_ID) as modifier_subject_id, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gg.CREATOR_ID) as creator_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gg.CREATOR_ID) as creator_subject_id, (select distinct 'T' from grouper_composites gc where gc.OWNER = gg.ID) as is_composite_owner, (select distinct 'T' from grouper_composites gc where gc.LEFT_FACTOR = gg.ID or gc.right_factor = gg.id) as is_composite_factor, gg.CREATOR_ID, gg.CREATE_TIME, gg.MODIFIER_ID, gg.MODIFY_TIME, gg.HIBERNATE_VERSION_NUMBER, gg.context_id   from grouper_groups gg, grouper_stems gs where gg.PARENT_STEM = gs.ID and type_of_group = 'role' ;

COMMENT ON TABLE grouper_roles_v IS 'Contains one record for each role, with friendly names for some attributes and some more information';

COMMENT ON COLUMN grouper_roles_v.EXTENSION IS 'EXTENSION: part of role name not including path information, e.g. theRole';

COMMENT ON COLUMN grouper_roles_v.NAME IS 'NAME: name of the role, e.g. school:stem1:theRole';

COMMENT ON COLUMN grouper_roles_v.DISPLAY_EXTENSION IS 'DISPLAY_EXTENSION: name for display of the role, e.g. My school:The stem 1:The role';

COMMENT ON COLUMN grouper_roles_v.DISPLAY_NAME IS 'DISPLAY_NAME: name for display of the role without any path information, e.g. The role';

COMMENT ON COLUMN grouper_roles_v.DESCRIPTION IS 'DESCRIPTION: contains user entered information about the group e.g. why it exists';

COMMENT ON COLUMN grouper_roles_v.PARENT_STEM_NAME IS 'PARENT_STEM_NAME: name of the stem this role is in, e.g. school:stem1';

COMMENT ON COLUMN grouper_roles_v.ROLE_ID IS 'ROLE_ID: uuid unique id of the role';

COMMENT ON COLUMN grouper_roles_v.PARENT_STEM_ID IS 'PARENT_STEM_ID: uuid unique id of the stem this role is in';

COMMENT ON COLUMN grouper_roles_v.MODIFIER_SOURCE IS 'MODIFIER_SOURCE: source name of the subject who last modified this role, e.g. schoolPersonSource';

COMMENT ON COLUMN grouper_roles_v.MODIFIER_SUBJECT_ID IS 'MODIFIER_SUBJECT_ID: subject id of the subject who last modified this role, e.g. 12345';

COMMENT ON COLUMN grouper_roles_v.CREATOR_SOURCE IS 'CREATOR_SOURCE: source name of the subject who created this role, e.g. schoolPersonSource';

COMMENT ON COLUMN grouper_roles_v.CREATOR_SUBJECT_ID IS 'CREATOR_SUBJECT_ID: subject id of the subject who created this role, e.g. 12345';

COMMENT ON COLUMN grouper_roles_v.IS_COMPOSITE_OWNER IS 'IS_COMPOSITE_OWNER: T if this is a result of a composite operation (union, intersection, complement), or blank if not';

COMMENT ON COLUMN grouper_roles_v.IS_COMPOSITE_FACTOR IS 'IS_COMPOSITE_FACTOR: T if this is a member of a composite operation, e.g. one of the grouper being unioned, intersected, or complemeneted';

COMMENT ON COLUMN grouper_roles_v.CREATOR_ID IS 'CREATOR_ID: member id of the subject who created this role, foreign key to grouper_members';

COMMENT ON COLUMN grouper_roles_v.CREATE_TIME IS 'CREATE_TIME: number of millis since 1970 since this role was created';

COMMENT ON COLUMN grouper_roles_v.MODIFIER_ID IS 'MODIFIER_ID: member id of the subject who last modified this role, foreign key to grouper_members';

COMMENT ON COLUMN grouper_roles_v.MODIFY_TIME IS 'MODIFY_TIME: number of millis since 1970 since this role was last changed';

COMMENT ON COLUMN grouper_roles_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: increments by 1 for each update';

COMMENT ON COLUMN grouper_roles_v.CONTEXT_ID IS 'Context id links together multiple operations into one high level action';

CREATE VIEW grouper_memberships_all_v (MEMBERSHIP_ID, IMMEDIATE_MEMBERSHIP_ID, GROUP_SET_ID, MEMBER_ID, FIELD_ID, IMMEDIATE_FIELD_ID, OWNER_ID, OWNER_ATTR_DEF_ID, OWNER_GROUP_ID, OWNER_STEM_ID, VIA_GROUP_ID, VIA_COMPOSITE_ID, DEPTH, MSHIP_TYPE, IMMEDIATE_MSHIP_ENABLED, IMMEDIATE_MSHIP_ENABLED_TIME, IMMEDIATE_MSHIP_DISABLED_TIME, GROUP_SET_PARENT_ID, MEMBERSHIP_CREATOR_ID, MEMBERSHIP_CREATE_TIME, GROUP_SET_CREATOR_ID, GROUP_SET_CREATE_TIME, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select ms.id || ':' || gs.id as membership_id, ms.id as immediate_membership_id, gs.id as group_set_id, ms.member_id, gs.field_id, ms.field_id, gs.owner_id, gs.owner_attr_def_id, gs.owner_group_id, gs.owner_stem_id, gs.via_group_id, ms.via_composite_id, gs.depth, gs.mship_type, ms.enabled, ms.enabled_timestamp, ms.disabled_timestamp, gs.parent_id as group_set_parent_id, ms.creator_id as membership_creator_id, ms.create_time as membership_create_time, gs.creator_id as group_set_creator_id, gs.create_time as group_set_create_time, ms.hibernate_version_number, ms.context_id from grouper_memberships ms, grouper_group_set gs where ms.owner_id = gs.member_id and ms.field_id = gs.member_field_id;

COMMENT ON TABLE grouper_memberships_all_v IS 'Grouper_memberships_all_v holds one record for each immediate, composite and effective membership or privilege in the system for members to groups or stems (for privileges).';

COMMENT ON COLUMN grouper_memberships_all_v.MEMBERSHIP_ID IS 'MEMBERSHIP_ID: uuid unique id of this membership';

COMMENT ON COLUMN grouper_memberships_all_v.IMMEDIATE_MEMBERSHIP_ID IS 'IMMEDIATE_MEMBERSHIP_ID: uuid of the immediate (or composite) membership that causes this membership';

COMMENT ON COLUMN grouper_memberships_all_v.GROUP_SET_ID IS 'GROUP_SET_ID: uuid of the group set that causes this membership';

COMMENT ON COLUMN grouper_memberships_all_v.MEMBER_ID IS 'MEMBER_ID: id in the grouper_members table';

COMMENT ON COLUMN grouper_memberships_all_v.FIELD_ID IS 'FIELD_ID: id in the grouper_fields table';

COMMENT ON COLUMN grouper_memberships_all_v.IMMEDIATE_FIELD_ID IS 'IMMEDIATE_FIELD_ID: id in the grouper_fields table for the immediate (or composite) membership that causes this membership';

COMMENT ON COLUMN grouper_memberships_all_v.OWNER_ID IS 'OWNER_ID: owner id';

COMMENT ON COLUMN grouper_memberships_all_v.OWNER_ATTR_DEF_ID IS 'OWNER_ATTR_DEF_ID: owner attribute def id if applicable';

COMMENT ON COLUMN grouper_memberships_all_v.OWNER_GROUP_ID IS 'OWNER_GROUP_ID: owner group if applicable';

COMMENT ON COLUMN grouper_memberships_all_v.OWNER_STEM_ID IS 'OWNER_STEM_ID: owner stem if applicable';

COMMENT ON COLUMN grouper_memberships_all_v.VIA_GROUP_ID IS 'VIA_GROUP_ID: membership is due to this group if effective';

COMMENT ON COLUMN grouper_memberships_all_v.VIA_COMPOSITE_ID IS 'VIA_COMPOSITE_ID: membership is due to this composite if applicable';

COMMENT ON COLUMN grouper_memberships_all_v.DEPTH IS 'DEPTH: number of hops in a directed graph';

COMMENT ON COLUMN grouper_memberships_all_v.MSHIP_TYPE IS 'MSHIP_TYPE: type of membership, immediate or effective or composite';

COMMENT ON COLUMN grouper_memberships_all_v.IMMEDIATE_MSHIP_ENABLED IS 'IMMEDIATE_MSHIP_ENABLED: T or F to indicate if this membership is enabled';

COMMENT ON COLUMN grouper_memberships_all_v.IMMEDIATE_MSHIP_ENABLED_TIME IS 'IMMEDIATE_MSHIP_ENABLED_TIME: when the membership will be enabled if the time is in the future';

COMMENT ON COLUMN grouper_memberships_all_v.IMMEDIATE_MSHIP_DISABLED_TIME IS 'IMMEDIATE_MSHIP_DISABLED_TIME: when the membership will be disabled if the time is in the future.';

COMMENT ON COLUMN grouper_memberships_all_v.GROUP_SET_PARENT_ID IS 'GROUP_SET_PARENT_ID: parent group set';

COMMENT ON COLUMN grouper_memberships_all_v.MEMBERSHIP_CREATOR_ID IS 'MEMBERSHIP_CREATOR_ID: member uuid of the creator of the immediate or composite membership';

COMMENT ON COLUMN grouper_memberships_all_v.MEMBERSHIP_CREATE_TIME IS 'MEMBERSHIP_CREATOR_TIME: number of millis since 1970 the immedate or composite membership was created';

COMMENT ON COLUMN grouper_memberships_all_v.GROUP_SET_CREATOR_ID IS 'GROUP_SET_CREATOR_ID: member uuid of the creator of the group set';

COMMENT ON COLUMN grouper_memberships_all_v.GROUP_SET_CREATE_TIME IS 'GROUP_SET_CREATE_TIME: number of millis since 1970 the group set was created';

COMMENT ON COLUMN grouper_memberships_all_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: hibernate uses this to version rows';

COMMENT ON COLUMN grouper_memberships_all_v.CONTEXT_ID IS 'CONTEXT_ID: Context id links together multiple operations into one high level action';

CREATE VIEW grouper_memberships_lw_v (SUBJECT_ID, SUBJECT_SOURCE, GROUP_NAME, LIST_NAME, LIST_TYPE, GROUP_ID) AS select distinct gm.SUBJECT_ID, gm.SUBJECT_SOURCE, gg.name as group_name, gfl.NAME as list_name, gfl.TYPE as list_type, gg.ID as group_id from grouper_memberships_all_v gms, grouper_members gm, grouper_groups gg, grouper_fields gfl where gms.OWNER_GROUP_ID = gg.id and gms.FIELD_ID = gfl.ID and gms.MEMBER_ID = gm.ID;

COMMENT ON TABLE grouper_memberships_lw_v IS 'Grouper_memberships_lw_v unique membership records that can be read from a SQL interface outside of grouper.  Immediate and effective memberships are represented here (distinct)';

COMMENT ON COLUMN grouper_memberships_lw_v.SUBJECT_ID IS 'SUBJECT_ID: of the member of the group';

COMMENT ON COLUMN grouper_memberships_lw_v.SUBJECT_SOURCE IS 'SUBJECT_SOURCE: of the member of the group';

COMMENT ON COLUMN grouper_memberships_lw_v.GROUP_NAME IS 'GROUP_NAME: system name of the group';

COMMENT ON COLUMN grouper_memberships_lw_v.LIST_NAME IS 'LIST_NAME: name of the list, e.g. members';

COMMENT ON COLUMN grouper_memberships_lw_v.LIST_TYPE IS 'LIST_TYPE: type of list e.g. access or list';

COMMENT ON COLUMN grouper_memberships_lw_v.GROUP_ID IS 'GROUP_ID: uuid of the group';

CREATE VIEW grouper_mship_stem_lw_v (SUBJECT_ID, SUBJECT_SOURCE, STEM_NAME, LIST_NAME, LIST_TYPE, STEM_ID) AS select distinct gm.SUBJECT_ID, gm.SUBJECT_SOURCE, gs.name as stem_name, gfl.NAME as list_name, gfl.TYPE as list_type, gs.ID as stem_id from grouper_memberships_all_v gms, grouper_members gm, grouper_stems gs, grouper_fields gfl where gms.OWNER_STEM_ID = gs.id and gms.FIELD_ID = gfl.ID and gms.MEMBER_ID = gm.ID;

COMMENT ON TABLE grouper_mship_stem_lw_v IS 'grouper_mship_stem_lw_v unique membership records that can be read from a SQL interface outside of grouper for stems.  Immediate and effective memberships are represented here (distinct)';

COMMENT ON COLUMN grouper_mship_stem_lw_v.SUBJECT_ID IS 'SUBJECT_ID: of the member of the stem';

COMMENT ON COLUMN grouper_mship_stem_lw_v.SUBJECT_SOURCE IS 'SUBJECT_SOURCE: of the member of the stem';

COMMENT ON COLUMN grouper_mship_stem_lw_v.STEM_NAME IS 'STEM_NAME: system name of the stem';

COMMENT ON COLUMN grouper_mship_stem_lw_v.LIST_NAME IS 'LIST_NAME: name of the list, e.g. members';

COMMENT ON COLUMN grouper_mship_stem_lw_v.LIST_TYPE IS 'LIST_TYPE: type of list e.g. access or list';

COMMENT ON COLUMN grouper_mship_stem_lw_v.STEM_ID IS 'STEM_ID: uuid of the stem';

CREATE VIEW grouper_mship_attrdef_lw_v (SUBJECT_ID, SUBJECT_SOURCE, ATTRIBUTE_DEF_NAME, LIST_NAME, LIST_TYPE, ATTRIBUTE_DEF_ID) AS select distinct gm.SUBJECT_ID, gm.SUBJECT_SOURCE, gad.name as attribute_def_name, gfl.NAME as list_name, gfl.TYPE as list_type, gad.id as attribute_def_id from grouper_memberships_all_v gms, grouper_members gm, grouper_attribute_def gad, grouper_fields gfl where gms.OWNER_ATTR_DEF_ID = gad.id and gms.FIELD_ID = gfl.ID and gms.MEMBER_ID = gm.ID;

COMMENT ON TABLE grouper_mship_attrdef_lw_v IS 'grouper_mship_attrdef_lw_v unique membership records of attr defs that can be read from a SQL interface outside of grouper.  Immediate and effective memberships are represented here (distinct)';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.SUBJECT_ID IS 'SUBJECT_ID: of the member of the group';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.SUBJECT_SOURCE IS 'SUBJECT_SOURCE: of the member of the attributeDef';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.ATTRIBUTE_DEF_NAME IS 'ATTRIBUTE_DEF_NAME: system name of the attributeDef';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.LIST_NAME IS 'LIST_NAME: name of the list, e.g. members';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.LIST_TYPE IS 'LIST_TYPE: type of list e.g. access or list';

COMMENT ON COLUMN grouper_mship_attrdef_lw_v.ATTRIBUTE_DEF_ID IS 'ATTRIBUTE_DEF_ID: uuid of the attributeDef';

CREATE VIEW grouper_memberships_v (GROUP_NAME, GROUP_DISPLAYNAME, STEM_NAME, STEM_DISPLAYNAME, SUBJECT_ID, SUBJECT_SOURCE, MEMBER_ID, LIST_TYPE, LIST_NAME, MEMBERSHIP_TYPE, COMPOSITE_PARENT_GROUP_NAME, DEPTH, CREATOR_SOURCE, CREATOR_SUBJECT_ID, MEMBERSHIP_ID, IMMEDIATE_MEMBERSHIP_ID, GROUP_SET_ID, STEM_ID, GROUP_ID, CREATE_TIME, CREATOR_ID, FIELD_ID, CONTEXT_ID) AS select  (select gg.name from grouper_groups gg  where gg.id = gms.owner_group_id) as group_name,  (select gg.display_name from grouper_groups gg  where gg.id = gms.owner_group_id) as group_displayname,  (select gs.NAME from grouper_stems gs  where gs.ID = gms.owner_stem_id) as stem_name,  (select gs.display_NAME from grouper_stems gs  where gs.ID = gms.owner_stem_id) as stem_displayname,  gm.subject_id, gm.subject_source, gms.member_id, gf.TYPE as list_type,  gf.NAME as list_name,  gms.MSHIP_TYPE as membership_type,  (select gg.name from grouper_groups gg, grouper_composites gc  where gg.id = gms.VIA_composite_ID and gg.id = gc.OWNER) as composite_parent_group_name,  depth,   (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gms.membership_creator_ID) as creator_source,  (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gms.membership_creator_ID) as creator_subject_id,  gms.membership_id as membership_id,   gms.immediate_membership_id as immediate_membership_id,   gms.GROUP_SET_ID as group_set_id,  (select gs.id from grouper_stems gs where gs.ID = gms.owner_stem_id) as stem_id,  (select gg.id from grouper_groups gg where gg.id = gms.owner_group_id) as group_id,  gms.membership_create_time,  gms.membership_creator_id,  gms.field_id, gms.context_id   from grouper_memberships_all_v gms, grouper_members gm, grouper_fields gf   where gms.MEMBER_ID = gm.ID and gms.field_id = gf.id  ;

COMMENT ON TABLE grouper_memberships_v IS 'Grouper_memberships_v holds one record for each membership or privilege in the system for members to groups or stems (for privileges).  This is denormalized so there are records for the actual immediate relationships, and the cascaded effective relationships.  This has friendly names.';

COMMENT ON COLUMN grouper_memberships_v.GROUP_NAME IS 'GROUP_NAME: name of the group if this is a group membership, e.g. school:stem1:theGroup';

COMMENT ON COLUMN grouper_memberships_v.GROUP_DISPLAYNAME IS 'GROUP_DISPLAYNAME: display name of the group if this is a group membership, e.g. My school:The stem1:The group';

COMMENT ON COLUMN grouper_memberships_v.STEM_NAME IS 'STEM_NAME: name of the stem if this is a stem privilege, e.g. school:stem1';

COMMENT ON COLUMN grouper_memberships_v.STEM_DISPLAYNAME IS 'STEM_DISPLAYNAME: display name of the stems if this is a stem privilege, e.g. My school:The stem1';

COMMENT ON COLUMN grouper_memberships_v.SUBJECT_ID IS 'SUBJECT_ID: e.g. a school id of a person in the membership e.g. 12345';

COMMENT ON COLUMN grouper_memberships_v.SUBJECT_SOURCE IS 'SUBJECT_SOURCE: source where the subject in the membership is from e.g. mySchoolPeople';

COMMENT ON COLUMN grouper_memberships_v.MEMBER_ID IS 'MEMBER_ID: id in the grouper_members table';

COMMENT ON COLUMN grouper_memberships_v.LIST_TYPE IS 'LIST_TYPE: list: members of a group, access: privilege of a group, naming: privilege of a stem';

COMMENT ON COLUMN grouper_memberships_v.LIST_NAME IS 'LIST_NAME: subset of list type.  which list if a list membership.  which privilege if a privilege.  e.g. members';

COMMENT ON COLUMN grouper_memberships_v.MEMBERSHIP_TYPE IS 'MEMBERSHIP_TYPE: either immediate (direct membership or privilege), of effective (membership due to a composite or a group being a member of another group)';

COMMENT ON COLUMN grouper_memberships_v.COMPOSITE_PARENT_GROUP_NAME IS 'COMPOSITE_PARENT_GROUP_NAME: name of group if this membership relates to a composite relationship, e.g. school:stem:allStudents';

COMMENT ON COLUMN grouper_memberships_v.DEPTH IS 'DEPTH: 0 for composite, if not then it is the 0 indexed count of number of group hops between member and group';

COMMENT ON COLUMN grouper_memberships_v.CREATOR_SOURCE IS 'CREATOR_SOURCE: subject source where the creator of the group is from';

COMMENT ON COLUMN grouper_memberships_v.CREATOR_SUBJECT_ID IS 'CREATOR_SUBJECT_ID: subject id of the creator of the group, e.g. 12345';

COMMENT ON COLUMN grouper_memberships_v.MEMBERSHIP_ID IS 'MEMBERSHIP_ID: uuid unique id of this membership';

COMMENT ON COLUMN grouper_memberships_v.IMMEDIATE_MEMBERSHIP_ID IS 'IMMEDIATE_MEMBERSHIP_ID: uuid of the immediate membership that causes this membership';

COMMENT ON COLUMN grouper_memberships_v.GROUP_SET_ID IS 'GROUP_SET_ID: uuid of the group set that causes this membership';

COMMENT ON COLUMN grouper_memberships_v.STEM_ID IS 'STEM_ID: if this is a stem privilege, this is the stem uuid unique id';

COMMENT ON COLUMN grouper_memberships_v.GROUP_ID IS 'GROUP_ID: if this is a group list or privilege, this is the group uuid unique id';

COMMENT ON COLUMN grouper_memberships_v.CREATE_TIME IS 'CREATE_TIME: number of millis since 1970 since this membership was created';

COMMENT ON COLUMN grouper_memberships_v.CREATOR_ID IS 'CREATOR_ID: member_id of the creator, foreign key into grouper_members';

COMMENT ON COLUMN grouper_memberships_v.FIELD_ID IS 'FIELD_ID: uuid unique id of the field.  foreign key to grouper_fields.  This represents the list_type and list_name';

COMMENT ON COLUMN grouper_memberships_v.CONTEXT_ID IS 'CONTEXT_ID: Context id links together multiple operations into one high level action';

CREATE VIEW grouper_stems_v (EXTENSION, NAME, DISPLAY_EXTENSION, DISPLAY_NAME, DESCRIPTION, PARENT_STEM_NAME, PARENT_STEM_DISPLAYNAME, CREATOR_SOURCE, CREATOR_SUBJECT_ID, MODIFIER_SOURCE, MODIFIER_SUBJECT_ID, CREATE_TIME, CREATOR_ID, STEM_ID, MODIFIER_ID, MODIFY_TIME, PARENT_STEM, HIBERNATE_VERSION_NUMBER, CONTEXT_ID) AS select gs.extension, gs.NAME, gs.DISPLAY_EXTENSION, gs.DISPLAY_NAME, gs.DESCRIPTION, (select gs_parent.NAME from grouper_stems gs_parent where gs_parent.id = gs.PARENT_STEM) as parent_stem_name, (select gs_parent.DISPLAY_NAME from grouper_stems gs_parent where gs_parent.id = gs.PARENT_STEM) as parent_stem_displayname, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gs.creator_ID) as creator_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gs.creator_ID) as creator_subject_id, (select gm.SUBJECT_SOURCE from grouper_members gm where gm.ID = gs.MODIFIER_ID) as modifier_source, (select gm.SUBJECT_ID from grouper_members gm where gm.ID = gs.MODIFIER_ID) as modifier_subject_id, gs.CREATE_TIME, gs.CREATOR_ID,  gs.ID as stem_id, gs.MODIFIER_ID, gs.MODIFY_TIME, gs.PARENT_STEM, gs.HIBERNATE_VERSION_NUMBER, gs.context_id from grouper_stems gs ;

COMMENT ON TABLE grouper_stems_v IS 'GROUPER_STEMS_V: holds one record for each stem (folder) in grouper, with friendly names';

COMMENT ON COLUMN grouper_stems_v.EXTENSION IS 'EXTENSION: name of the stem without the parent stem names, e.g. stem1';

COMMENT ON COLUMN grouper_stems_v.NAME IS 'NAME: name of the stem including parent stem names, e.g. school:stem1';

COMMENT ON COLUMN grouper_stems_v.DISPLAY_EXTENSION IS 'DISPLAY_EXTENSION: display name of the stem without parent stem names, e.g. The stem 1';

COMMENT ON COLUMN grouper_stems_v.DISPLAY_NAME IS 'DISPLAY_NAME: display name of the stem including parent stem names, e.g. My school: The stem 1';

COMMENT ON COLUMN grouper_stems_v.DESCRIPTION IS 'DESCRIPTION: description entered in about the stem, for example including why the stem exists and who has access';

COMMENT ON COLUMN grouper_stems_v.PARENT_STEM_NAME IS 'PARENT_STEM_NAME: name of the stem (folder) that this stem is in.  e.g. school';

COMMENT ON COLUMN grouper_stems_v.PARENT_STEM_DISPLAYNAME IS 'PARENT_STEM_DISPLAYNAME: display name of the stem (folder) that this stem is in.  e.g. My school';

COMMENT ON COLUMN grouper_stems_v.CREATOR_SOURCE IS 'CREATOR_SOURCE: subject source where the subject that created this stem is from, e.g. mySchoolPeople';

COMMENT ON COLUMN grouper_stems_v.CREATOR_SUBJECT_ID IS 'CREATOR_SUBJECT_ID: e.g. the school id of the subject that created this stem, e.g. 12345';

COMMENT ON COLUMN grouper_stems_v.MODIFIER_SOURCE IS 'MODIFIER_SOURCE: subject source where the subject that last modified this stem is from, e.g. mySchoolPeople';

COMMENT ON COLUMN grouper_stems_v.MODIFIER_SUBJECT_ID IS 'MODIFIER_SUBJECT_ID: e.g. the school id of the subject who last modified this stem, e.g. 12345';

COMMENT ON COLUMN grouper_stems_v.CREATE_TIME IS 'CREATE_TIME: number of millis since 1970 that this stem was created';

COMMENT ON COLUMN grouper_stems_v.CREATOR_ID IS 'CREATOR_ID: member id of the subject who created this stem, foreign key to grouper_members';

COMMENT ON COLUMN grouper_stems_v.STEM_ID IS 'STEM_ID: uuid unique id of this stem';

COMMENT ON COLUMN grouper_stems_v.MODIFIER_ID IS 'MODIFIER_ID: member id of the subject who last modified this stem, foreign key to grouper_members';

COMMENT ON COLUMN grouper_stems_v.MODIFY_TIME IS 'MODIFY_TIME: number of millis since 1970 since this stem was last modified';

COMMENT ON COLUMN grouper_stems_v.PARENT_STEM IS 'PARENT_STEM: stem_id uuid unique id of the stem (folder) that this stem is in';

COMMENT ON COLUMN grouper_stems_v.HIBERNATE_VERSION_NUMBER IS 'HIBERNATE_VERSION_NUMBER: increments by one for each update from hibernate';

COMMENT ON COLUMN grouper_stems_v.CONTEXT_ID IS 'CONTEXT_ID: Context id links together multiple operations into one high level action';

CREATE VIEW grouper_rpt_attributes_v (ATTRIBUTE_NAME, GROUP_COUNT, GROUP_TYPE_NAME, FIELD_ID, GROUP_TYPE_ID) AS select gf.NAME as attribute_name,  (select count(*) from grouper_attributes ga where ga.FIELD_ID = gf.id) as group_count,   gt.NAME as group_type_name, gf.ID as field_id, gt.ID as group_type_id from grouper_fields gf, grouper_types gt where gf.TYPE = 'attribute' and gf.GROUPTYPE_UUID = gt.ID ;

COMMENT ON TABLE grouper_rpt_attributes_v IS 'GROUPER_RPT_ATTRIBUTES_V: report on attributes, how many groups use each attribute';

COMMENT ON COLUMN grouper_rpt_attributes_v.ATTRIBUTE_NAME IS 'ATTRIBUTE_NAME: friendly name of the attribute which is actually from grouper_fields';

COMMENT ON COLUMN grouper_rpt_attributes_v.GROUP_COUNT IS 'GROUP_COUNT: number of groups which define this attribute';

COMMENT ON COLUMN grouper_rpt_attributes_v.GROUP_TYPE_NAME IS 'GROUP_TYPE_NAME: group type which owns this attribute';

COMMENT ON COLUMN grouper_rpt_attributes_v.FIELD_ID IS 'FIELD_ID: uuid unique id of this field (attribute), foreign key from grouper_attributes to grouper_fields';

COMMENT ON COLUMN grouper_rpt_attributes_v.GROUP_TYPE_ID IS 'GROUP_TYPE_ID: uuid unique id of the group type.  foreign key from grouper_fields to grouper_types';

CREATE VIEW grouper_rpt_composites_v (COMPOSITE_TYPE, THE_COUNT) AS select gc.TYPE as composite_type, count(*) as the_count from grouper_composites gc group by gc.type ;

COMMENT ON TABLE grouper_rpt_composites_v IS 'GROUPER_RPT_COMPOSITES_V: report on the three composite types: union, intersection, complement and how many of each exist';

COMMENT ON COLUMN grouper_rpt_composites_v.COMPOSITE_TYPE IS 'COMPOSITE_TYPE: either union: all members from both factors, intersection: only members in both factors, complement: members in first but not second factor';

COMMENT ON COLUMN grouper_rpt_composites_v.THE_COUNT IS 'THE_COUNT: nubmer of composites of this type in the system';

CREATE VIEW grouper_rpt_group_field_v (GROUP_NAME, GROUP_DISPLAYNAME, FIELD_TYPE, FIELD_NAME, MEMBER_COUNT) AS select gg.name as group_name, gg.display_name as group_displayName, gf.type as field_type, gf.name as field_name, count(distinct gms.member_id) as member_count from grouper_memberships_all_v gms, grouper_groups gg, grouper_fields gf where gms.FIELD_ID = gf.ID and gg.id = gms.OWNER_group_ID group by gg.name, gg.display_name, gf.type, gf.name ;

COMMENT ON TABLE grouper_rpt_group_field_v IS 'GROUPER_RPT_GROUP_FIELD_V: report on how many unique members are in each group based on field (or list) name and type';

COMMENT ON COLUMN grouper_rpt_group_field_v.GROUP_NAME IS 'GROUP_NAME: name of the group where the list and members are, e.g. school:stem1:myGroup';

COMMENT ON COLUMN grouper_rpt_group_field_v.GROUP_DISPLAYNAME IS 'GROUP_DISPLAYNAME: display name of the group where the list and members are, e.g. My school:The stem1:My group';

COMMENT ON COLUMN grouper_rpt_group_field_v.FIELD_TYPE IS 'FIELD_TYPE: membership field type, e.g. list or access';

COMMENT ON COLUMN grouper_rpt_group_field_v.FIELD_NAME IS 'FIELD_NAME: membership field name, e.g. members, admins, readers';

COMMENT ON COLUMN grouper_rpt_group_field_v.MEMBER_COUNT IS 'MEMBER_COUNT: number of unique members in the group/field';

CREATE VIEW grouper_rpt_groups_v (GROUP_NAME, GROUP_DISPLAYNAME, TYPE_OF_GROUP, IMMEDIATE_MEMBERSHIP_COUNT, MEMBERSHIP_COUNT, ATTRIBUTE_COUNT, GROUPS_TYPES_COUNT, ISA_COMPOSITE_FACTOR_COUNT, ISA_MEMBER_COUNT, GROUP_ID) AS select  gg.name as group_name, gg.display_name as group_displayname, gg.type_of_group, (select count(distinct gms.MEMBER_ID) from grouper_memberships_all_v gms where gms.OWNER_group_ID = gg.id and gms.MSHIP_TYPE = 'immediate') as immediate_membership_count, (select count(distinct gms.MEMBER_ID) from grouper_memberships_all_v gms where gms.OWNER_group_ID = gg.id) as membership_count, (select count(*) from grouper_attributes ga where ga.GROUP_ID = gg.id) as attribute_count, (select count(*) from grouper_groups_types ggt where ggt.GROUP_UUID = gg.id) as groups_types_count, (select count(*) from grouper_composites gc where gc.LEFT_FACTOR = gg.id or gc.RIGHT_FACTOR = gg.id) as isa_composite_factor_count, (select count(distinct gms.OWNER_group_ID) from grouper_memberships_all_v gms, grouper_members gm where gm.SUBJECT_ID = gg.ID and gms.MEMBER_ID = gm.ID ) as isa_member_count, gg.ID as group_id from grouper_groups gg ;

COMMENT ON TABLE grouper_rpt_groups_v IS 'GROUPER_RPT_GROUPS_V: report with a line for each group and some counts of immediate and effective members etc';

COMMENT ON COLUMN grouper_rpt_groups_v.GROUP_NAME IS 'GROUP_NAME: name of group which has the stats, e.g. school:stem1:theGroup';

COMMENT ON COLUMN grouper_rpt_groups_v.GROUP_DISPLAYNAME IS 'GROUP_DISPLAYNAME: display name of the group which has the stats, e.g. My school:The stem1:The group';

COMMENT ON COLUMN grouper_rpt_groups_v.TYPE_OF_GROUP IS 'TYPE_OF_GROUP: group if it is a group, role if it is a role';

COMMENT ON COLUMN grouper_rpt_groups_v.IMMEDIATE_MEMBERSHIP_COUNT IS 'IMMEDIATE_MEMBERSHIP_COUNT: number of unique immediate members, directly assigned to this group';

COMMENT ON COLUMN grouper_rpt_groups_v.MEMBERSHIP_COUNT IS 'MEMBERSHIP_COUNT: total number of unique members, immediate or effective';

COMMENT ON COLUMN grouper_rpt_groups_v.ATTRIBUTE_COUNT IS 'ATTRIBUTE_COUNT: number of attributes defined for this group';

COMMENT ON COLUMN grouper_rpt_groups_v.GROUPS_TYPES_COUNT IS 'GROUPS_TYPES_COUNT: number of group types associated with this group';

COMMENT ON COLUMN grouper_rpt_groups_v.ISA_COMPOSITE_FACTOR_COUNT IS 'ISA_COMPOSITE_FACTOR_COUNT: number of composites this group is a factor of';

COMMENT ON COLUMN grouper_rpt_groups_v.ISA_MEMBER_COUNT IS 'ISA_MEMBER_COUNT: number of groups this group is an immediate or effective member of';

COMMENT ON COLUMN grouper_rpt_groups_v.GROUP_ID IS 'GROUP_ID: uuid unique id of this group';

CREATE VIEW grouper_rpt_roles_v (ROLE_NAME, ROLE_DISPLAYNAME, IMMEDIATE_MEMBERSHIP_COUNT, MEMBERSHIP_COUNT, ATTRIBUTE_COUNT, ROLES_TYPES_COUNT, ISA_COMPOSITE_FACTOR_COUNT, ISA_MEMBER_COUNT, ROLE_ID) AS select  gg.name as role_name, gg.display_name as role_displayname, (select count(distinct gms.member_id) from grouper_memberships_all_v gms where gms.OWNER_group_ID = gg.id and gms.mship_type = 'immediate') as immediate_membership_count, (select count(distinct gms.member_id) from grouper_memberships_all_v gms where gms.OWNER_group_ID = gg.id) as membership_count, (select count(*) from grouper_attributes ga where ga.GROUP_ID = gg.id) as attribute_count, (select count(*) from grouper_groups_types ggt where ggt.GROUP_UUID = gg.id) as roles_types_count, (select count(*) from grouper_composites gc where gc.LEFT_FACTOR = gg.id or gc.RIGHT_FACTOR = gg.id) as isa_composite_factor_count, (select count(distinct gms.OWNER_group_ID) from grouper_flat_memberships gms, grouper_members gm where gm.SUBJECT_ID = gg.ID and gms.MEMBER_ID = gm.ID ) as isa_member_count, gg.ID as role_id from grouper_groups gg  where gg.type_of_group = 'role' ;

COMMENT ON TABLE grouper_rpt_roles_v IS 'GROUPER_RPT_ROLES_V: report with a line for each role and some counts of immediate and effective members etc';

COMMENT ON COLUMN grouper_rpt_roles_v.ROLE_NAME IS 'ROLE_NAME: name of group which has the stats, e.g. school:stem1:theGroup';

COMMENT ON COLUMN grouper_rpt_roles_v.ROLE_DISPLAYNAME IS 'ROLE_DISPLAYNAME: display name of the group which has the stats, e.g. My school:The stem1:The group';

COMMENT ON COLUMN grouper_rpt_roles_v.IMMEDIATE_MEMBERSHIP_COUNT IS 'IMMEDIATE_MEMBERSHIP_COUNT: number of unique immediate members, directly assigned to this group';

COMMENT ON COLUMN grouper_rpt_roles_v.MEMBERSHIP_COUNT IS 'MEMBERSHIP_COUNT: total number of unique members, immediate or effective';

COMMENT ON COLUMN grouper_rpt_roles_v.ATTRIBUTE_COUNT IS 'ATTRIBUTE_COUNT: number of attributes defined for this group';

COMMENT ON COLUMN grouper_rpt_roles_v.ROLES_TYPES_COUNT IS 'ROLES_TYPES_COUNT: number of group types associated with this group';

COMMENT ON COLUMN grouper_rpt_roles_v.ISA_COMPOSITE_FACTOR_COUNT IS 'ISA_COMPOSITE_FACTOR_COUNT: number of composites this group is a factor of';

COMMENT ON COLUMN grouper_rpt_roles_v.ISA_MEMBER_COUNT IS 'ISA_MEMBER_COUNT: number of groups this group is an immediate or effective member of';

COMMENT ON COLUMN grouper_rpt_roles_v.ROLE_ID IS 'ROLE_ID: uuid unique id of this group';

CREATE VIEW grouper_rpt_members_v (SUBJECT_ID, SUBJECT_SOURCE, MEMBERSHIP_COUNT, MEMBER_ID) AS select gm.SUBJECT_ID, gm.SUBJECT_SOURCE, (select count(distinct gms.owner_group_id) from grouper_memberships gms where gms.MEMBER_ID = gm.ID) as membership_count, gm.ID as member_id from grouper_members gm ;

COMMENT ON TABLE grouper_rpt_members_v IS 'GROUPER_RPT_MEMBERS_V: report for each member in grouper_members and some stats like how many groups they are in';

COMMENT ON COLUMN grouper_rpt_members_v.SUBJECT_ID IS 'SUBJECT_ID: e.g. the school person id of the person e.g. 12345';

COMMENT ON COLUMN grouper_rpt_members_v.SUBJECT_SOURCE IS 'SUBJECT_SOURCE: subject source where the subject is from, e.g. schoolAllPeople';

COMMENT ON COLUMN grouper_rpt_members_v.MEMBERSHIP_COUNT IS 'MEMBERSHIP_COUNT: number of distinct groups or stems this member has a membership with';

COMMENT ON COLUMN grouper_rpt_members_v.MEMBER_ID IS 'MEMBER_ID: uuid unique id of the member in grouper_members';

CREATE VIEW grouper_rpt_stems_v (STEM_NAME, STEM_DISPLAYNAME, GROUP_IMMEDIATE_COUNT, STEM_IMMEDIATE_COUNT, GROUP_COUNT, STEM_COUNT, THIS_STEM_MEMBERSHIP_COUNT, CHILD_GROUP_MEMBERSHIP_COUNT, GROUP_MEMBERSHIP_COUNT, STEM_ID) AS select gs.name as stem_name, gs.display_name as stem_displayname, (select count(*) from grouper_groups gg where gg.parent_stem = gs.ID) as group_immediate_count, (select count(*) from grouper_stems gs2 where gs.id = gs2.parent_stem ) as stem_immediate_count, (select count(*) from grouper_groups gg where gg.name like gs.name || '%') as group_count, (select count(*) from grouper_stems gs2 where gs2.name like gs.name || '%') as stem_count, (select count(distinct gm.member_id) from grouper_flat_memberships gm where gm.owner_stem_id = gs.id) as this_stem_membership_count,  (select count(distinct gm.member_id) from grouper_flat_memberships gm, grouper_groups gg where gg.parent_stem = gs.id and gm.owner_stem_id = gg.id) as child_group_membership_count,  (select count(distinct gm.member_id) from grouper_flat_memberships gm, grouper_groups gg where gm.owner_group_id = gg.id and gg.name like gs.name || '%') as group_membership_count, gs.ID as stem_id from grouper_stems gs ;

COMMENT ON TABLE grouper_rpt_stems_v IS 'GROUPER_RPT_STEMS_V: report with a row for each stem and stats on many groups or members are inside';

COMMENT ON COLUMN grouper_rpt_stems_v.STEM_NAME IS 'STEM_NAME: name of the stem in report, e.g. school:stem1';

COMMENT ON COLUMN grouper_rpt_stems_v.STEM_DISPLAYNAME IS 'STEM_DISPLAYNAME: display name of the stem in report, e.g. My school:The stem 1';

COMMENT ON COLUMN grouper_rpt_stems_v.GROUP_IMMEDIATE_COUNT IS 'GROUP_IMMEDIATE_COUNT: number of groups directly inside this stem';

COMMENT ON COLUMN grouper_rpt_stems_v.STEM_IMMEDIATE_COUNT IS 'STEM_IMMEDIATE_COUNT: number of stems directly inside this stem';

COMMENT ON COLUMN grouper_rpt_stems_v.GROUP_COUNT IS 'GROUP_COUNT: number of groups inside this stem, or in a stem inside this stem etc';

COMMENT ON COLUMN grouper_rpt_stems_v.STEM_COUNT IS 'STEM_COUNT: number of stems inside this stem or in a stem inside this stem etc';

COMMENT ON COLUMN grouper_rpt_stems_v.THIS_STEM_MEMBERSHIP_COUNT IS 'THIS_STEM_MEMBERSHIP_COUNT: number of access memberships related to this stem (e.g. how many people can create groups/stems inside)';

COMMENT ON COLUMN grouper_rpt_stems_v.CHILD_GROUP_MEMBERSHIP_COUNT IS 'CHILD_GROUP_MEMBERSHIP_COUNT: number of memberships in groups immediately in this stem';

COMMENT ON COLUMN grouper_rpt_stems_v.GROUP_MEMBERSHIP_COUNT IS 'GROUP_MEMBERSHIP_COUNT: number of memberships in groups in this stem or in stems in this stem etc';

COMMENT ON COLUMN grouper_rpt_stems_v.STEM_ID IS 'STEM_ID: uuid unique id of this stem';

CREATE VIEW grouper_rpt_types_v (GROUP_TYPE_NAME, GROUP_COUNT, GROUP_TYPE_ID) AS select gt.NAME as group_type_name, (select count(*) from grouper_groups_types ggt where ggt.TYPE_UUID = gt.ID) as group_count, gt.id as group_type_id from grouper_types gt ;

COMMENT ON TABLE grouper_rpt_types_v IS 'GROUPER_RPT_TYPES_V: report on group types and how many groups have that type';

COMMENT ON COLUMN grouper_rpt_types_v.GROUP_TYPE_NAME IS 'GROUP_TYPE_NAME: friendly name of this group type';

COMMENT ON COLUMN grouper_rpt_types_v.GROUP_COUNT IS 'GROUP_COUNT: number of groups that have this group type';

COMMENT ON COLUMN grouper_rpt_types_v.GROUP_TYPE_ID IS 'GROUP_TYPE_ID: uuid unique id of this group type';

CREATE VIEW grouper_role_set_v (if_has_role_name, then_has_role_name, depth, type, parent_if_has_name, parent_then_has_name, id, if_has_role_id, then_has_role_id, parent_role_set_id) AS select ifHas.name as if_has_role_name, thenHas.name as then_has_role_name,  grs.depth,   grs.type, grParentIfHas.name as parent_if_has_name, grParentThenHas.name as parent_then_has_name,   grs.id, ifHas.id as if_has_role_id, thenHas.id as then_has_role_id,   grs.parent_role_set_id  from grouper_role_set grs,   grouper_role_set grsParent,   grouper_groups grParentIfHas,   grouper_groups grParentThenHas,   grouper_groups ifHas, grouper_groups thenHas   where  thenHas.id = grs.then_has_role_id   and ifHas.id = grs.if_has_role_id   and grs.parent_role_set_id = grsParent.id   and grParentIfHas.id = grsParent.if_has_role_id   and grParentThenHas.id = grsParent.then_has_role_id   ;

COMMENT ON TABLE grouper_role_set_v IS 'grouper_role_set_v: shows all role set relationships';

COMMENT ON COLUMN grouper_role_set_v.if_has_role_name IS 'if_has_role_name: name of the set role';

COMMENT ON COLUMN grouper_role_set_v.then_has_role_name IS 'then_has_role_name: name of the member role';

COMMENT ON COLUMN grouper_role_set_v.depth IS 'depth: number of hops in the directed graph';

COMMENT ON COLUMN grouper_role_set_v.type IS 'type: self, immediate, effective';

COMMENT ON COLUMN grouper_role_set_v.parent_if_has_name IS 'parent_if_has_name: name of the role set record which is the parent ifHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_role_set_v.parent_then_has_name IS 'parent_then_has_name: name of the role set record which is the parent thenHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_role_set_v.id IS 'id: id of the set record';

COMMENT ON COLUMN grouper_role_set_v.if_has_role_id IS 'if_has_role_id: id of the set role';

COMMENT ON COLUMN grouper_role_set_v.then_has_role_id IS 'then_has_role_id: id of the member role';

COMMENT ON COLUMN grouper_role_set_v.parent_role_set_id IS 'parent_role_set_id: id of the role set record which is the parent on effective path (everything but last hop)';

CREATE VIEW grouper_attr_def_name_set_v (if_has_attr_def_name_name, then_has_attr_def_name_name, depth, type, parent_if_has_name, parent_then_has_name, id, if_has_attr_def_name_id, then_has_attr_def_name_id, parent_attr_def_name_set_id) AS select ifHas.name as if_has_attr_def_name_name, thenHas.name as then_has_attr_def_name_name,  gadns.depth,  gadns.type, gadnParentIfHas.name as parent_if_has_name, gadnParentThenHas.name as parent_then_has_name,  gadns.id,  ifHas.id as if_has_attr_def_name_id, thenHas.id as then_has_attr_def_name_id,  gadns.parent_attr_def_name_set_id from grouper_attribute_def_name_set gadns,  grouper_attribute_def_name_set gadnsParent,  grouper_attribute_def_name gadnParentIfHas,  grouper_attribute_def_name gadnParentThenHas,  grouper_attribute_def_name ifHas, grouper_attribute_def_name thenHas  where  thenHas.id = gadns.then_has_attribute_def_name_id  and ifHas.id = gadns.if_has_attribute_def_name_id  and gadns.parent_attr_def_name_set_id = gadnsParent.id  and gadnParentIfHas.id = gadnsParent.if_has_attribute_def_name_id  and gadnParentThenHas.id = gadnsParent.then_has_attribute_def_name_id  ;

COMMENT ON TABLE grouper_attr_def_name_set_v IS 'grouper_attr_def_name_set_v: shows all attribute def name set relationships';

COMMENT ON COLUMN grouper_attr_def_name_set_v.if_has_attr_def_name_name IS 'if_has_attr_def_name_name: name of the set attribute def name';

COMMENT ON COLUMN grouper_attr_def_name_set_v.then_has_attr_def_name_name IS 'then_has_attr_def_name_name: name of the member attribute def name';

COMMENT ON COLUMN grouper_attr_def_name_set_v.depth IS 'depth: number of hops in the directed graph';

COMMENT ON COLUMN grouper_attr_def_name_set_v.type IS 'type: self, immediate, effective';

COMMENT ON COLUMN grouper_attr_def_name_set_v.parent_if_has_name IS 'parent_if_has_name: name of the attribute def name set record which is the parent ifHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_attr_def_name_set_v.parent_then_has_name IS 'parent_then_has_name: name of the attribute def name set record which is the parent thenHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_attr_def_name_set_v.id IS 'id: id of the set record';

COMMENT ON COLUMN grouper_attr_def_name_set_v.if_has_attr_def_name_id IS 'if_has_attr_def_name_id: id of the set attribute def name';

COMMENT ON COLUMN grouper_attr_def_name_set_v.then_has_attr_def_name_id IS 'then_has_attr_def_name_id: id of the member attribute def name';

COMMENT ON COLUMN grouper_attr_def_name_set_v.parent_attr_def_name_set_id IS 'parent_attr_def_name_set_id: id of the attribute def name set record which is the parent on effective path (everything but last hop)';

CREATE VIEW grouper_attr_assn_action_set_v (if_has_attr_assn_action_name, then_has_attr_assn_action_name, depth, type, parent_if_has_name, parent_then_has_name, id, if_has_attr_assn_action_id, then_has_attr_assn_action_id, parent_attr_assn_action_id) AS select ifHas.name as if_has_attr_assn_action_name , thenHas.name as then_has_attr_assn_action_name,   gaaas.depth,   gaaas.type, gaaaParentIfHas.name as parent_if_has_name, gaaaParentThenHas.name as parent_then_has_name,   gaaas.id,   ifHas.id as if_has_attr_assn_action_id, thenHas.id as then_has_attr_assn_action_id,   gaaas.parent_attr_assn_action_id  from grouper_attr_assign_action_set gaaas,   grouper_attr_assign_action_set gaaasParent,   grouper_attr_assign_action gaaaParentIfHas,   grouper_attr_assign_action gaaaParentThenHas,   grouper_attr_assign_action ifHas, grouper_attr_assign_action thenHas   where  thenHas.id = gaaas.then_has_attr_assn_action_id   and ifHas.id = gaaas.if_has_attr_assn_action_id   and gaaas.parent_attr_assn_action_id = gaaasParent.id   and gaaaParentIfHas.id = gaaasParent.if_has_attr_assn_action_id   and gaaaParentThenHas.id = gaaasParent.then_has_attr_assn_action_id   ;

COMMENT ON TABLE grouper_attr_assn_action_set_v IS 'grouper_attr_assn_action_set_v: shows all action set relationships';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.if_has_attr_assn_action_name IS 'if_has_attr_assn_action_name: name of the set attribute action';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.then_has_attr_assn_action_name IS 'then_has_attr_assn_action_name: name of the member attribute action';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.depth IS 'depth: number of hops in the directed graph';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.type IS 'type: self, immediate, effective';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.parent_if_has_name IS 'parent_if_has_name: name of the attribute def name set record which is the parent ifHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.parent_then_has_name IS 'parent_then_has_name: name of the attribute def name set record which is the parent thenHas on effective path (everything but last hop)';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.id IS 'id: id of the set record';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.if_has_attr_assn_action_id IS 'if_has_attr_assn_action_id: id of the set attribute assign name';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.then_has_attr_assn_action_id IS 'then_has_attr_assn_action_id: id of the member attribute action';

COMMENT ON COLUMN grouper_attr_assn_action_set_v.parent_attr_assn_action_id IS 'parent_attr_assn_action_id: id of the attribute action set record which is the parent on effective path (everything but last hop)';

CREATE VIEW grouper_attr_asn_group_v (group_name, action, attribute_def_name_name, group_display_name, attribute_def_name_disp_name, name_of_attribute_def, attribute_assign_notes, attribute_assign_delegatable, enabled, enabled_time, disabled_time, group_id, attribute_assign_id, attribute_def_name_id, attribute_def_id, action_id) AS select gg.name as group_name, gaaa.name as action, gadn.name as attribute_def_name_name, gg.display_name as group_display_name, gadn.display_name as attribute_def_name_disp_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gaa.attribute_assign_delegatable, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gg.id as group_id, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_groups gg, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_attr_assign_action gaaa  where gaa.owner_group_id = gg.id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id and gaa.owner_member_id is null and gaa.attribute_assign_action_id = gaaa.id ;

COMMENT ON TABLE grouper_attr_asn_group_v IS 'grouper_attr_asn_group_v: attribute assigned to a group, with related columns';

COMMENT ON COLUMN grouper_attr_asn_group_v.group_name IS 'group_name: name of group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_group_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_group_v.group_display_name IS 'group_display_name: display name of the group assigned an attribute';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_group_v.name_of_attribute_def IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_attr_asn_group_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_group_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_group_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_group_v.group_id IS 'group_id: group id of the group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_group_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_group_v.action_id IS 'action_id: id of the attribute assign action';

CREATE VIEW grouper_attr_asn_efmship_v (group_name, subject_source_id, subject_id, action, attribute_def_name_name, group_display_name, attribute_def_name_disp_name, name_of_attribute_def, attribute_assign_notes, list_name, attribute_assign_delegatable, enabled, enabled_time, disabled_time, group_id, attribute_assign_id, attribute_def_name_id, attribute_def_id, member_id, action_id) AS select distinct gg.name as group_name, gm.subject_source as subject_source_id, gm.subject_id, gaaa.name as action, gadn.name as attribute_def_name_name, gg.display_name as group_display_name, gadn.display_name as attribute_def_name_disp_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gf.name as list_name, gaa.attribute_assign_delegatable, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gg.id as group_id, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gm.id as member_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_memberships_all_v gmav, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_groups gg, grouper_fields gf, grouper_members gm, grouper_attr_assign_action gaaa  where gaa.owner_group_id = gmav.owner_group_id and gaa.owner_member_id = gmav.member_id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id and gmav.immediate_mship_enabled = 'T' and gmav.owner_group_id = gg.id and gmav.field_id = gf.id and gf.type = 'list' and gmav.member_id = gm.id and gaa.owner_member_id is not null and gaa.owner_group_id is null and gaa.attribute_assign_action_id = gaaa.id ;

COMMENT ON TABLE grouper_attr_asn_efmship_v IS 'grouper_attr_asn_efmship_v: attribute assigned to an effective membership';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.group_name IS 'group_name: name of group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.subject_source_id IS 'subject_source_id: source id of the subject being assigned';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.subject_id IS 'subject_id: subject id of the subject being assigned';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.group_display_name IS 'group_display_name: display name of the group assigned an attribute';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.name_of_attribute_def IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.list_name IS 'list_name: name of the membership list for this effective membership';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.group_id IS 'group_id: group id of the group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.member_id IS 'member_id: id of the member assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_efmship_v.action_id IS 'action_id: attribute assign action id';

CREATE VIEW grouper_attr_asn_stem_v (stem_name, action, attribute_def_name_name, stem_display_name, attribute_def_name_disp_name, name_of_attribute_def, attribute_assign_notes, enabled, enabled_time, disabled_time, stem_id, attribute_assign_id, attribute_def_name_id, attribute_def_id, action_id) AS select gs.name as stem_name, gaaa.name as action, gadn.name as attribute_def_name_name, gs.display_name as stem_display_name, gadn.display_name as attribute_def_name_disp_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gs.id as stem_id, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_stems gs, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_attr_assign_action gaaa  where gaa.owner_stem_id = gs.id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id and gaa.attribute_assign_action_id = gaaa.id ;

COMMENT ON TABLE grouper_attr_asn_stem_v IS 'grouper_attr_asn_stem_v: attribute assigned to a stem and related cols';

COMMENT ON COLUMN grouper_attr_asn_stem_v.stem_name IS 'stem_name: name of stem assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_stem_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_stem_v.stem_display_name IS 'stem_display_name: display name of the stem assigned an attribute';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_stem_v.name_of_attribute_def IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_stem_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_stem_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_stem_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_stem_v.stem_id IS 'stem_id: stem id of the stem assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_stem_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_stem_v.action_id IS 'action_id: id of the attribute assign action';

CREATE VIEW grouper_attr_asn_member_v (source_id, subject_id, action, attribute_def_name_name, attribute_def_name_disp_name, name_of_attribute_def, attribute_assign_notes, attribute_assign_delegatable, enabled, enabled_time, disabled_time, member_id, attribute_assign_id, attribute_def_name_id, attribute_def_id, action_id) AS select gm.subject_source as source_id, gm.subject_id, gaaa.name as action, gadn.name as attribute_def_name_name, gadn.display_name as attribute_def_name_disp_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gaa.attribute_assign_delegatable, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gm.id as member_id, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_members gm, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_attr_assign_action gaaa where gaa.owner_member_id = gm.id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id and gaa.owner_group_id is null  and gaa.attribute_assign_action_id = gaaa.id;

COMMENT ON TABLE grouper_attr_asn_member_v IS 'grouper_attr_asn_member_v: attribute assigned to a member and related cols';

COMMENT ON COLUMN grouper_attr_asn_member_v.source_id IS 'source_id: source of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_member_v.subject_id IS 'subject_id: subject_id of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_member_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_member_v.name_of_attribute_def IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_attr_asn_member_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_member_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_member_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_member_v.member_id IS 'member_id: member id of the member assigned the attribute (this is an internal grouper uuid)';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_member_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_member_v.action_id IS 'action_id: id of the attribute assign action';

CREATE VIEW grouper_attr_asn_mship_v (group_name, source_id, subject_id, action, attribute_def_name_name, attribute_def_name_disp_name, list_name, name_of_attribute_def, attribute_assign_notes, attribute_assign_delegatable, enabled, enabled_time, disabled_time, group_id, membership_id, member_id, attribute_assign_id, attribute_def_name_id, attribute_def_id, action_id) AS select gg.name as group_name, gm.subject_source as source_id, gm.subject_id, gaaa.name as action, gadn.name as attribute_def_name_name, gadn.display_name as attribute_def_name_disp_name, gf.name as list_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gaa.attribute_assign_delegatable, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gg.id as group_id, gms.id as membership_id, gm.id as member_id, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_groups gg, grouper_memberships gms, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_members gm, grouper_fields gf, grouper_attr_assign_action gaaa  where gaa.owner_membership_id = gms.id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id  and gms.field_id = gf.id and gms.member_id = gm.id and gms.owner_group_id = gg.id  and gf.type = 'list' and gaa.attribute_assign_action_id = gaaa.id ;

COMMENT ON TABLE grouper_attr_asn_mship_v IS 'grouper_attr_asn_mship_v: attribute assigned to an immediate memberships, and related cols';

COMMENT ON COLUMN grouper_attr_asn_mship_v.group_name IS 'group_name: name of group in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.source_id IS 'source_id: source of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_mship_v.subject_id IS 'subject_id: subject_id of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_mship_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.list_name IS 'list_name: name of list in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.name_of_attribute_def IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_attr_asn_mship_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_mship_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_mship_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_mship_v.group_id IS 'group_id: group id of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.membership_id IS 'membership_id: membership id assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.member_id IS 'member_id: internal grouper member uuid of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_mship_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_mship_v.action_id IS 'action_id: id of the attribute assign action';

CREATE VIEW grouper_attr_asn_attrdef_v (name_of_attr_def_assigned_to, action, attribute_def_name_name, attribute_def_name_disp_name, name_of_attribute_def_assigned, attribute_assign_notes, enabled, enabled_time, disabled_time, id_of_attr_def_assigned_to, attribute_assign_id, attribute_def_name_id, attribute_def_id, action_id) AS select gad_assigned_to.name as name_of_attr_def_assigned_to, gaaa.name as action, gadn.name as attribute_def_name_name, gadn.display_name as attribute_def_name_disp_name, gad.name as name_of_attribute_def, gaa.notes as attribute_assign_notes, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gad_assigned_to.id as id_of_attr_def_assigned_to, gaa.id as attribute_assign_id, gadn.id as attribute_def_name_id, gad.id as attribute_def_id, gaaa.id as action_id from grouper_attribute_assign gaa, grouper_attribute_def gad_assigned_to, grouper_attribute_def_name gadn, grouper_attribute_def gad, grouper_attr_assign_action gaaa  where gaa.owner_attribute_def_id = gad_assigned_to.id and gaa.attribute_def_name_id = gadn.id and gadn.attribute_def_id = gad.id and gaa.attribute_assign_action_id = gaaa.id ;

COMMENT ON TABLE grouper_attr_asn_attrdef_v IS 'grouper_attr_asn_attrdef_v: attribute assigned to an attribute definition, and related columns';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.name_of_attr_def_assigned_to IS 'name_of_attr_def_assigned_to: name of attribute def assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.name_of_attribute_def_assigned IS 'name_of_attribute_def: name of the attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_assign_notes IS 'attribute_assign_notes: notes related to the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.id_of_attr_def_assigned_to IS 'id_of_attr_def_assigned_to: attrDef id of the attributeDef assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_assign_id IS 'attribute_assign_id: id of the attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_asn_attrdef_v.action_id IS 'action_id: id of the attribute assign action';

CREATE VIEW grouper_attr_asn_asn_group_v (group_name, action1, action2, attribute_def_name_name1, attribute_def_name_name2, group_display_name, attribute_def_name_disp_name1, attribute_def_name_disp_name2, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, group_id, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select gg.name as group_name, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gg.display_name as group_display_name, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gg.id as group_id, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_groups gg, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2, grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2   where gaa1.id = gaa2.owner_attribute_assign_id and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T' and gg.id = gaa1.owner_group_id and gaa1.owner_member_id is null and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id;

COMMENT ON TABLE grouper_attr_asn_asn_group_v IS 'grouper_attr_asn_asn_group_v: attribute assigned to an assignment of attribute to a group, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.group_name IS 'group_name: name of group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the current attribute definition name which is assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.group_display_name IS 'group_display_name: display name of the group assigned an attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the attribute definition name assigned to the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the attribute definition name assigned to the new attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the attribute definition associated with the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the attribute definition associated with the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.group_id IS 'group_id: group id of the group assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_group_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_asn_asn_efmship_v (group_name, source_id, subject_id, action1, action2, attribute_def_name_name1, attribute_def_name_name2, attribute_def_name_disp_name1, attribute_def_name_disp_name2, list_name, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, group_id, member_id, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select distinct gg.name as group_name, gm.subject_source as source_id, gm.subject_id, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gf.name as list_name, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gg.id as group_id, gm.id as member_id, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_groups gg, grouper_memberships_all_v gmav, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2, grouper_members gm, grouper_fields gf, grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2 where gaa1.owner_member_id = gmav.member_id and gaa1.owner_group_id = gmav.owner_group_id and gaa2.owner_attribute_assign_id = gaa1.id  and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T' and gmav.immediate_mship_enabled = 'T' and gmav.field_id = gf.id and gmav.member_id = gm.id and gmav.owner_group_id = gg.id and gf.type = 'list' and gaa1.owner_member_id is not null  and gaa1.owner_group_id is not null and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id ;

COMMENT ON TABLE grouper_attr_asn_asn_efmship_v IS 'grouper_attr_asn_asn_efmship_v: attribute assigned to an assignment of an attribute to an effective membership, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.group_name IS 'group_name: name of group in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.source_id IS 'source_id: source of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.subject_id IS 'subject_id: subject_id of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the new attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the original attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the new attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.list_name IS 'list_name: name of list in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the original attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the new attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.group_id IS 'group_id: group id of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.member_id IS 'member_id: internal grouper member uuid of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_efmship_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_asn_asn_stem_v (stem_name, action1, action2, attribute_def_name_name1, attribute_def_name_name2, stem_display_name, attribute_def_name_disp_name1, attribute_def_name_disp_name2, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, stem_id, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select gs.name as stem_name, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gs.display_name as stem_display_name, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gs.id as stem_id, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_stems gs, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2, grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2 where gaa1.id = gaa2.owner_attribute_assign_id and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T' and gs.id = gaa1.owner_stem_id and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id ;

COMMENT ON TABLE grouper_attr_asn_asn_stem_v IS 'grouper_attr_asn_asn_stem_v: attribute assigned to an assignment of attribute to a stem, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.stem_name IS 'stem_name: name of stem assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the current attribute definition name which is assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.stem_display_name IS 'stem_display_name: display name of the stem assigned an attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the attribute definition name assigned to the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the attribute definition name assigned to the new attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the attribute definition associated with the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the attribute definition associated with the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.stem_id IS 'stem_id: stem id of the stem assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_stem_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_asn_asn_member_v (source_id, subject_id, action1, action2, attribute_def_name_name1, attribute_def_name_name2, attribute_def_name_disp_name1, attribute_def_name_disp_name2, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, member_id, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select gm.subject_source as source_id, gm.subject_id, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gm.id as member_id, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_members gm, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2, grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2 where gaa1.id = gaa2.owner_attribute_assign_id and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T' and gm.id = gaa1.owner_member_id and gaa1.owner_group_id is null and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id ;

COMMENT ON TABLE grouper_attr_asn_asn_member_v IS 'grouper_attr_asn_asn_member_v: attribute assigned to an assignment of an attribute to a member, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.source_id IS 'source_id: source id of the member assigned the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.subject_id IS 'subject_id: subject id of the member assigned the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the current attribute definition name which is assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the attribute definition name assigned to the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the attribute definition name assigned to the new attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the attribute definition associated with the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the attribute definition associated with the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.member_id IS 'member_id: member id of the member assigned the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_member_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_asn_asn_mship_v (group_name, source_id, subject_id, action1, action2, attribute_def_name_name1, attribute_def_name_name2, attribute_def_name_disp_name1, attribute_def_name_disp_name2, list_name, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, group_id, membership_id, member_id, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select gg.name as group_name, gm.subject_source as source_id, gm.subject_id, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gf.name as list_name, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gg.id as group_id, gms.id as membership_id, gm.id as member_id, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_groups gg, grouper_memberships gms, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2, grouper_members gm, grouper_fields gf, grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2 where gaa1.owner_membership_id = gms.id and gaa2.owner_attribute_assign_id = gaa1.id  and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T'  and gms.field_id = gf.id and gms.member_id = gm.id and gms.owner_group_id = gg.id and gf.type = 'list' and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id ;

COMMENT ON TABLE grouper_attr_asn_asn_mship_v IS 'grouper_attr_asn_asn_mship_v: attribute assigned to an assignment of an attribute to a membership, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.group_name IS 'group_name: name of group in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.source_id IS 'source_id: source of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.subject_id IS 'subject_id: subject_id of the subject that belongs to the member';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the new attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the original attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the new attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.list_name IS 'list_name: name of list in membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the original attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the new attribute definition associated with the attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.group_id IS 'group_id: group id of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.membership_id IS 'membership_id: membership id assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.member_id IS 'member_id: internal grouper member uuid of the membership assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_mship_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_asn_asn_attrdef_v (name_of_attr_def_assigned_to, action1, action2, attribute_def_name_name1, attribute_def_name_name2, attribute_def_name_disp_name1, attribute_def_name_disp_name2, name_of_attribute_def1, name_of_attribute_def2, attribute_assign_notes1, attribute_assign_notes2, enabled2, enabled_time2, disabled_time2, id_of_attr_def_assigned_to, attribute_assign_id1, attribute_assign_id2, attribute_def_name_id1, attribute_def_name_id2, attribute_def_id1, attribute_def_id2, action_id1, action_id2) AS select gad.name as name_of_attr_def_assigned_to, gaaa1.name as action1, gaaa2.name as action2,  gadn1.name as attribute_def_name_name1, gadn2.name as attribute_def_name_name2, gadn1.display_name as attribute_def_name_disp_name1, gadn2.display_name as attribute_def_name_disp_name2, gad1.name as name_of_attribute_def1, gad2.name as name_of_attribute_def2, gaa1.notes as attribute_assign_notes1, gaa2.notes as attribute_assign_notes2, gaa2.enabled as enabled2, gaa2.enabled_time as enabled_time2, gaa2.disabled_time as disabled_time2, gad.id as id_of_attr_def_assigned_to, gaa1.id as attribute_assign_id1, gaa2.id as attribute_assign_id2, gadn1.id as attribute_def_name_id1, gadn2.id as attribute_def_name_id2, gad1.id as attribute_def_id1, gad2.id as attribute_def_id2, gaaa1.id as action_id1, gaaa2.id as action_id2 from grouper_attribute_assign gaa1, grouper_attribute_assign gaa2, grouper_attribute_def gad, grouper_attribute_def_name gadn1, grouper_attribute_def_name gadn2, grouper_attribute_def gad1, grouper_attribute_def gad2 , grouper_attr_assign_action gaaa1, grouper_attr_assign_action gaaa2 where gaa1.id = gaa2.owner_attribute_assign_id and gaa1.attribute_def_name_id = gadn1.id and gaa2.attribute_def_name_id = gadn2.id and gadn1.attribute_def_id = gad1.id and gadn2.attribute_def_id = gad2.id and gaa1.enabled = 'T' and gad.id = gaa1.owner_attribute_def_id and gaa1.attribute_assign_action_id = gaaa1.id and gaa2.attribute_assign_action_id = gaaa2.id ;

COMMENT ON TABLE grouper_attr_asn_asn_attrdef_v IS 'grouper_attr_asn_asn_attrdef_v: attribute assigned to an assignment of an attribute to an attribute definition, and related cols';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.name_of_attr_def_assigned_to IS 'name_of_attr_def_assigned_to: name of attribute_def originally assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.action1 IS 'action1: the action associated with the original attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.action2 IS 'action2: the action associated with this attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_name1 IS 'attribute_def_name_name1: name of the original attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_name2 IS 'attribute_def_name_name2: name of the current attribute definition name which is assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_disp_name1 IS 'attribute_def_name_disp_name1: display name of the attribute definition name assigned to the original attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_disp_name2 IS 'attribute_def_name_disp_name2: display name of the attribute definition name assigned to the new attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.name_of_attribute_def1 IS 'name_of_attribute_def1: name of the attribute definition associated with the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.name_of_attribute_def2 IS 'name_of_attribute_def2: name of the attribute definition associated with the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_assign_notes1 IS 'attribute_assign_notes1: notes related to the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_assign_notes2 IS 'attribute_assign_notes2: notes related to the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.enabled2 IS 'enabled2: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.enabled_time2 IS 'enabled_time2: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.disabled_time2 IS 'disabled_time2: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.id_of_attr_def_assigned_to IS 'id_of_attr_def_assigned_to: id of the attribute def assigned the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_assign_id1 IS 'attribute_assign_id1: id of the original attribute assignment to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_assign_id2 IS 'attribute_assign_id2: id of the new attribute assignment to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_id1 IS 'attribute_def_name_id1: id of the original attribute definition name assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_name_id2 IS 'attribute_def_name_id2: id of the new attribute definition name assigned to the assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_id1 IS 'attribute_def_id1: id of the original attribute definition assigned to the group';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.attribute_def_id2 IS 'attribute_def_id2: id of the new attribute definition assigned to the attribute';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.action_id1 IS 'action_id1: id of the attribute assign action of the original assignment';

COMMENT ON COLUMN grouper_attr_asn_asn_attrdef_v.action_id2 IS 'action_id2: id of the attribute assign action assigned to the group';

CREATE VIEW grouper_attr_def_priv_v (subject_id, subject_source_id, field_name, attribute_def_name, attribute_def_description, attribute_def_type, attribute_def_stem_id, attribute_def_id, member_id, field_id, immediate_membership_id, membership_id) AS select distinct gm.subject_id, gm.subject_source as subject_source_id,  gf.name as field_name, gad.name as attribute_def_name, gad.description as attribute_def_description,  gad.attribute_def_type, gad.stem_id as attribute_def_stem_id, gad.id as attribute_def_id,  gm.id as member_id, gmav.field_id, gmav.immediate_membership_id, gmav.membership_id  from grouper_memberships_all_v gmav, grouper_attribute_def gad, grouper_fields gf, grouper_members gm where gmav.owner_attr_def_id = gad.id and gmav.field_id = gf.id and gmav.immediate_mship_enabled = 'T' and gmav.member_id = gm.id ;

COMMENT ON TABLE grouper_attr_def_priv_v IS 'grouper_attr_def_priv_v: shows all privileges internal to grouper of attribute defs';

COMMENT ON COLUMN grouper_attr_def_priv_v.subject_id IS 'subject_id: of who has the priv';

COMMENT ON COLUMN grouper_attr_def_priv_v.subject_source_id IS 'subject_source_id: source id of the subject with the priv';

COMMENT ON COLUMN grouper_attr_def_priv_v.field_name IS 'field_name: field name of priv, e.g. attrView, attrRead, attrAdmin, attrUpdate, attrOptin, attrOptout';

COMMENT ON COLUMN grouper_attr_def_priv_v.attribute_def_name IS 'attribute_def_name: name of attribute definition';

COMMENT ON COLUMN grouper_attr_def_priv_v.attribute_def_description IS 'attribute_def_description: description of the attribute def';

COMMENT ON COLUMN grouper_attr_def_priv_v.attribute_def_type IS 'attribute_def_type: type of attribute, e.g. attribute, privilege, domain';

COMMENT ON COLUMN grouper_attr_def_priv_v.attribute_def_stem_id IS 'attribute_def_stem_id: id of stem the attribute def is in';

COMMENT ON COLUMN grouper_attr_def_priv_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_attr_def_priv_v.member_id IS 'member_id: id of the subject in the members table';

COMMENT ON COLUMN grouper_attr_def_priv_v.field_id IS 'field_id: id of the field of membership';

COMMENT ON COLUMN grouper_attr_def_priv_v.immediate_membership_id IS 'immediate_membership_id: id of the membership in the memberships table';

COMMENT ON COLUMN grouper_attr_def_priv_v.membership_id IS 'membership_id: id of the membership in the membership all view';

CREATE VIEW grouper_perms_role_v (role_name, subject_source_id, subject_id, action, attribute_def_name_name, attribute_def_name_disp_name, role_display_name, attribute_assign_delegatable, enabled, enabled_time, disabled_time, role_id, attribute_def_id, member_id, attribute_def_name_id, action_id, membership_depth, role_set_depth, attr_def_name_set_depth, attr_assign_action_set_depth, membership_id, attribute_assign_id, permission_type, assignment_notes) AS select distinct gr.name as role_name,  gm.subject_source as subject_source_id,  gm.subject_id,  gaaa.name as action, gadn.name as attribute_def_name_name,  gadn.display_name as attribute_def_name_disp_name,  gr.display_name as role_display_name,  gaa.attribute_assign_delegatable, gaa.enabled, gaa.enabled_time, gaa.disabled_time, gr.id as role_id,  gadn.attribute_def_id,  gm.id as member_id,  gadn.id as attribute_def_name_id,  gaaa.id as action_id, gmav.depth AS membership_depth, grs.depth AS role_set_depth, gadns.depth AS attr_def_name_set_depth, gaaas.depth AS attr_assign_action_set_depth, gmav.membership_id as membership_id, gaa.id AS attribute_assign_id, 'role' as permission_type, gaa.notes as assignment_notes from grouper_groups gr,  grouper_memberships_all_v gmav,  grouper_members gm,  grouper_fields gf,  grouper_role_set grs,  grouper_attribute_assign gaa,  grouper_attribute_def_name gadn,  grouper_attribute_def_name_set gadns, grouper_attr_assign_action gaaa, grouper_attr_assign_action_set gaaas where gr.type_of_group = 'role'  and gmav.owner_group_id = gr.id  and gmav.field_id = gf.id  and gf.type = 'list'  and gf.name = 'members'  and gmav.immediate_mship_enabled = 'T'  and gmav.member_id = gm.id  and grs.if_has_role_id = gr.id  and gaa.owner_group_id = grs.then_has_role_id  and gaa.attribute_def_name_id = gadns.if_has_attribute_def_name_id  and gadn.id = gadns.then_has_attribute_def_name_id  and gaa.attribute_assign_type = 'group' and gaa.attribute_assign_action_id = gaaas.if_has_attr_assn_action_id and gaaa.id = gaaas.then_has_attr_assn_action_id ;

COMMENT ON TABLE grouper_perms_role_v IS 'grouper_perms_role_v: shows all permissions assigned to users due to the users being in a role, and the role being assigned the permission';

COMMENT ON COLUMN grouper_perms_role_v.role_name IS 'role_name: name of the role that the user is in and that has the permission';

COMMENT ON COLUMN grouper_perms_role_v.subject_source_id IS 'subject_source_id: source id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_role_v.subject_id IS 'subject_id: subject id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_role_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_perms_role_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_perms_role_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_perms_role_v.role_display_name IS 'role_display_name: display name of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_role_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_perms_role_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_perms_role_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_perms_role_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_perms_role_v.role_id IS 'role_id: id of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_role_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_perms_role_v.member_id IS 'member_id: id of the subject in the members table';

COMMENT ON COLUMN grouper_perms_role_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_perms_role_v.action_id IS 'action_id: id of the attribute assign action';

COMMENT ON COLUMN grouper_perms_role_v.membership_depth IS 'membership_depth: depth of membership, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_v.role_set_depth IS 'role_set_depth: depth of role hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_v.attr_def_name_set_depth IS 'attr_def_name_set_depth: depth of attribute def name set hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_v.attr_assign_action_set_depth IS 'attr_assign_action_set_depth: depth of action hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_v.membership_id IS 'membership_id: id of the underlying membership';

COMMENT ON COLUMN grouper_perms_role_v.attribute_assign_id IS 'attribute_assign_id: id of the underlying attribute assign';

COMMENT ON COLUMN grouper_perms_role_v.permission_type IS 'permission_type: role or role_subject for assignment to role or to role subject pair';

COMMENT ON COLUMN grouper_perms_role_v.assignment_notes IS 'assignment_notes: notes on this assignment';

CREATE VIEW grouper_perms_role_subject_v (role_name, subject_source_id, subject_id, action, attribute_def_name_name, attribute_def_name_disp_name, role_display_name, attribute_assign_delegatable, enabled, enabled_time, disabled_time, role_id, attribute_def_id, member_id, attribute_def_name_id, action_id, membership_depth, role_set_depth, attr_def_name_set_depth, attr_assign_action_set_depth, membership_id, attribute_assign_id, permission_type, assignment_notes) AS SELECT DISTINCT gr.name AS role_name,   gm.subject_source AS subject_source_id,   gm.subject_id,   gaaa.name AS ACTION,  gadn.name AS attribute_def_name_name,   gadn.display_name AS attribute_def_name_disp_name,   gr.display_name AS role_display_name,   gaa.attribute_assign_delegatable,  gaa.enabled,  gaa.enabled_time,  gaa.disabled_time,  gr.id AS role_id,   gadn.attribute_def_id,   gm.id AS member_id,   gadn.id AS attribute_def_name_id,   gaaa.id AS action_id, gmav.depth AS membership_depth, -1 AS role_set_depth, gadns.depth AS attr_def_name_set_depth, gaaas.depth AS attr_assign_action_set_depth, gmav.membership_id as membership_id, gaa.id as attribute_assign_id, 'role_subject' as permission_type, gaa.notes as assignment_notes FROM grouper_groups gr,   grouper_memberships_all_v gmav,   grouper_members gm,   grouper_fields gf,   grouper_attribute_assign gaa,   grouper_attribute_def_name gadn,   grouper_attribute_def_name_set gadns,   grouper_attr_assign_action gaaa,  grouper_attr_assign_action_set gaaas  WHERE gr.type_of_group = 'role'   and gmav.owner_group_id = gr.id  and gmav.field_id = gf.id  and gmav.owner_group_id = gaa.owner_group_id  AND gmav.member_id = gaa.owner_member_id   AND gf.type = 'list'   AND gf.name = 'members'   AND gmav.immediate_mship_enabled = 'T'   AND gmav.member_id = gm.id   AND gaa.attribute_assign_type = 'any_mem'  AND gaa.attribute_def_name_id = gadns.if_has_attribute_def_name_id   AND gadn.id = gadns.then_has_attribute_def_name_id  AND gaa.attribute_assign_action_id = gaaas.if_has_attr_assn_action_id  AND gaaa.id = gaaas.then_has_attr_assn_action_id  ;

COMMENT ON TABLE grouper_perms_role_subject_v IS 'grouper_perms_role_subject_v: shows all permissions assigned to users directly while in a role';

COMMENT ON COLUMN grouper_perms_role_subject_v.role_name IS 'role_name: name of the role that the user is in and that has the permission';

COMMENT ON COLUMN grouper_perms_role_subject_v.subject_source_id IS 'subject_source_id: source id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_role_subject_v.subject_id IS 'subject_id: subject id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_role_subject_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_perms_role_subject_v.role_display_name IS 'role_display_name: display name of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_perms_role_subject_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_perms_role_subject_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_perms_role_subject_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_perms_role_subject_v.role_id IS 'role_id: id of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_perms_role_subject_v.member_id IS 'member_id: id of the subject in the members table';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_perms_role_subject_v.action_id IS 'action_id: id of the attribute assign action';

COMMENT ON COLUMN grouper_perms_role_subject_v.membership_depth IS 'membership_depth: depth of membership, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_subject_v.role_set_depth IS 'role_set_depth: depth of role hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_subject_v.attr_def_name_set_depth IS 'attr_def_name_set_depth: depth of attribute def name set hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_subject_v.attr_assign_action_set_depth IS 'attr_assign_action_set_depth: depth of action hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_role_subject_v.membership_id IS 'membership_id: id of the underlying membership';

COMMENT ON COLUMN grouper_perms_role_subject_v.attribute_assign_id IS 'attribute_assign_id: id of the underlying attribute assign';

COMMENT ON COLUMN grouper_perms_role_subject_v.permission_type IS 'permission_type: role or role_subject for assignment to role or to role subject pair';

COMMENT ON COLUMN grouper_perms_role_subject_v.assignment_notes IS 'assignment_notes: notes on this assignment';

CREATE VIEW grouper_perms_all_v (role_name, subject_source_id, subject_id, action, attribute_def_name_name, attribute_def_name_disp_name, role_display_name, attribute_assign_delegatable, enabled, enabled_time, disabled_time, role_id, attribute_def_id, member_id, attribute_def_name_id, action_id, membership_depth, role_set_depth, attr_def_name_set_depth, attr_assign_action_set_depth, membership_id, attribute_assign_id, permission_type, assignment_notes) AS select role_name,  subject_source_id,  subject_id,  action,  attribute_def_name_name,  attribute_def_name_disp_name,  role_display_name,  attribute_assign_delegatable, enabled, enabled_time, disabled_time, role_id,  attribute_def_id,  member_id,  attribute_def_name_id,  action_id, membership_depth, role_set_depth, attr_def_name_set_depth, attr_assign_action_set_depth, membership_id, attribute_assign_id, permission_type, assignment_notes from grouper_perms_role_v  union  select role_name,  subject_source_id,  subject_id,  action,  attribute_def_name_name,  attribute_def_name_disp_name,  role_display_name,  attribute_assign_delegatable, enabled, enabled_time, disabled_time, role_id,  attribute_def_id,  member_id,  attribute_def_name_id,  action_id, membership_depth, role_set_depth, attr_def_name_set_depth, attr_assign_action_set_depth, membership_id, attribute_assign_id, permission_type, assignment_notes from grouper_perms_role_subject_v  ;

COMMENT ON TABLE grouper_perms_all_v IS 'grouper_perms_all_v: shows all permissions assigned to users directly while in a role, or assigned to roles (and users in the role)';

COMMENT ON COLUMN grouper_perms_all_v.role_name IS 'role_name: name of the role that the user is in and that has the permission';

COMMENT ON COLUMN grouper_perms_all_v.subject_source_id IS 'subject_source_id: source id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_all_v.subject_id IS 'subject_id: subject id of the subject which is in the role and thus has the permission';

COMMENT ON COLUMN grouper_perms_all_v.action IS 'action: the action associated with the attribute assignment (default is assign)';

COMMENT ON COLUMN grouper_perms_all_v.attribute_def_name_name IS 'attribute_def_name_name: name of the attribute definition name which is assigned to the group';

COMMENT ON COLUMN grouper_perms_all_v.attribute_def_name_disp_name IS 'attribute_def_name_disp_name: display name of the attribute definition name assigned to the attribute';

COMMENT ON COLUMN grouper_perms_all_v.role_display_name IS 'role_display_name: display name of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_all_v.attribute_assign_delegatable IS 'attribute_assign_delegatable: if this assignment is delegatable or grantable: TRUE, FALSE, GRANT';

COMMENT ON COLUMN grouper_perms_all_v.enabled IS 'enabled: if this assignment is enabled: T, F';

COMMENT ON COLUMN grouper_perms_all_v.enabled_time IS 'enabled_time: the time (seconds since 1970) that this assignment will be enabled';

COMMENT ON COLUMN grouper_perms_all_v.disabled_time IS 'disabled_time: the time (seconds since 1970) that this assignment will be disabled';

COMMENT ON COLUMN grouper_perms_all_v.role_id IS 'role_id: id of role the subject is in, and that the permissions are assigned to';

COMMENT ON COLUMN grouper_perms_all_v.attribute_def_id IS 'attribute_def_id: id of the attribute definition';

COMMENT ON COLUMN grouper_perms_all_v.member_id IS 'member_id: id of the subject in the members table';

COMMENT ON COLUMN grouper_perms_all_v.attribute_def_name_id IS 'attribute_def_name_id: id of the attribute definition name';

COMMENT ON COLUMN grouper_perms_all_v.action_id IS 'action_id: id of the attribute assign action';

COMMENT ON COLUMN grouper_perms_all_v.membership_depth IS 'membership_depth: depth of membership, 0 is immediate';

COMMENT ON COLUMN grouper_perms_all_v.role_set_depth IS 'role_set_depth: depth of role hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_all_v.attr_def_name_set_depth IS 'attr_def_name_set_depth: depth of attribute def name set hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_all_v.attr_assign_action_set_depth IS 'attr_assign_action_set_depth: depth of action hierarchy, 0 is immediate';

COMMENT ON COLUMN grouper_perms_all_v.membership_id IS 'membership_id: id of the underlying membership';

COMMENT ON COLUMN grouper_perms_all_v.attribute_assign_id IS 'attribute_assign_id: id of the underlying attribute assign';

COMMENT ON COLUMN grouper_perms_all_v.permission_type IS 'permission_type: role or role_subject for assignment to role or to role subject pair';

COMMENT ON COLUMN grouper_perms_all_v.assignment_notes IS 'assignment_notes: notes on this assignment';

ALTER TABLE SUBJECTATTRIBUTE DROP constraint FK_SUBJECTATTR_SUBJECTID;

insert into grouper_ddl (id, object_name, db_version, last_updated, history) values ('91d903e636c04bcaaae652892b80db7b', 'Subject', 1, '2011/07/21 12:19:34', 
'2011/07/21 12:19:34: upgrade Subject from V0 to V1, ');
commit;

ALTER TABLE SUBJECTATTRIBUTE
    ADD CONSTRAINT fk_subjectattr_subjectid FOREIGN KEY (SUBJECTID) REFERENCES SUBJECT (SUBJECTID);

COMMENT ON TABLE subject IS 'sample subject table for grouper unit tests';

COMMENT ON COLUMN subject.subjectId IS 'subject id of row';

COMMENT ON COLUMN subject.subjectTypeId IS 'subject type e.g. person';

COMMENT ON COLUMN subject.name IS 'name of this subject';

COMMENT ON TABLE subjectattribute IS 'attribute data for each subject';

COMMENT ON COLUMN subjectattribute.subjectId IS 'subject id of row';

COMMENT ON COLUMN subjectattribute.name IS 'name of attribute';

COMMENT ON COLUMN subjectattribute.value IS 'value of attribute';

COMMENT ON COLUMN subjectattribute.searchValue IS 'search value (e.g. all lower)';

