.class public Lcom/android/settings/deviceinfo/Memory;
.super Landroid/preference/PreferenceActivity;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CONV_TO_MB:J = 0x100000L

.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_CONFIRM_UNMOUNT_SD:I = 0x3

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field private static final FORMAT_INTERNAL:I = 0x64

.field private static final MEMORY_SD_AVAIL:Ljava/lang/String; = "memory_sd_avail"

.field private static final MEMORY_SD_FORMAT:Ljava/lang/String; = "memory_sd_format"

.field private static final MEMORY_SD_GROUP:Ljava/lang/String; = "memory_sd"

.field private static final MEMORY_SD_INTERNAL_AVAIL:Ljava/lang/String; = "memory_sd_internal_avail"

.field private static final MEMORY_SD_INTERNAL_FORMAT:Ljava/lang/String; = "memory_sd_internal_format"

.field private static final MEMORY_SD_INTERNAL_GROUP:Ljava/lang/String; = "memory_sd_internal"

.field private static final MEMORY_SD_INTERNAL_MOUNT_TOGGLE:Ljava/lang/String; = "memory_sd_internal_mount_toggle"

.field private static final MEMORY_SD_INTERNAL_SIZE:Ljava/lang/String; = "memory_sd_internal_size"

.field private static final MEMORY_SD_MOUNT_TOGGLE:Ljava/lang/String; = "memory_sd_mount_toggle"

.field private static final MEMORY_SD_SIZE:Ljava/lang/String; = "memory_sd_size"

.field private static final TAG:Ljava/lang/String; = "Memory"

.field private static final localLOGV:Z = true


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSdAvail:Landroid/preference/Preference;

.field private mSdFormat:Landroid/preference/Preference;

.field private mSdInternalAvail:Landroid/preference/Preference;

.field private mSdInternalFormat:Landroid/preference/Preference;

.field private mSdInternalMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field mSdInternalMountToggleAdded:Z

.field private mSdInternalSize:Landroid/preference/Preference;

.field private mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mSdMountToggle:Landroid/preference/Preference;

.field mSdMountToggleAdded:Z

.field private mSdSize:Landroid/preference/Preference;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalMountToggleAdded:Z

    .line 110
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 112
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 191
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 310
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V

    return-void
.end method

