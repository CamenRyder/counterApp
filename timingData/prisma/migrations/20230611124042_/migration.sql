-- CreateTable
CREATE TABLE `timeCounter` (
    `idTime` INTEGER NOT NULL AUTO_INCREMENT,
    `timeCounter` CHAR(200) NOT NULL,
    `comment` VARCHAR(200) NULL,
    `userId` INTEGER NULL,

    INDEX `userId`(`userId`),
    PRIMARY KEY (`idTime`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user` (
    `userId` INTEGER NOT NULL AUTO_INCREMENT,
    `username` CHAR(200) NOT NULL,
    `password` CHAR(200) NOT NULL,
    `number` CHAR(20) NOT NULL DEFAULT '113',
    `dateSignUp` CHAR(50) NOT NULL DEFAULT '21/11/2003',
    `name` VARCHAR(200) NOT NULL DEFAULT '',

    PRIMARY KEY (`userId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `timeCounter` ADD CONSTRAINT `timeCounter_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user`(`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT;
