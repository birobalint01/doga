-- CreateTable
CREATE TABLE `Sailboat` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(191) NOT NULL,
    `dockId` INTEGER NULL,
    `length` INTEGER NOT NULL,
    `active` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Dock` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `capacity` INTEGER NOT NULL,
    `description` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Sailboat` ADD CONSTRAINT `Sailboat_dockId_fkey` FOREIGN KEY (`dockId`) REFERENCES `Dock`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