.method private doUnmount(Ljava/lang/String;Z)V
    .locals 5
    .parameter "extStoragePath"
    .parameter "force"

    .prologue
    .line 369
    const-string v2, "Memory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUnmount :: extStoragePath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", force = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 372
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    const v2, 0x7f0902cf

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 376
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 377
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0902d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0902d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const v2, 0x7f0902ce

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 385
    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 4
    .parameter "size"

    .prologue
    .line 646
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatSize :: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/32 v2, 0x100000

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const-string v1, "Memory"

    .line 227
    monitor-enter p0

    :try_start_0
    const-string v1, "Memory"

    const-string v2, "getMountService ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 229
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 230
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 231
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 236
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 233
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "Memory"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage(Ljava/lang/String;)Z
    .locals 8
    .parameter "extStoragePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 402
    const-string v4, "Memory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasAppsAccessingStorage :: extStoragePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 404
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v3

    .line 405
    .local v3, stUsers:[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    move v4, v7

    .line 413
    :goto_0
    return v4

    .line 408
    :cond_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 409
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v1

    .line 410
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v7

    .line 411
    goto :goto_0

    .line 413
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private mount(Ljava/lang/String;)V
    .locals 4
    .parameter "extStoragePath"

    .prologue
    const-string v3, "Memory"

    .line 444
    const-string v1, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mount :: extStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 447
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_2

    .line 448
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0902d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0902d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0

    .line 458
    :cond_2
    const-string v1, "Memory"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 396
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showDialogInner :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 399
    return-void
.end method

.method private unmount(Ljava/lang/String;)V
    .locals 4
    .parameter "extStoragePath"

    .prologue
    const-string v3, "Memory"

    .line 417
    const-string v1, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unmount :: extStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    const-string v1, "Memory"

    const-string v2, "Do have storage users accessing media"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v1, "Memory"

    const-string v2, "unmount :: doUnmount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/deviceinfo/Memory;->doUnmount(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 438
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Memory"

    const-string v1, "Is MountService running?"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private updateMemoryStatus()V
    .locals 22

    .prologue
    .line 465
    const-string v18, "Memory"

    const-string v19, "updateMemoryStatus :: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    .line 469
    .local v13, status:Ljava/lang/String;
    const-string v11, ""

    .line 470
    .local v11, readOnly:Ljava/lang/String;
    const-string v18, "mounted_ro"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 471
    const-string v13, "mounted"

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0902c5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 473
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateMemoryStatus :: status = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", readOnly"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EXTERNAL updateMemoryStatus :: status = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v18, "mounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 480
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovableSd()Z

    move-result v18

    if-nez v18, :cond_1

    .line 483
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 489
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 490
    .local v10, path:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 491
    .local v12, stat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v7, v0

    .line 492
    .local v7, blockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v14, v0

    .line 493
    .local v14, totalBlocks:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v3, v0

    .line 497
    .local v3, availableBlocks:J
    mul-long v16, v14, v7

    .line 498
    .local v16, totalSpace:J
    mul-long v5, v3, v7

    .line 501
    .local v5, availableSpace:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    const-string v18, "Memory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Storage Path :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", Total space :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x100000

    div-long v20, v16, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", and Available space :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-wide/32 v20, 0x100000

    div-long v20, v5, v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902b7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902b9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .end local v3           #availableBlocks:J
    .end local v5           #availableSpace:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v12           #stat:Landroid/os/StatFs;
    .end local v14           #totalBlocks:J
    .end local v16           #totalSpace:J
    :goto_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    .line 639
    .restart local v10       #path:Ljava/io/File;
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 640
    .restart local v12       #stat:Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v7, v0

    .line 641
    .restart local v7       #blockSize:J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v3, v0

    .line 642
    .restart local v3       #availableBlocks:J
    const-string v18, "memory_internal_avail"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    mul-long v19, v3, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Memory;->formatSize(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 643
    return-void

    .line 509
    .end local v3           #availableBlocks:J
    .end local v7           #blockSize:J
    .end local v10           #path:Ljava/io/File;
    .end local v12           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v18

    move-object/from16 v9, v18

    .line 512
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "removed"

    .line 513
    goto :goto_0

    .line 516
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902c4

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902c4

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 520
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovableSd()Z

    move-result v18

    if-nez v18, :cond_3

    .line 521
    const-string v18, "unmounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 524
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggleAdded:Z

    .line 529
    :cond_3
    const-string v18, "unmounted"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "nofs"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "unmountable"

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 532
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902bd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902bf

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 537
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902bd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    const v20, 0x7f0902bb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 651
    const-string v0, "Memory"

    const-string v1, "onCancel :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->finish()V

    .line 653
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 120
    const-string v1, "Memory"

    const-string v2, "onCreate ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 125
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 126
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 129
    :cond_0
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mRes:Landroid/content/res/Resources;

    .line 134
    const-string v1, "memory_sd_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdSize:Landroid/preference/Preference;

    .line 135
    const-string v1, "memory_sd_avail"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdAvail:Landroid/preference/Preference;

    .line 136
    const-string v1, "memory_sd_mount_toggle"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    .line 137
    const-string v1, "memory_sd_format"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    .line 139
    const-string v1, "memory_sd"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 152
    const-string v1, "memory_sd_internal_memory"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 153
    .local v0, removablePref:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    :cond_1
    const-string v1, "memory_sd_internal_size"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    :cond_2
    const-string v1, "memory_sd_internal_avail"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_3
    const-string v1, "memory_sd_internal_format"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_4
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "id"
    .parameter "args"

    .prologue
    const v5, 0x7f0900f9

    const v4, 0x7f0903a6

    const/4 v3, 0x0

    .line 319
    const-string v0, "Memory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog :: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    .line 365
    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 346
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 353
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0902c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v1, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "Memory"

    const-string v1, "onDestroy ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 223
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 213
    const-string v0, "Memory"

    const-string v1, "onPause ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const-string v5, "android.intent.action.VIEW"

    const-string v3, "Memory"

    .line 254
    const-string v2, "Memory"

    const-string v2, "onPreferenceTreeClick ::"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdMountToggle:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, status:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "Memory"

    const-string v2, "onPreferenceTreeClick :: mSdMountToggle for unmount"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->unmount(Ljava/lang/String;)V

    :goto_0
    move v2, v4

    .line 307
    .end local v1           #status:Ljava/lang/String;
    :goto_1
    return v2

    .line 263
    .restart local v1       #status:Ljava/lang/String;
    :cond_0
    const-string v2, "Memory"

    const-string v2, "onPreferenceTreeClick :: mSdMountToggle for mount"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->mount(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v1           #status:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdFormat:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 268
    const-string v2, "Memory"

    const-string v2, "onPreferenceTreeClick :: mSdFormat"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/MediaFormatSd;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 272
    goto :goto_1

    .line 299
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mSdInternalFormat:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 300
    const-string v2, "Memory"

    const-string v2, "onPreferenceTreeClick :: mSdInternalFormat"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/MediaFormat;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    move v2, v4

    .line 304
    goto :goto_1

    .line 307
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 182
    const-string v1, "Memory"

    const-string v2, "onResume ::"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/Memory;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->updateMemoryStatus()V

    .line 189
    return-void
.end method
