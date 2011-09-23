.class public Landroid/os/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field private static final DATA_DIRECTORY:Ljava/io/File; = null

.field public static DIRECTORY_ALARMS:Ljava/lang/String; = null

.field public static DIRECTORY_DCIM:Ljava/lang/String; = null

.field public static DIRECTORY_DOWNLOADS:Ljava/lang/String; = null

.field public static DIRECTORY_MOVIES:Ljava/lang/String; = null

.field public static DIRECTORY_MUSIC:Ljava/lang/String; = null

.field public static DIRECTORY_NOTIFICATIONS:Ljava/lang/String; = null

.field public static DIRECTORY_PICTURES:Ljava/lang/String; = null

.field public static DIRECTORY_PODCASTS:Ljava/lang/String; = null

.field public static DIRECTORY_RINGTONES:Ljava/lang/String; = null

.field private static final DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final INTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final INTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final INTERNAL_STORAGE_DIRECTORY:Ljava/io/File; = null

.field public static final MEDIA_BAD_REMOVAL:Ljava/lang/String; = "bad_removal"

.field public static final MEDIA_CHECKING:Ljava/lang/String; = "checking"

.field public static final MEDIA_EJECTING:Ljava/lang/String; = "ejecting"

.field public static final MEDIA_MOUNTED:Ljava/lang/String; = "mounted"

.field public static final MEDIA_MOUNTED_READ_ONLY:Ljava/lang/String; = "mounted_ro"

.field public static final MEDIA_NOFS:Ljava/lang/String; = "nofs"

.field public static final MEDIA_PENDING:Ljava/lang/String; = "pending"

.field public static final MEDIA_REMOVED:Ljava/lang/String; = "removed"

.field public static final MEDIA_SHARED:Ljava/lang/String; = "shared"

.field public static final MEDIA_UNMOUNTABLE:Ljava/lang/String; = "unmountable"

.field public static final MEDIA_UNMOUNTED:Ljava/lang/String; = "unmounted"

.field private static final OTG_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File; = null

.field private static final OTG_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File; = null

.field private static final OTG_STORAGE_DIRECTORY:Ljava/io/File; = null

.field private static final ROOT_DIRECTORY:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static mMntSvc:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-string v8, "INTERNAL_STORAGE"

    const-string v7, "EXTERNAL_STORAGE"

    const-string v6, "/mnt/sdcard/otg_disk"

    const-string v5, "Android"

    const-string v4, "/mnt/sdcard"

    .line 33
    const-string v0, "ANDROID_ROOT"

    const-string v1, "/system"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 45
    const-string v0, "ANDROID_DATA"

    const-string v1, "/data"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    .line 50
    const-string v0, "EXTERNAL_STORAGE"

    const-string v0, "/mnt/sdcard"

    invoke-static {v7, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v7, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 56
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "EXTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v7, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 60
    const-string v0, "INTERNAL_STORAGE"

    const-string v0, "/mnt/sdcard"

    invoke-static {v8, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->INTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "INTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->INTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 66
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "INTERNAL_STORAGE"

    const-string v2, "/mnt/sdcard"

    invoke-static {v8, v4}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->INTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 71
    const-string v0, "OTG_STORAGE"

    const-string v1, "/mnt/sdcard/otg_disk"

    invoke-static {v0, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->OTG_STORAGE_DIRECTORY:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "OTG_STORAGE"

    const-string v3, "/mnt/sdcard/otg_disk"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->OTG_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "OTG_STORAGE"

    const-string v3, "/mnt/sdcard/otg_disk"

    invoke-static {v2, v6}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/Environment;->OTG_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    .line 81
    const-string v0, "DOWNLOAD_CACHE"

    const-string v1, "/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    .line 84
    const-string v0, "DOWNLOAD_DATA_CACHE"

    const-string v1, "/data/cache"

    invoke-static {v0, v1}, Landroid/os/Environment;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/Environment;->DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File;

    .line 169
    const-string v0, "Music"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 181
    const-string v0, "Podcasts"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    .line 193
    const-string v0, "Ringtones"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    .line 205
    const-string v0, "Alarms"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    .line 217
    const-string v0, "Notifications"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    .line 225
    const-string v0, "Pictures"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 233
    const-string v0, "Movies"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 243
    const-string v0, "Download"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 250
    const-string v0, "DCIM"

    sput-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/os/Environment;->DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "variableName"
    .parameter "defaultPath"

    .prologue
    .line 489
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getDownloadDataCacheDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Landroid/os/Environment;->DOWNLOAD_DATA_CACHE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, statusExternal:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    .line 518
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 318
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 293
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 309
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_DATA_DIRECTORY:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 301
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->EXTERNAL_STORAGE_ANDROID_MEDIA_DIRECTORY:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectoryOtg()Ljava/io/File;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/os/Environment;->OTG_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStorageDirectorySd()Ljava/io/File;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 277
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 408
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 411
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    .line 412
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 413
    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getExternalStorageStateOtg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    const-string v0, "removed"

    return-object v0
.end method

.method public static getExternalStorageStateSd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 431
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 432
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 435
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 437
    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getInstalledStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Landroid/os/Environment;->EXTERNAL_STORAGE_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method public static getInstalledStorageState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 478
    :try_start_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 479
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    .line 482
    :cond_0
    sget-object v1, Landroid/os/Environment;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-static {}, Landroid/os/Environment;->getInstalledStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 484
    :goto_0
    return-object v1

    .line 483
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getInternalMemoryStatus()Z
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, mounted:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, statusInternal:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    .line 502
    :cond_0
    const-string/jumbo v1, "unmounted"

    goto :goto_0
.end method

.method public static getRootDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/os/Environment;->ROOT_DIRECTORY:Ljava/io/File;

    return-object v0
.end method
