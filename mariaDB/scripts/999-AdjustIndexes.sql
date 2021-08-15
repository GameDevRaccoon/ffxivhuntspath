SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
USE `ffxiv2`;

--
-- Indexes for table `aetherytes_arr`
--
ALTER TABLE `aetherytes_arr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Indexes for table `aetherytes_hw`
--
ALTER TABLE `aetherytes_hw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PK_ID_AETH` (`id`),
  ADD KEY `FK_ZONE_AETH` (`id_zone`);

--
-- Indexes for table `aetherytes_sb`
--
ALTER TABLE `aetherytes_sb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PK_ID_AETH` (`id`),
  ADD KEY `FK_ZONE_AETH` (`id_zone`);

--
-- Indexes for table `aetherytes_shb`
--
ALTER TABLE `aetherytes_shb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Indexes for table `etags`
--
ALTER TABLE `etags`
  ADD PRIMARY KEY (`item`);

--
-- Indexes for table `fates_arr`
--
ALTER TABLE `fates_arr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobs_arr`
--
ALTER TABLE `mobs_arr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Indexes for table `mobs_hw`
--
ALTER TABLE `mobs_hw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PK_ID` (`id`),
  ADD KEY `FK_ZONE` (`id_zone`);

--
-- Indexes for table `mobs_sb`
--
ALTER TABLE `mobs_sb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `PK_ID` (`id`),
  ADD KEY `FK_ZONE` (`id_zone`);

--
-- Indexes for table `mobs_shb`
--
ALTER TABLE `mobs_shb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_zone` (`id_zone`);

--
-- Indexes for table `region_arr`
--
ALTER TABLE `region_arr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones_arr`
--
ALTER TABLE `zones_arr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `zones_hw`
--
ALTER TABLE `zones_hw`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `PK_ID` (`id`);

--
-- Indexes for table `zones_sb`
--
ALTER TABLE `zones_sb`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `PK_ID` (`id`);

--
-- Indexes for table `zones_shb`
--
ALTER TABLE `zones_shb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aetherytes_arr`
--
ALTER TABLE `aetherytes_arr`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `aetherytes_hw`
--
ALTER TABLE `aetherytes_hw`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `aetherytes_sb`
--
ALTER TABLE `aetherytes_sb`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `aetherytes_shb`
--
ALTER TABLE `aetherytes_shb`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fates_arr`
--
ALTER TABLE `fates_arr`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT for table `mobs_arr`
--
ALTER TABLE `mobs_arr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `mobs_hw`
--
ALTER TABLE `mobs_hw`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `mobs_sb`
--
ALTER TABLE `mobs_sb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `mobs_shb`
--
ALTER TABLE `mobs_shb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `region_arr`
--
ALTER TABLE `region_arr`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zones_arr`
--
ALTER TABLE `zones_arr`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `zones_hw`
--
ALTER TABLE `zones_hw`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zones_sb`
--
ALTER TABLE `zones_sb`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `zones_shb`
--
ALTER TABLE `zones_shb`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


COMMIT;