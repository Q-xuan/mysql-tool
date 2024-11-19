CREATE TABLE `t_c_banquet_robot` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_area` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '地区id',
  `type` int(11) DEFAULT '0' COMMENT '类型',
  `belong` int(11) DEFAULT '0' COMMENT '从属',
  `name` varchar(255) DEFAULT '' COMMENT '地区名称',
  `simpleName` varchar(255) DEFAULT '' COMMENT 'client_简称',
  `sort` int(11) DEFAULT '0' COMMENT 'client_排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_battle_pass` (
  `id` int(11) NOT NULL,
  `phase` int(11) NOT NULL,
  `startTime` text NOT NULL,
  `endTime` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_banquet` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `seat` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `openCondition` text NOT NULL,
  `openCost` text NOT NULL,
  `openLimit` int(11) NOT NULL,
  `scoreMultiple` int(11) NOT NULL,
  `scoreLimit` int(11) NOT NULL,
  `ticket` text NOT NULL,
  `fullSeatGift` text NOT NULL,
  `popularity` int(11) NOT NULL,
  `enjoyGift` text NOT NULL,
  `rewards` text NOT NULL,
  `cookingScore` text NOT NULL,
  `robotGift` int(11) NOT NULL,
  `robotCondition` text NOT NULL,
  `robotCd` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_beauty_identity` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '美名ID',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT 'client_美名名字',
  `desc` varchar(255) NOT NULL DEFAULT '0' COMMENT 'client_美名描述',
  `icon` varchar(255) NOT NULL DEFAULT '0' COMMENT 'client_资源文件',
  `needInfluence` int(11) NOT NULL DEFAULT '0' COMMENT '所需美女魅力',
  `needAffinity` int(11) NOT NULL DEFAULT '0' COMMENT '所需美女演技',
  `needBeautyNum` int(11) NOT NULL DEFAULT '0' COMMENT '所需美女数量',
  `TvStudioShowEarnSpeed` int(11) NOT NULL DEFAULT '0' COMMENT '出演影视作品加成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_battle_pass_reward` (
  `id` int(11) NOT NULL,
  `lv` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `freeReward` text NOT NULL,
  `payReward` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_beauty` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '明星ID',
  `name` text COMMENT 'client_明星名称',
  `desc` text COMMENT 'client_明星简介',
  `dubbingDesc` text COMMENT 'client_明星描述',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_图片资源',
  `appearanceId` varchar(255) DEFAULT '' COMMENT 'client_形象坐标ID',
  `cartoonAppearanceId` varchar(255) DEFAULT '' COMMENT 'client_Q版形象坐标id',
  `occupation` int(11) NOT NULL DEFAULT '0' COMMENT '明星职业',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT 'client_性别',
  `quality` int(11) NOT NULL DEFAULT '0' COMMENT '明星品质',
  `influence` int(11) NOT NULL DEFAULT '0' COMMENT '明星初始魅力',
  `affinity` int(11) NOT NULL DEFAULT '0' COMMENT '明星初始亲和力',
  `baseIdentity` int(11) NOT NULL DEFAULT '0' COMMENT '明星初始名气等级',
  `canUndress` int(11) NOT NULL DEFAULT '0' COMMENT 'client_是否可脱衣',
  `getWay` varchar(255) DEFAULT '' COMMENT 'client_获取途径',
  `guideId` varchar(50) DEFAULT '' COMMENT 'client_剧情编号',
  `getShowType` int(11) DEFAULT '0' COMMENT 'client_获取后展示类型',
  `identitySkillId` int(11) NOT NULL DEFAULT '0' COMMENT '美名技能ID',
  `identitySkillUpdate` varchar(255) NOT NULL DEFAULT '' COMMENT '美名技能升级限制',
  `identitySound` text COMMENT '美名解锁语音',
  `order` int(11) DEFAULT '0' COMMENT 'client_排序字段',
  `unlockGuide` varchar(255) DEFAULT '0' COMMENT 'client_解锁对话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_beauty_relation` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '关联ID',
  `beautyId` int(11) NOT NULL DEFAULT '0' COMMENT '明星编号',
  `heroId` int(11) NOT NULL DEFAULT '0' COMMENT '关联人才编号',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT 'client_关系名称',
  `oppositeName` varchar(50) NOT NULL DEFAULT '0' COMMENT 'client_反向关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_beauty_skill` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `skillPos` int(11) NOT NULL DEFAULT '0' COMMENT '技能格',
  `desc` varchar(255) NOT NULL DEFAULT '0' COMMENT 'client_技能描述',
  `icon` varchar(255) NOT NULL DEFAULT '0' COMMENT 'client_图片资源',
  `needInfluence` int(11) NOT NULL DEFAULT '0' COMMENT '所需亲密度',
  `minValue` int(11) NOT NULL DEFAULT '0' COMMENT '加成下限',
  `maxValue` int(11) NOT NULL DEFAULT '0' COMMENT '加成上限',
  `occupation1` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职业1类店铺加成',
  `occupation2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职业2类店铺加成',
  `occupation3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职业3类店铺加成',
  `occupation4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职业4类店铺加成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bookstall_question` (
  `id` int(10) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL,
  `bookRight` int(10) NOT NULL,
  `bookWrong` int(10) NOT NULL,
  `customerGender` int(10) NOT NULL,
  `customerOld` varchar(255) NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL,
  `reward` varchar(255) NOT NULL DEFAULT '0',
  `customerDialogueText` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='书摊题库表';

CREATE TABLE `t_c_bussinesswar_dan` (
  `id` int(11) NOT NULL,
  `integral` int(11) DEFAULT NULL,
  `danReward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bussinesswar_cooperation` (
  `id` int(11) NOT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `output` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bookstall_book` (
  `id` int(11) NOT NULL COMMENT '编号',
  `businessId` int(11) NOT NULL COMMENT '业务ID',
  `name` varchar(255) NOT NULL COMMENT '书名',
  `skillId` int(11) NOT NULL COMMENT '技能ID',
  `studyNum` int(11) NOT NULL,
  `bookExp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bussinesswar_inspire` (
  `id` int(11) NOT NULL,
  `perBonus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bussinesswar_robot` (
  `id` int(11) NOT NULL,
  `talent` varchar(255) DEFAULT NULL,
  `combatEff` varchar(255) DEFAULT NULL,
  `name` text NOT NULL,
  `dan` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_bussinesswar_rank_reward` (
  `id` int(11) NOT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_car` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '座驾ID',
  `name` varchar(50) DEFAULT '0' COMMENT 'client_座驾名称',
  `carDesc` varchar(255) DEFAULT '0' COMMENT 'client_奖励说明',
  `desc` varchar(255) DEFAULT '0' COMMENT 'client_珍兽简介',
  `icon` varchar(50) DEFAULT '0' COMMENT 'client_图片资源',
  `appearanceId` varchar(255) DEFAULT '0' COMMENT 'client_形象坐标ID',
  `quality` int(11) DEFAULT '0' COMMENT '座驾品质',
  `defaultSkillCount` int(11) DEFAULT '0' COMMENT '初始技能数量',
  `upgradeConsumeCount` int(11) DEFAULT '0' COMMENT '升级消耗材料数量',
  `baseQualification` int(11) DEFAULT '0' COMMENT '初始资质',
  `addQualification` int(11) DEFAULT '0' COMMENT '每级增加资质',
  `recycleReward` varchar(255) DEFAULT '' COMMENT '回收获得材料',
  `canStudy` int(11) DEFAULT '0' COMMENT '是否可觉醒',
  `canReturn` tinyint(4) DEFAULT '0' COMMENT '是否可拆解',
  `order` int(11) DEFAULT '0' COMMENT 'client_图鉴排序',
  `getWay` varchar(255) DEFAULT '0' COMMENT 'client_获取途径',
  `bg` varchar(50) DEFAULT '0' COMMENT '背景',
  `bgSpinePos` varchar(50) DEFAULT '0' COMMENT '背景动效偏移',
  `hasBgSpine` int(11) DEFAULT '0' COMMENT '是否有背景动画',
  `hasShow` int(11) DEFAULT '0' COMMENT '是否有入场',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_car_skill` (
  `id` int(11) NOT NULL,
  `skillType` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL,
  `minValue` int(11) NOT NULL DEFAULT '0',
  `maxValue` int(11) NOT NULL DEFAULT '0',
  `initValue` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_chapter` (
  `id` int(11) NOT NULL,
  `moneyList` text,
  `abilityList` text,
  `expReward` text,
  `prestige` text,
  `completeReward` text,
  `baseInspireConsume` text,
  `eventsId` text,
  `num` int(11) DEFAULT NULL,
  `round` int(255) DEFAULT NULL,
  `template` int(255) DEFAULT NULL,
  `onhookExp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_chapter_event` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `rewards` text NOT NULL,
  `parLists` text NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_car_awaken` (
  `id` int(11) NOT NULL DEFAULT '0',
  `studyLv` int(11) NOT NULL DEFAULT '0',
  `consume` varchar(255) NOT NULL,
  `totalConsume` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_complex` (
  `id` int(11) NOT NULL DEFAULT '0',
  `materials` varchar(255) DEFAULT '',
  `composition` int(11) NOT NULL DEFAULT '0',
  `isShow` tinyint(4) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `isNotice` tinyint(4) DEFAULT '0',
  `needWarning` int(11) DEFAULT '0',
  PRIMARY KEY (`composition`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_chat_push_message` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '消息id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '消息类型',
  `param` varchar(255) NOT NULL DEFAULT '' COMMENT '额外参数',
  `channel` varchar(255) NOT NULL DEFAULT '' COMMENT '发送的频道',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_config` (
  `id` int(11) NOT NULL,
  `param` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_customer` (
  `id` int(11) NOT NULL COMMENT '顾客id',
  `name` varchar(255) DEFAULT '' COMMENT 'client_顾客名称',
  `getWay` varchar(255) DEFAULT '' COMMENT '解锁条件',
  `isShow` int(11) DEFAULT '0' COMMENT '是否图鉴收集展示',
  `goShopLimit` int(11) DEFAULT '0' COMMENT 'client_场景小人条件',
  `gender` int(11) DEFAULT '0' COMMENT '性别',
  `old` int(11) DEFAULT '0' COMMENT 'client_年龄段',
  `shape` int(11) DEFAULT '0' COMMENT 'client_体型',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_形象资源',
  `cartoonAppearanceId` varchar(255) DEFAULT '' COMMENT 'client_Q版形象坐标ID',
  `order` int(11) DEFAULT '0' COMMENT 'client_图鉴排序',
  `unlockReward` varchar(255) DEFAULT '' COMMENT '解锁奖励',
  `age` text COMMENT 'client_岁数',
  `hobby` text COMMENT 'client_爱好',
  `detailDesc` text COMMENT 'client_顾客详细描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_disco_dance_stage` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '关卡ID',
  `needPreStar` int(11) NOT NULL DEFAULT '0' COMMENT '上一关的可通关星数',
  `boss` int(11) NOT NULL DEFAULT '0' COMMENT '0-普通关, 1-BOSS战',
  `hard` int(11) NOT NULL DEFAULT '0' COMMENT '难度系数',
  `bpg` int(11) NOT NULL DEFAULT '0' COMMENT 'bpm(每分钟多少拍)',
  `addNotePro` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '第N拍产出音符几率（千分比）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_discount_shop` (
  `id` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `content` varchar(255) NOT NULL DEFAULT '',
  `params` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_dance_hall_setting` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '设施Id',
  `region` int(11) NOT NULL DEFAULT '0' COMMENT '所属区域',
  `skillId` int(11) NOT NULL DEFAULT '0' COMMENT '技能效果',
  `upgradeItem` int(11) NOT NULL DEFAULT '0' COMMENT '升级消耗材料',
  `upgradeType` int(11) NOT NULL DEFAULT '0' COMMENT '升级消耗数量类型',
  `upgradePar` int(11) NOT NULL DEFAULT '0' COMMENT '升级消耗千分比',
  `unlock` int(11) NOT NULL DEFAULT '0' COMMENT '知名度解锁',
  `guest` int(11) NOT NULL DEFAULT '0' COMMENT '增加客人上限',
  `wellKnown` varchar(255) NOT NULL DEFAULT '' COMMENT '知名度获得',
  `money` varchar(255) NOT NULL DEFAULT '' COMMENT '货币获得',
  `preBuildingId` varchar(255) NOT NULL DEFAULT '' COMMENT '前置设施Id',
  `canUnlock` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_decoration` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '装饰ID',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '装饰类型',
  `littleType` int(11) NOT NULL DEFAULT '0' COMMENT '装饰小类型',
  `name` text COMMENT 'client_装饰名称',
  `desc` text COMMENT 'client_装饰描述',
  `quailty` int(11) NOT NULL DEFAULT '0' COMMENT '品质',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '装饰性别',
  `isFree` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否初始解锁',
  `player` int(11) NOT NULL DEFAULT '0' COMMENT '所属主角',
  `comboUnlock` varchar(255) DEFAULT '' COMMENT '捆绑解锁ArrayInt_parse(=)',
  `params` varchar(255) DEFAULT '' COMMENT '补充参数',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_图片资源路径',
  `appearanceId` varchar(255) DEFAULT '' COMMENT 'client_形象坐标ID',
  `sortType` int(11) DEFAULT '0' COMMENT 'client_排序分类',
  `sort` int(11) DEFAULT '0' COMMENT 'client_排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_explore_event` (
  `id` int(11) NOT NULL COMMENT '事件id',
  `name` varchar(50) DEFAULT '' COMMENT '事件名称',
  `image` varchar(255) DEFAULT '' COMMENT '事件插图',
  `eventType` int(11) NOT NULL COMMENT '事件类型',
  `rewardList` varchar(255) DEFAULT '' COMMENT '奖励列表',
  `additionalPar` varchar(255) DEFAULT '' COMMENT '额外参数',
  `beautyId` varchar(255) DEFAULT '' COMMENT '美女ID',
  `copywritterPar` text COMMENT '文案参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_explore_partner_upgrade` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `addition` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_explore_partner` (
  `id` int(11) NOT NULL,
  `unlockType` int(11) NOT NULL,
  `unlockNumber` int(11) NOT NULL,
  `shopId` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_explore_place` (
  `id` int(11) NOT NULL COMMENT '地点id',
  `name` varchar(50) DEFAULT '' COMMENT 'client_地点名称',
  `fontImage` varchar(255) DEFAULT '' COMMENT 'client_艺术字资源名',
  `arriveFontImage` varchar(255) DEFAULT '' COMMENT 'client_到达艺术字资源名',
  `image` varchar(255) DEFAULT '' COMMENT '地点图片资源名',
  `placePos` varchar(255) DEFAULT '' COMMENT '地点坐标',
  `imgPos` varchar(255) DEFAULT '' COMMENT '图标位置',
  `imgSize` varchar(255) DEFAULT '' COMMENT '图标尺寸',
  `namePos` varchar(255) DEFAULT '' COMMENT '牌匾位置',
  `unlock` int(11) NOT NULL COMMENT '解锁地点次数',
  `unlockReward` text COMMENT '解锁奖励 MapIntBigInt parse(;#=)',
  `weight` int(11) NOT NULL COMMENT '到达权重',
  `partners` text COMMENT '合作商 ArrayInt parse(|) ',
  `beautPr` int(11) NOT NULL DEFAULT '0' COMMENT '邂逅美女概率(千分比）',
  `beautEvents` text COMMENT '美女事件 MapInt2 parse(|#;)',
  `normalEvents` text COMMENT '非美女事件 parse(|#;) MapInt2',
  `encounterBeauty` text COMMENT '可邂逅的艺人 parse(|) ArrayInt',
  `dinnerCost` int(11) NOT NULL COMMENT '聚餐消耗次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_explore_snack` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(50) DEFAULT '' COMMENT '名称',
  `quality` int(11) DEFAULT '0' COMMENT 'client_小吃品质',
  `fontImage` varchar(255) DEFAULT '0' COMMENT 'client_艺术字资源名',
  `icon` varchar(255) DEFAULT '0' COMMENT '图标',
  `place` int(11) NOT NULL COMMENT '对应地点',
  `unlock` int(11) DEFAULT '0' COMMENT '解锁次数',
  `increasePower` int(11) NOT NULL COMMENT '增加的能力值',
  `unlockReward` varchar(255) DEFAULT '' COMMENT '解锁奖励 MapIntBigInt parse(;#=)',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_小吃简介文案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fame_hall` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `fameName` varchar(255) NOT NULL,
  `titleId` int(11) NOT NULL,
  `reward` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_fish` (
  `id` int(11) NOT NULL,
  `preFishId` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `unitPrice` int(11) NOT NULL,
  `skillId` int(11) NOT NULL,
  `canUnlock` tinyint(2) NOT NULL,
  `unlock` varchar(255) NOT NULL,
  `upgradePar` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_first_charge` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `reward` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_area` (
  `id` int(11) NOT NULL,
  `unlock` int(11) NOT NULL,
  `preAreaId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_game` (
  `id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_process` (
  `id` int(11) NOT NULL,
  `unlock` int(11) NOT NULL,
  `preSkillId` int(11) NOT NULL,
  `upgradeItem` int(11) NOT NULL,
  `wellKnown` varchar(255) NOT NULL,
  `fishUnitPrice` varchar(255) NOT NULL,
  `upgradePar` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_process_level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `consume` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fish_store_level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `stockCapacity` int(11) NOT NULL,
  `stockStep` int(11) NOT NULL,
  `startSkillLevel` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fund` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `cycle` int(11) NOT NULL,
  `shopID` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_fund_reward` (
  `id` int(11) NOT NULL,
  `fundId` int(11) NOT NULL,
  `param` int(11) NOT NULL,
  `freeReward` varchar(255) NOT NULL,
  `payReward` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture` (
  `id` int(11) NOT NULL COMMENT '家具id',
  `name` varchar(255) DEFAULT '' COMMENT '家具名称',
  `furnitureType` int(11) DEFAULT '0' COMMENT '家具类型',
  `quality` int(11) NOT NULL COMMENT '物品品质',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_家具描述',
  `house` int(11) DEFAULT '0' COMMENT '所属房子',
  `room` int(11) DEFAULT '0' COMMENT '所属房间',
  `resType` int(11) DEFAULT '0' COMMENT 'client_家具场景资源类型',
  `resUIType` int(11) DEFAULT '0' COMMENT 'client_家具UI资源类型',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_形象',
  `baseAddition` varchar(255) DEFAULT '0' COMMENT '基础加成toInt',
  `extraAddition` varchar(255) DEFAULT '' COMMENT '精品加成MapInt2',
  `levelLimit` int(11) DEFAULT '0' COMMENT '等级上限',
  `comfortPoint` int(11) DEFAULT '0' COMMENT '家具舒适度',
  `comfortPointUp` int(11) DEFAULT '0' COMMENT '舒适度成长值',
  `shopAppear` varchar(255) DEFAULT '' COMMENT '商店入库条件',
  `boxAppear` varchar(255) DEFAULT '' COMMENT '家具宝箱入库条件',
  `initialUse` int(11) DEFAULT '0' COMMENT '通过房产解锁首次获得时状态',
  `order` int(11) DEFAULT '0' COMMENT 'client_排序',
  `getWay` varchar(255) DEFAULT '' COMMENT 'client_获取途径（显示跳转用）',
  `useAnimationType` int(11) DEFAULT '0' COMMENT 'client_搬运动画类型',
  `enterPath` varchar(255) DEFAULT '' COMMENT 'client_搬运工进入路线',
  `leavePath` varchar(255) DEFAULT '' COMMENT 'client_搬运工离开路线',
  `smokeType` int(11) DEFAULT '0' COMMENT 'client_烟雾动效类型',
  `smokeRate` int(11) DEFAULT '0' COMMENT 'client_烟雾动效比例（百分比）',
  `spinePos` varchar(255) DEFAULT '' COMMENT 'client_家具位置坐标',
  `clickPos` varchar(255) DEFAULT '' COMMENT 'client_点击区域锚点坐标',
  `clickSize` varchar(255) DEFAULT '' COMMENT 'client_点击区域大小',
  `sort` int(11) DEFAULT '0' COMMENT 'client_家具显示层级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture_shop` (
  `id` int(11) NOT NULL,
  `weight1` int(11) NOT NULL,
  `weight2` int(11) NOT NULL,
  `weight3` int(11) NOT NULL,
  `weight4` int(11) NOT NULL,
  `weight5` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture_box` (
  `id` int(11) NOT NULL,
  `weight1` int(11) NOT NULL,
  `weight2` int(11) NOT NULL,
  `weight3` int(11) NOT NULL,
  `weight4` int(11) NOT NULL,
  `weight5` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture_group` (
  `id` int(11) NOT NULL COMMENT '组合id',
  `name` varchar(255) DEFAULT '' COMMENT 'client_组合名称',
  `cardIds` varchar(255) DEFAULT '' COMMENT '组合内家具ArrayInt',
  `additionNeed` varchar(255) DEFAULT '' COMMENT '组合加成激活条件ArrayInt2_parse(|#=)',
  `addition` varchar(255) DEFAULT '' COMMENT '组合加成ArrayInt2_parse(|#=)',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_组合描述',
  `heroGroupShow` int(11) DEFAULT '0' COMMENT 'client_人才组合显示',
  `icon` int(11) DEFAULT '0' COMMENT 'client_图标资源',
  `order` int(11) DEFAULT '0' COMMENT 'client_排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_goods_bag` (
  `id` int(11) NOT NULL DEFAULT '0',
  `boxId` int(11) NOT NULL DEFAULT '0',
  `itemId` int(11) NOT NULL DEFAULT '0',
  `minNum` int(11) NOT NULL DEFAULT '0',
  `maxNum` int(11) NOT NULL DEFAULT '0',
  `randomType` int(11) NOT NULL DEFAULT '0',
  `probability` int(11) NOT NULL DEFAULT '0',
  `isNotice` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture_upgrade` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `consume` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_furniture_type` (
  `id` int(11) NOT NULL COMMENT '类型id',
  `typeName` varchar(255) DEFAULT '' COMMENT '家具类型名称',
  `display` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示在列表',
  `frontFurniture` int(11) DEFAULT '0' COMMENT '前置家具类型',
  `isDown` int(11) DEFAULT '0' COMMENT '是否可卸下',
  `order` int(11) DEFAULT '0' COMMENT 'client_排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hair_skill_upgrade` (
  `id` int(11) NOT NULL COMMENT '发型ID',
  `skillId` int(11) NOT NULL COMMENT '技能ID',
  `skillLv` int(11) NOT NULL COMMENT '技能等级',
  `haircutStarNum` int(11) NOT NULL DEFAULT '0' COMMENT '累计获得星级数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hair` (
  `id` int(11) NOT NULL COMMENT '发型id',
  `name` varchar(255) NOT NULL COMMENT '发型名称',
  `difficulty` int(11) NOT NULL COMMENT '难度星级',
  `weight` int(11) NOT NULL COMMENT '出现权重',
  `sort` int(11) NOT NULL COMMENT '图鉴排序',
  `unlockType` int(11) NOT NULL COMMENT '解锁条件类型',
  `unlockParams` int(11) NOT NULL COMMENT '解锁条件参数',
  `gender` int(11) NOT NULL COMMENT '顾客性别限制',
  `colour` varchar(255) NOT NULL COMMENT '发型颜色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_happy52_enemy` (
  `id` int(11) NOT NULL COMMENT 'id',
  `abilityHigher` int(11) NOT NULL COMMENT '能力比[排名+1]机器人高多少(%)',
  `enemyFirst` int(11) NOT NULL COMMENT '对手1(展示[排名+N])',
  `enemySecond` int(11) NOT NULL COMMENT '对手2',
  `enemyThird` int(11) NOT NULL COMMENT '对手3',
  `enemyFourth` int(11) NOT NULL COMMENT '对手4',
  `enemyRanking` int(11) NOT NULL COMMENT '对手排名范围',
  `inRanking` int(11) NOT NULL COMMENT '玩家所在段内排名',
  `level` int(11) NOT NULL COMMENT '段位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_happy52_hero_question` (
  `id` int(11) NOT NULL COMMENT 'id',
  `question` text COMMENT '题目',
  `answer` text COMMENT '正确答案|错误回答1|错误回答2|错误回答3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_happy52_ranking` (
  `id` int(11) NOT NULL COMMENT '排名序号',
  `levelType` int(11) NOT NULL COMMENT '段位类型：1,正常组；2,新手组(只打机器人)；3,初始组',
  `level` int(11) NOT NULL COMMENT '段位',
  `levelName` text NOT NULL COMMENT '段位名称',
  `ranking` int(11) NOT NULL COMMENT '该段位下第x名',
  `winnerReward` text COMMENT '突破排名奖励_MapIntLong',
  `rankingRewardSpe` int(11) NOT NULL COMMENT '排名奖励的类型0,道具;1,家具',
  `rankingReward` text COMMENT '排名奖励家具_MapIntLong',
  `rankingRewardHouse` int(11) NOT NULL COMMENT '排名奖励房产',
  `dailyReward` text COMMENT '排名_每日奖励_MapIntLong',
  `npcName` text COMMENT '机器人名称',
  `npcPic` text COMMENT '机器人头像',
  `npcImage` text NOT NULL COMMENT '机器人形象',
  `npcLevel` int(11) DEFAULT '0' COMMENT '机器人身份等级',
  `monsterList` text COMMENT '怪物列表_ArrayInt',
  `monsterAbilityList` text COMMENT '怪物实力列表_ArrayLong',
  `answerReward` text COMMENT '人才求助答对奖励_MapIntLong',
  `answerRewardWrong` text NOT NULL COMMENT '人才求助答错奖励_MapIntLong',
  `earnSpeedAddition` int(11) NOT NULL COMMENT '店铺收入加成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hero` (
  `id` int(11) NOT NULL COMMENT '人才ID',
  `name` text COMMENT 'client_人才名称',
  `desc` text COMMENT 'client_人才简介',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_图片资源',
  `appearanceId` varchar(255) DEFAULT '' COMMENT 'client_形象坐标ID',
  `cartoonAppearanceId` varchar(255) DEFAULT '' COMMENT 'client_Q版形象坐标ID',
  `sound` varchar(255) DEFAULT '' COMMENT 'client_配音路径',
  `quality` int(255) DEFAULT '0' COMMENT '人才品质',
  `occupation` int(255) DEFAULT '0' COMMENT '人才职业',
  `qualification` int(255) DEFAULT '0' COMMENT '人才初始天赋',
  `baseAbility` int(255) DEFAULT '0' COMMENT '人才初始能力值',
  `beautyId` int(255) DEFAULT '0' COMMENT 'client_是否美女',
  `likeItem` varchar(255) DEFAULT '' COMMENT '喜好道具',
  `skillsList` varchar(255) DEFAULT '' COMMENT '技能列表',
  `unlockSkillList` varchar(255) NOT NULL DEFAULT '0' COMMENT '解锁技能列表',
  `talentsList` varchar(255) DEFAULT '' COMMENT '深造列表',
  `canStage` int(255) DEFAULT '0' COMMENT '是否可深造',
  `maxLevelSkillsList` varchar(255) NOT NULL DEFAULT '' COMMENT '（可被其他系统提升的）资质类技能等级上限列表',
  `combId` int(11) DEFAULT '0' COMMENT '组合编号',
  `getWay` varchar(255) DEFAULT '' COMMENT 'client_获取途径',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT 'client_排序编号',
  `gender` int(11) NOT NULL DEFAULT '0' COMMENT 'client_性别',
  `unlockGuide` varchar(255) DEFAULT '' COMMENT 'client_解锁对话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hero_comb` (
  `id` int(11) NOT NULL COMMENT '组合ID',
  `desc` text COMMENT 'client_组合描述',
  `combSkillId` int(11) NOT NULL COMMENT '组合技能ID',
  `skillId` varchar(255) NOT NULL COMMENT '个人技能ID',
  `advancedSkillId` varchar(255) NOT NULL COMMENT '进阶技能',
  `type` int(11) NOT NULL COMMENT '组合类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hero_stage` (
  `id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `needPatronsLevel` int(11) NOT NULL DEFAULT '0',
  `consume` varchar(255) NOT NULL DEFAULT '' COMMENT '1 MapIntLong',
  `addAbility` bigint(20) NOT NULL DEFAULT '0',
  `addAbilityPer` int(11) NOT NULL DEFAULT '0',
  `addSkillId` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_hero_promotion` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '晋升id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '晋升类型',
  `paramList` varchar(255) NOT NULL DEFAULT '' COMMENT '晋升参数列表',
  `nextId` int(11) NOT NULL DEFAULT '0' COMMENT '下次晋升Id',
  `characterId` int(11) NOT NULL DEFAULT '0' COMMENT '晋升角色id',
  `quality` int(11) NOT NULL DEFAULT '0' COMMENT '晋升后品质',
  `baseAbility` int(11) NOT NULL DEFAULT '0' COMMENT '初始能力',
  `qualification` int(11) NOT NULL DEFAULT '0' COMMENT '人才初始天赋',
  `skillsList` varchar(255) NOT NULL DEFAULT '' COMMENT '技能列表',
  `talentsList` varchar(255) NOT NULL DEFAULT '' COMMENT '深造列表',
  `canStage` int(11) NOT NULL DEFAULT '0' COMMENT '是否可深造',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_house_level` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `level` int(11) DEFAULT '0' COMMENT '舒适度等级',
  `comfortPointNeed` int(11) DEFAULT '0' COMMENT '升到下级所需舒适度',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_图标',
  `addition` int(11) DEFAULT '0' COMMENT '店铺赚速加成(千分比）',
  `storeUpgradeDiscount` int(11) DEFAULT '0' COMMENT '店铺升级消耗减免(千分比）',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_舒适等级描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_herobreak` (
  `id` int(11) NOT NULL,
  `nums` int(255) DEFAULT NULL,
  `maxLevel` int(255) DEFAULT NULL,
  `consume` varchar(255) DEFAULT NULL COMMENT '1 MapIntLong',
  `aptitudeAdd` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_heroupgrade` (
  `id` int(11) NOT NULL,
  `level` int(255) DEFAULT NULL,
  `consume` varchar(255) DEFAULT NULL COMMENT '1 MapIntLong',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_house` (
  `id` int(11) NOT NULL COMMENT '房产id',
  `name` varchar(255) DEFAULT '' COMMENT '房产名称',
  `icon` varchar(255) DEFAULT '' COMMENT 'icon',
  `room` varchar(255) DEFAULT '' COMMENT '包含房间ArrayIntparse(;)',
  `getWay` varchar(255) DEFAULT '' COMMENT '解锁条件',
  `unlock` varchar(255) DEFAULT '' COMMENT '解锁条件',
  `defaultRoom` int(11) NOT NULL COMMENT 'client_默认房间',
  `order` int(11) NOT NULL COMMENT 'client_排序',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_描述',
  `showLv` int(11) NOT NULL COMMENT '显示优先级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_language` (
  `key` varchar(128) NOT NULL,
  `language` varchar(36) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`key`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_identity` (
  `id` int(11) NOT NULL COMMENT '身份ID',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '级别',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'client_身份名称',
  `needPrestige` text NOT NULL COMMENT '下级所需声望toBigInteger',
  `needEarnSpeed` text NOT NULL COMMENT '下级所需赚速toBigInteger',
  `dailyIngots` int(11) NOT NULL DEFAULT '0' COMMENT '每日元宝',
  `patronsStrengthAddition` int(11) NOT NULL DEFAULT '0' COMMENT '门客实力加成千分比',
  `beautyAddPublicityTimes` int(11) DEFAULT '0' COMMENT '明星宣传上限',
  `exploreManualTimes` int(11) NOT NULL DEFAULT '0' COMMENT '考察次数上限',
  `TvStudioEarnSpeed` varchar(255) NOT NULL COMMENT '影视作品基础身份赚钱',
  `photographTimes` int(11) NOT NULL DEFAULT '0' COMMENT '拍摄次数上限',
  `addRewards` varchar(255) NOT NULL COMMENT '升级额外奖励MapIntLong',
  `decorateRewards` varchar(255) DEFAULT NULL COMMENT '身份时装奖励MapIntLong',
  `text` varchar(255) DEFAULT '' COMMENT 'client_升级文案',
  `offlineRewardMax` bigint(20) NOT NULL COMMENT '离线收益时间上限（s)',
  `restaurantMax` int(11) NOT NULL DEFAULT '0' COMMENT '餐馆收益时间上限（s)',
  `workshopOtExp` int(11) NOT NULL DEFAULT '0' COMMENT '作坊赶工经验基数',
  `breakfastIncome` int(11) NOT NULL DEFAULT '0' COMMENT '早餐摊出售早餐基础单价',
  `breakfastNeed` varchar(255) NOT NULL DEFAULT '' COMMENT 'client_早餐摊顾客需求份数',
  `smallShopIncome` int(11) DEFAULT '0' COMMENT '小卖部卖出商品基础单价',
  `mineRewardAddPro` int(11) NOT NULL DEFAULT '0' COMMENT '矿场收益玩家等级加成千分比',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_item` (
  `id` int(11) NOT NULL COMMENT '物品ID',
  `name` text COMMENT 'client_物品名称',
  `desc` text COMMENT 'client_物品描述',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_物品图标',
  `quality` int(11) DEFAULT '0' COMMENT 'client_物品品质',
  `itemType` int(11) DEFAULT '0' COMMENT '物品类别',
  `params` varchar(255) DEFAULT '' COMMENT '参数列表',
  `extendParam` varchar(255) DEFAULT '' COMMENT '扩展参数',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `maxNum` int(11) DEFAULT '0' COMMENT '叠加上限',
  `useMaxNum` int(11) DEFAULT '0' COMMENT '单次使用上限',
  `getWay` varchar(255) DEFAULT '' COMMENT 'client_获取途径',
  `isHidden` int(11) DEFAULT '0' COMMENT '背包是否隐藏',
  `canBagUse` int(11) DEFAULT '0' COMMENT '是否背包可使用',
  `bagTab` int(11) DEFAULT '0' COMMENT '背包显示分页',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_lottery_reward` (
  `id` int(11) NOT NULL,
  `reward` varchar(255) NOT NULL COMMENT 'MapIntBigInt',
  `weight` int(11) NOT NULL,
  `drawTimes` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mainbuilding` (
  `id` int(11) NOT NULL,
  `type` int(255) NOT NULL,
  `systemId` int(11) NOT NULL,
  `position` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `occupation` int(11) NOT NULL,
  `showIcon` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '0',
  `spinePos` varchar(255) NOT NULL DEFAULT '0',
  `smokePos` varchar(255) NOT NULL DEFAULT '0',
  `smokeScale` int(11) NOT NULL,
  `picSize` varchar(255) NOT NULL DEFAULT '0',
  `clickPos` varchar(255) NOT NULL DEFAULT '0',
  `clickSize` varchar(255) NOT NULL DEFAULT '0',
  `titlePos` varchar(255) NOT NULL DEFAULT '0',
  `unlockWorkshopId` int(11) NOT NULL,
  `consume` varchar(255) NOT NULL,
  `storeLevelUpEarning` int(11) NOT NULL,
  `storeLevelUpCost` int(11) NOT NULL,
  `cleanCount` int(11) NOT NULL,
  `spineResource` varchar(255) NOT NULL DEFAULT '0',
  `cd` varchar(255) NOT NULL DEFAULT '0',
  `customer` text,
  `eventCustorPro` int(11) NOT NULL DEFAULT '0',
  `eventCustorMax` int(11) NOT NULL DEFAULT '0',
  `eventCustorAmount` varchar(255) NOT NULL,
  `eventCustorRefesh` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_limitedtask` (
  `id` int(11) NOT NULL,
  `littleType` varchar(255) NOT NULL COMMENT '任务子类ArrayInt_parse(;)',
  `startTime` varchar(255) NOT NULL COMMENT '起始时间',
  `endTime` varchar(255) NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mainsceneevent` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `conditionType` int(11) DEFAULT '0',
  `value` varchar(255) DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `weight` int(11) DEFAULT '0',
  `consume` varchar(255) DEFAULT '' COMMENT ' MapIntLong',
  `rewards` varchar(255) DEFAULT '0',
  `showParam` varchar(255) DEFAULT '',
  `mapPosition` varchar(255) DEFAULT '',
  `expandParam` varchar(255) DEFAULT '',
  `sound` varchar(255) DEFAULT '',
  `desc` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_millionaire` (
  `id` bigint(20) NOT NULL,
  `income` varchar(255) NOT NULL,
  `serverReward` varchar(255) NOT NULL,
  `firstReward` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mine_exhibit` (
  `id` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `upgradeType` int(11) NOT NULL,
  `levelLimit` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `scoreUpgrade` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mine` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `normalExploratePro` int(11) NOT NULL,
  `seniorExploratePro` int(11) NOT NULL,
  `baseReward` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `othersNum` int(11) NOT NULL,
  `radio` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mine_event` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `reward` text NOT NULL,
  `unlockNeed` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_mine_museum` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `scoreNeed` int(11) NOT NULL,
  `addition` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_minigame_fruitmachine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `integral` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_oldgoods` (
  `id` int(11) NOT NULL,
  `unlock` varchar(255) DEFAULT NULL,
  `buff` int(11) DEFAULT NULL,
  `numType` int(11) DEFAULT NULL,
  `generalComment` varchar(2000) NOT NULL DEFAULT '',
  `specialComment` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_promote` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '次数',
  `upgradeItem` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '单次消耗资源',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `t_c_photo_question` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT '0',
  `style` int(11) DEFAULT '0',
  `styleDesc` varchar(255) DEFAULT '0',
  `score` varchar(255) DEFAULT '0',
  `reward` varchar(255) DEFAULT '0',
  `condition` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '0',
  `customerType` int(11) DEFAULT '0',
  `rewardHero` int(11) DEFAULT '0',
  `rewardBeauty` int(11) DEFAULT '0',
  `customerGender` int(11) DEFAULT '0',
  `customerOld` varchar(255) DEFAULT '0',
  `customerDialogueText` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_promote_department` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '部门类型',
  `skill` int(11) NOT NULL DEFAULT '0' COMMENT '技能id',
  `event` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '特殊事件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `t_c_promote_reward` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '部门类型',
  `levelRange` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '等级范围',
  `rewards` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '奖励',
  `beautyRewards` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '艺人奖励',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `t_c_radio` (
  `id` int(11) NOT NULL COMMENT 'id',
  `type` int(11) NOT NULL COMMENT '跑马灯触发类型',
  `level` int(11) NOT NULL COMMENT '所属段位',
  `rankingMax` int(11) NOT NULL COMMENT '段位内最大名次',
  `rankingMin` int(11) NOT NULL COMMENT '段位内最小名次',
  `radioLimit` int(11) NOT NULL COMMENT '上广播需超越名次',
  `desc` text COMMENT 'client_跑马灯内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_random_nick_name` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `gender` int(11) NOT NULL DEFAULT '1' COMMENT '性别，1男2女',
  `type` int(11) NOT NULL COMMENT '类型，1姓2名',
  `text` varchar(255) NOT NULL COMMENT '文本内容',
  `probability` int(11) NOT NULL COMMENT '权重',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_restaurant_device` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `unlockTask` int(11) NOT NULL,
  `dailyRewardAdd` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_restaurant_food` (
  `id` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `unlockTask` varchar(255) NOT NULL,
  `upgradeParam` varchar(255) NOT NULL,
  `baseMoneyIncome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_restaurant_level` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `upgradeNeed` int(11) NOT NULL,
  `baseIncome` int(11) NOT NULL,
  `banquetAdd` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_second_charge` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `reward` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_room` (
  `id` int(11) NOT NULL COMMENT '房间id',
  `name` varchar(255) DEFAULT '' COMMENT '房间名称',
  `belongHouse` int(11) NOT NULL DEFAULT '0' COMMENT '所属房产',
  `furnitureType` varchar(255) DEFAULT '' COMMENT '包含家具类型parse(;)ArrayInt',
  `originalFurniture` varchar(255) DEFAULT '' COMMENT '自带家具parse(;)ArrayInt',
  `popup` int(11) DEFAULT '0' COMMENT '是否弹窗提示自带家具',
  `isFree` int(11) NOT NULL DEFAULT '0' COMMENT '是否初始解锁',
  `getWay` varchar(255) DEFAULT '' COMMENT 'client_解锁条件',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_房间图标',
  `order` int(11) DEFAULT '0' COMMENT 'client_排序',
  `cleanCount` int(11) NOT NULL DEFAULT '0' COMMENT '房间清扫所需数量',
  `initialPosition` int(11) NOT NULL DEFAULT '0' COMMENT '初始屏幕位置',
  `bgParam` varchar(255) DEFAULT '' COMMENT 'client_背景图参数',
  `carrierRate` varchar(255) DEFAULT '' COMMENT 'client_搬运工缩放比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shop` (
  `id` int(11) NOT NULL DEFAULT '0',
  `rechargeId` int(11) NOT NULL DEFAULT '0' COMMENT '充值项编号',
  `name` varchar(255) NOT NULL DEFAULT '',
  `shopType` int(11) NOT NULL DEFAULT '0',
  `reward` varchar(255) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT '购买类别',
  `price` varchar(255) NOT NULL,
  `oldPrice` varchar(255) NOT NULL DEFAULT '',
  `priceAdd` int(11) NOT NULL DEFAULT '0',
  `isDouble` int(11) NOT NULL DEFAULT '0' COMMENT '是否首购翻倍',
  `buyLimitType` int(11) NOT NULL DEFAULT '0',
  `buyLimit` int(11) NOT NULL DEFAULT '0' COMMENT '限购数量',
  `sort` int(11) NOT NULL,
  `param` varchar(255) NOT NULL DEFAULT '',
  `returnIngots` int(11) NOT NULL DEFAULT '0',
  `pointSign` varchar(255) NOT NULL DEFAULT '',
  `isShow` tinyint(4) NOT NULL DEFAULT '0',
  `vipLimit` int(11) NOT NULL COMMENT 'vip限制',
  `buyLimitParam` varchar(255) NOT NULL,
  `vipExp` int(11) DEFAULT NULL,
  `firstreturnIngots` varchar(255) NOT NULL DEFAULT '' COMMENT '首充返回元宝',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shopgame_xiushuiguan` (
  `id` int(11) NOT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shop_game_buff` (
  `id` int(11) NOT NULL,
  `gameID` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `unlock` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `stage` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shuihuka` (
  `id` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `skill` varchar(255) DEFAULT NULL,
  `levelMax` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `unlockNeed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shuihuka_group` (
  `id` int(11) NOT NULL,
  `cardIds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_sign_text` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_skill` (
  `id` int(11) NOT NULL COMMENT '技能ID',
  `name` varchar(255) DEFAULT '' COMMENT 'client_技能名称',
  `desc` text COMMENT 'client_技能描述',
  `icon` varchar(255) DEFAULT '' COMMENT 'client_技能图标',
  `stars` int(255) DEFAULT '0' COMMENT '星级',
  `type` int(255) DEFAULT '0' COMMENT '类型',
  `params` varchar(255) DEFAULT '' COMMENT '效果参数列表',
  `upgradeParams` varchar(255) DEFAULT '' COMMENT '升级效果参数列表',
  `maxLevel` int(255) DEFAULT '0' COMMENT '升级限制',
  `upgradeItem` varchar(255) DEFAULT '' COMMENT '升级消耗材料',
  `upgradeType` varchar(255) DEFAULT '' COMMENT '升级消耗数量类型',
  `successRate` int(255) DEFAULT '0' COMMENT '升级成功概率',
  `sort` int(255) DEFAULT '0' COMMENT 'client_排序',
  `classification` int(255) DEFAULT '0' COMMENT 'client_技能分类',
  `littleClassification` int(255) DEFAULT '0' COMMENT 'client_技能小分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_shuihuka_upgrade` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `consume` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_skillupgrade` (
  `id` int(11) NOT NULL,
  `upgradeType` int(255) DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `consume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_skin` (
  `id` int(11) NOT NULL COMMENT '皮肤ID',
  `type` int(11) DEFAULT '0' COMMENT '皮肤类型',
  `name` varchar(255) DEFAULT '' COMMENT '皮肤名称',
  `desc` varchar(255) DEFAULT '' COMMENT 'client_皮肤描述',
  `icon` varchar(255) DEFAULT '' COMMENT '皮肤图片资源',
  `sound` varchar(255) DEFAULT '' COMMENT '皮肤配音',
  `appearanceId` varchar(255) DEFAULT '' COMMENT '皮肤形象',
  `quality` int(11) DEFAULT '0' COMMENT '皮肤品质',
  `tag` int(11) DEFAULT '0' COMMENT '皮肤标签',
  `belongRole` int(11) DEFAULT '0' COMMENT '所属角色ID',
  `skinEffect` varchar(255) DEFAULT '' COMMENT '皮肤技能',
  `sortType` int(11) DEFAULT '0' COMMENT '排序分类',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `skillsParam` varchar(255) DEFAULT '' COMMENT '技能参数',
  `params` varchar(255) DEFAULT '' COMMENT '额外参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_small_shop_goods` (
  `id` int(11) NOT NULL COMMENT '序号',
  `level` int(11) NOT NULL COMMENT '店铺等级',
  `maxCount` int(11) NOT NULL COMMENT '进货次数存储上限',
  `minGroupCount` int(11) NOT NULL COMMENT '进货中每组货最小数量',
  `maxGroupCount` int(11) NOT NULL COMMENT '进货中每组货最大数量',
  `enterGoodsCount` int(11) NOT NULL COMMENT '一键进货总数',
  `foodCellCount` int(11) NOT NULL COMMENT '零食柜每格数量',
  `toyCellCount` int(11) NOT NULL COMMENT '玩具柜每格数量',
  `iceCellCount` int(11) NOT NULL COMMENT '冰柜每格数量',
  `penCellCount` int(11) NOT NULL COMMENT '文具柜每格数量',
  PRIMARY KEY (`level`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_square` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `openType` int(11) DEFAULT NULL,
  `openTime` int(11) DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_square_rank_reward` (
  `id` int(11) NOT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `reward` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_square_enemy` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `baseAbility` bigint(20) DEFAULT NULL,
  `winReward` varchar(255) DEFAULT NULL,
  `ifRadio` int(11) DEFAULT '0' COMMENT '是否触发跑马灯',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_store_book_question` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `bookRight` int(11) NOT NULL,
  `bookWrong` int(11) NOT NULL,
  `reward` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_store_trash` (
  `id` int(11) NOT NULL COMMENT '编号唯一',
  `buildId` int(11) DEFAULT '0' COMMENT '店铺id',
  `roomId` int(11) DEFAULT '0' COMMENT 'client_房间id',
  `type` int(11) DEFAULT '0' COMMENT 'client_杂物类型',
  `icon` int(11) DEFAULT '0' COMMENT 'client_形象资源',
  `cleanWay` int(11) DEFAULT '0' COMMENT 'client_打扫方式',
  `reward` varchar(255) DEFAULT '' COMMENT '道具奖励',
  `spinePos` varchar(255) DEFAULT '' COMMENT 'client_杂物位置',
  `clickPos` varchar(255) DEFAULT '' COMMENT 'client_点击位置',
  `clickSize` varchar(255) DEFAULT '' COMMENT 'client_点击区域大小',
  `tipPos` varchar(255) DEFAULT '' COMMENT 'client_光圈提示位置',
  `leaveTime` int(11) DEFAULT '0' COMMENT 'client_离开耗时（秒）',
  `sound` varchar(255) DEFAULT '' COMMENT 'client_打扫方式音效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_store_expander` (
  `id` int(11) NOT NULL,
  `cost` varchar(255) NOT NULL COMMENT 'MapIntLong',
  `earnSpeedAddition` int(11) NOT NULL,
  `maxShopLv` int(11) NOT NULL,
  `upGradeCondition` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `buildingId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_storeseting` (
  `id` int(11) NOT NULL,
  `buildId` int(11) NOT NULL DEFAULT '0',
  `businessName` varchar(255) NOT NULL,
  `type` int(255) NOT NULL DEFAULT '0' COMMENT '业务类型',
  `sort` int(11) NOT NULL DEFAULT '0',
  `unlockCondition` int(11) NOT NULL DEFAULT '0' COMMENT '基础业务解锁条件',
  `expandUnlockCondition` int(11) NOT NULL DEFAULT '0' COMMENT '拓展业务解锁条件（拓展等级）',
  `earnSpeedAddition` int(11) NOT NULL DEFAULT '0',
  `businessDesc` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `unlockAnimations` varchar(255) DEFAULT '',
  `unlockGuide` int(11) NOT NULL DEFAULT '0',
  `exParam` varchar(255) NOT NULL DEFAULT '',
  `changeID` varchar(255) NOT NULL DEFAULT '',
  `exBusiness` varchar(255) NOT NULL DEFAULT '',
  `exAddition` int(11) NOT NULL DEFAULT '0',
  `deviceSiteUnlock` varchar(255) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '顾客访问权重',
  `customerNum` varchar(255) NOT NULL DEFAULT '',
  `time` varchar(255) NOT NULL DEFAULT '',
  `coustorAnima` varchar(255) NOT NULL DEFAULT '',
  `businessAnima` varchar(255) NOT NULL DEFAULT '',
  `storeBookQuestion` int(11) NOT NULL DEFAULT '0',
  `isDeviceMark` int(11) NOT NULL DEFAULT '0',
  `generalComment` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `specialComment` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_store_staff` (
  `id` int(11) NOT NULL COMMENT 'id',
  `buildId` int(11) NOT NULL COMMENT '店铺id',
  `sort` int(11) NOT NULL COMMENT '职位排序',
  `unlockCondition` int(11) NOT NULL COMMENT '解锁条件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_storeupgrade` (
  `id` int(11) NOT NULL,
  `shopLv` int(255) DEFAULT NULL,
  `consume` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_system_open` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '系统编号',
  `conditionType` int(11) DEFAULT '0' COMMENT '解锁条件类型',
  `value` varchar(255) DEFAULT '' COMMENT '解锁值 ArrayLong_parse(=)',
  `guideId` int(11) DEFAULT '0' COMMENT 'client_引导编号',
  `reward` varchar(255) DEFAULT '' COMMENT '解锁奖励',
  `isShow` int(11) DEFAULT '0' COMMENT 'client_是否在身份展示',
  `isPopup` int(11) DEFAULT '0' COMMENT 'client_是否弹出解锁弹窗',
  `goToScene` varchar(255) DEFAULT '' COMMENT '跳转ID及参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_train_level` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '培训等级ID',
  `upgrade` int(11) NOT NULL DEFAULT '0' COMMENT '升级所需声誉指数',
  `reward1` int(11) NOT NULL DEFAULT '0' COMMENT '学习经验/时',
  `reward2` int(11) NOT NULL DEFAULT '0' COMMENT '心得经验/时',
  `maxTime` int(11) NOT NULL DEFAULT '0' COMMENT '培训时间（秒）',
  `roomExp` int(11) NOT NULL DEFAULT '0' COMMENT '声誉指数/时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_task` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `littleType` int(11) NOT NULL DEFAULT '0',
  `completeType` int(11) NOT NULL DEFAULT '0',
  `completeParams` varchar(255) NOT NULL COMMENT 'ArrayLong',
  `selectable` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `integral` int(11) NOT NULL DEFAULT '0',
  `preTaskId` int(11) NOT NULL DEFAULT '0',
  `nextTaskId` int(11) NOT NULL DEFAULT '0',
  `beginTime` varchar(255) NOT NULL COMMENT 'ArrayInt_parse(.)',
  `endTime` varchar(255) NOT NULL COMMENT 'ArrayInt_parse(.)',
  `goToScene` varchar(255) DEFAULT '0',
  `rewardsType` int(11) DEFAULT '0',
  `rewards` varchar(255) NOT NULL COMMENT 'MapIntLong',
  `additionalPar` varchar(255) NOT NULL DEFAULT '0',
  `satisfyType` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_train_lesson` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '人才类型',
  `quality` int(11) NOT NULL DEFAULT '0' COMMENT '课程品质',
  `unlock` int(11) NOT NULL DEFAULT '0' COMMENT '特训次数解锁条件',
  `cost` varchar(200) NOT NULL DEFAULT '' COMMENT '消耗',
  `expReward` int(11) NOT NULL DEFAULT '0' COMMENT '特训感悟/次',
  `coinReward` int(11) NOT NULL DEFAULT '0' COMMENT '培训币/次',
  `time` int(11) NOT NULL COMMENT '特训时间(秒)',
  `skill` int(11) NOT NULL DEFAULT '0' COMMENT '技能ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_tv_studio_evaluation` (
  `id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `addition` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_train_seat` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '座位ID',
  `unlockLevel` int(11) NOT NULL DEFAULT '0' COMMENT '身份等级解锁',
  `unlockBegin` int(11) NOT NULL DEFAULT '0' COMMENT '是否初始解锁',
  `consume` varchar(255) NOT NULL COMMENT '解锁消耗',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_tv_studio_practice_room` (
  `id` int(11) NOT NULL,
  `lv` int(11) NOT NULL,
  `needWorksNum` int(11) NOT NULL,
  `finishAdd` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_union_badge` (
  `id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `getConditionType` int(11) NOT NULL,
  `getConditionValue` int(11) NOT NULL,
  `addition` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_tv_studio_script` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subType` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `minBeautyNum` int(11) NOT NULL,
  `maxBeautyNum` int(11) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_tv_studio_proficiency` (
  `id` int(11) NOT NULL,
  `minCnt` int(11) NOT NULL,
  `maxCnt` int(11) NOT NULL,
  `addition` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_tv_studio_quality` (
  `id` int(11) NOT NULL,
  `minAffinity` int(11) NOT NULL,
  `maxAffinity` int(11) NOT NULL,
  `growth` int(11) NOT NULL,
  `trainingGrowth` int(11) NOT NULL,
  `needMoneyAdd` int(11) NOT NULL,
  `needCnt` int(11) NOT NULL,
  `trainingExpAdd` int(11) NOT NULL,
  `qualityAdd` int(11) NOT NULL,
  `randomRewardNum` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_union_construct` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `consume` varchar(255) NOT NULL DEFAULT '',
  `maxNum` int(11) NOT NULL DEFAULT '0',
  `addProgress` int(11) NOT NULL DEFAULT '0',
  `addGuildExp` int(11) NOT NULL DEFAULT '0',
  `addGuildWealth` int(11) NOT NULL DEFAULT '0',
  `addPersonContribution` int(11) NOT NULL DEFAULT '0',
  `coolingTime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_union_trade_route` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '0' COMMENT '路线名称',
  `needFamilyLv` text NOT NULL,
  `consume` varchar(255) NOT NULL COMMENT '开启消耗',
  `condition` bigint(20) NOT NULL DEFAULT '0' COMMENT '门客赚钱要求',
  `doingTime` int(11) NOT NULL,
  `harvestTime` int(11) NOT NULL,
  `eventNum` varchar(255) DEFAULT '',
  `eventTime` varchar(255) DEFAULT '',
  `eventList` varchar(255) DEFAULT '',
  `rewards` varchar(255) NOT NULL COMMENT '奖励',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_vip` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `experience` bigint(20) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `heroRewards` varchar(255) NOT NULL DEFAULT '' COMMENT '人才奖励',
  `rewards` text NOT NULL,
  `mainRewards` varchar(255) NOT NULL DEFAULT '' COMMENT '主要奖励，载具',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_union_upgrade` (
  `id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `maxPerson` int(11) DEFAULT NULL,
  `vicePresident` int(11) DEFAULT NULL,
  `elite` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `cooperationAdd` int(11) NOT NULL,
  `treeTotalProgress` int(11) NOT NULL,
  `treeAdd` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_workshop_event` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` int(11) DEFAULT '0',
  `icon` int(11) DEFAULT '0',
  `iconPos` varchar(255) DEFAULT '0',
  `name` varchar(255) DEFAULT '0',
  `desc` varchar(255) DEFAULT '0',
  `rewards` varchar(255) NOT NULL,
  `parLists` varchar(50) NOT NULL DEFAULT '0' COMMENT 'parse(|#;) ArrayInt2 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_workshop` (
  `id` int(11) NOT NULL,
  `num` int(11) DEFAULT NULL,
  `chapter` int(11) DEFAULT NULL,
  `section` int(11) DEFAULT NULL,
  `workshopTemplate` int(11) DEFAULT NULL,
  `bossAbility` bigint(20) DEFAULT NULL,
  `bossExpReward` bigint(20) DEFAULT NULL,
  `bossPrestige` bigint(20) DEFAULT NULL,
  `moneyList` text,
  `abilityList` text,
  `expReward` text,
  `prestige` text,
  `completeReward` text,
  `baseInspireConsume` text,
  `eventsId` text,
  `onhookExp` int(11) DEFAULT NULL,
  `levelUnlock` varchar(255) DEFAULT NULL,
  `addition` int(11) NOT NULL DEFAULT '0',
  `exAddition` int(11) NOT NULL DEFAULT '0',
  `bossFigure` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_c_workshop_ot_order` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `occupation` int(11) NOT NULL DEFAULT '0' COMMENT '职业划分',
  `quality` int(11) NOT NULL DEFAULT '0' COMMENT '订单品质',
  `growth` int(11) NOT NULL DEFAULT '0' COMMENT '订单总进度',
  `trainingExpAdd` int(11) NOT NULL DEFAULT '0' COMMENT '人才经验系数（千分比）',
  `reward` varchar(255) NOT NULL DEFAULT '' COMMENT '奖励',
  `occupationRewardNum` varchar(255) NOT NULL DEFAULT '' COMMENT '奖励职业书数量(下限;上限)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `t_u_promotion` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '玩家id',
  `promoteNum` int(11) NOT NULL DEFAULT '0' COMMENT '当天推广次数',
  `departmentInfo` text COLLATE utf8_bin COMMENT '部门信息',
  `resetTime` bigint(20) NOT NULL DEFAULT '0' COMMENT '下一次重置时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE `t_ip` (
  `id` int(11) DEFAULT NULL,
  `ip` varchar(50) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `countryId` varchar(255) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `provinceId` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `countyId` int(11) DEFAULT NULL,
  `isp` varchar(255) DEFAULT NULL,
  `ispid` int(11) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ip`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

