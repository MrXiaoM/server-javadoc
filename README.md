# server-javadoc

备份 SpigotMC 和 PaperMC 的 javadoc，方便做多版本、多平台接口兼容时进行接口对比。

便于方便地通过 Github Actions 部署到 Pages，备份时，将会把文件重命名为 `Minecraft版本.zip`。

Spigot 1.7 及以下，因为 [DMCA Takedown](https://github.com/github/dmca/blob/master/2014/2014-09-05-CraftBukkit.md)，大约已经不存在于任何官方仓库中了。

本仓库仅作 javadoc 备份，部署到 Github Pages 请见 [MrXiaoM/server-javadoc-deploy](https://github.com/MrXiaoM/server-javadoc-deploy)。

## 用法

```shell
sh install.sh [网站根路径]
```
不填路径则默认为 `./out`

## spigot-api 1.8-latest

```kotlin
repositories {
    maven("https://hub.spigotmc.org/nexus/content/repositories/snapshots/")
}
```

位于包 `org.spigotmc:spigot-api`

## paperspigot-api 1.7-1.8

```kotlin
repositories {
    maven("https://repo.papermc.io/repository/maven-public/")
}
```

位于包 `org.github.paperspigot:paperspigot-api`

## paper-api 1.9-1.16

```kotlin
repositories {
    maven("https://repo.papermc.io/repository/maven-public/")
}
```

位于包 `com.destroystokyo.paper:paper-api`

## paper-api 1.17-latest

```kotlin
repositories {
    maven("https://repo.papermc.io/repository/maven-public/")
}
```

位于包 `io.papermc.paper:paper-api`
