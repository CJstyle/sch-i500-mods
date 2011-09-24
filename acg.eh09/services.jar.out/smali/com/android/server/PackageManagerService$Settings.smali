.class final Lcom/android/server/PackageManagerService$Settings;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    }
.end annotation


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field final mDisabledSysPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field mExternalSdkPlatform:I

.field mInternalSdkPlatform:I

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$Settings$PendingPackage;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionTrees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferredActivities:Lcom/android/server/IntentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/IntentResolver",
            "<",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            "Lcom/android/server/PackageManagerService$PreferredActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadMessages:Ljava/lang/StringBuilder;

.field final mRenamedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFilename:Ljava/io/File;

.field private final mSharedUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 15

    .prologue
    .line 8254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8173
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    .line 8176
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    .line 8187
    new-instance v11, Lcom/android/server/PackageManagerService$Settings$1;

    invoke-direct {v11, p0}, Lcom/android/server/PackageManagerService$Settings$1;-><init>(Lcom/android/server/PackageManagerService$Settings;)V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    .line 8211
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    .line 8213
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    .line 8214
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    .line 8218
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    .line 8222
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    .line 8226
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    .line 8231
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    .line 8237
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    .line 8239
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 8251
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    .line 8255
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 8256
    .local v0, dataDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v11, "system"

    invoke-direct {v5, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8258
    .local v5, systemDir:Ljava/io/File;
    const/4 v4, 0x0

    .line 8259
    .local v4, newSystemDir:Ljava/io/File;
    const/4 v3, 0x0

    .line 8263
    .local v3, mSettingsFilename_prev:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    .end local v4           #newSystemDir:Ljava/io/File;
    const-string v11, "/dbdata/system"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8267
    .restart local v4       #newSystemDir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v11, "secure/system"

    invoke-direct {v6, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8268
    .local v6, systemSecureDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 8269
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 8270
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1fd

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8274
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1fd

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8280
    new-instance v11, Ljava/io/File;

    const-string v12, "packages.xml"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    .line 8281
    new-instance v11, Ljava/io/File;

    const-string v12, "packages-backup.xml"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    .line 8282
    new-instance v11, Ljava/io/File;

    const-string v12, "packages.list"

    invoke-direct {v11, v4, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    .line 8283
    new-instance v3, Ljava/io/File;

    .end local v3           #mSettingsFilename_prev:Ljava/io/File;
    const-string v11, "packages.xml"

    invoke-direct {v3, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8284
    .restart local v3       #mSettingsFilename_prev:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 8285
    const-string v11, "PackageManager"

    const-string v12, "This is first Gingerbread booting for your device, \"packages.xml\" migration is needed"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    const-string v11, "PackageManager"

    const-string v12, "*packages.xml migration start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8291
    const/high16 v11, 0x1

    new-array v7, v11, [B

    .line 8292
    .local v7, tmpBuffer:[B
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 8293
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 8296
    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8297
    .local v9, tmpIn:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8298
    .local v10, tmpOut:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v11, 0x0

    const/high16 v12, 0x1

    invoke-virtual {v9, v7, v11, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    .local v8, tmpBytesRead:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    .line 8299
    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8335
    .end local v8           #tmpBytesRead:I
    .end local v9           #tmpIn:Ljava/io/FileInputStream;
    .end local v10           #tmpOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 8336
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "PackageManager"

    const-string v12, "Error during \"packages.xml\" migration"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8337
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8347
    .end local v1           #e:Ljava/lang/Exception;
    .end local v7           #tmpBuffer:[B
    :cond_1
    :goto_1
    return-void

    .line 8301
    .restart local v7       #tmpBuffer:[B
    .restart local v8       #tmpBytesRead:I
    .restart local v9       #tmpIn:Ljava/io/FileInputStream;
    .restart local v10       #tmpOut:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 8302
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V

    .line 8303
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 8304
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 8305
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8310
    new-instance v2, Ljava/io/File;

    const-string v11, "packages-backup.xml"

    invoke-direct {v2, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8312
    .local v2, mBackupSettingsFilename_prev:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 8313
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 8314
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 8316
    :cond_3
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9           #tmpIn:Ljava/io/FileInputStream;
    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8317
    .restart local v9       #tmpIn:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/FileOutputStream;

    .end local v10           #tmpOut:Ljava/io/FileOutputStream;
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8318
    .restart local v10       #tmpOut:Ljava/io/FileOutputStream;
    :goto_2
    const/4 v11, 0x0

    const/high16 v12, 0x1

    invoke-virtual {v9, v7, v11, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_4

    .line 8319
    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 8321
    :cond_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 8322
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V

    .line 8323
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 8324
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 8325
    iget-object v11, p0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1b4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8330
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 8332
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 8333
    const-string v11, "PackageManager"

    const-string v12, "!@packages.xml migration done."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic access$1200(Lcom/android/server/PackageManagerService$Settings;)Lcom/android/server/IntentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8169
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->transferPermissions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/PackageManagerService$Settings;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8169
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/PackageManagerService$Settings;Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 8169
    invoke-direct {p0, p1, p2}, Lcom/android/server/PackageManagerService$Settings;->updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8169
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PackageManagerService$Settings;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8169
    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$Settings;->removePackageLP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V
    .locals 5
    .parameter "p"
    .parameter "name"
    .parameter "sharedUser"

    .prologue
    const/4 v2, 0x6

    const-string v4, "Package "

    const-string v3, "; I am not changing its files so it will probably fail!"

    .line 8690
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8691
    if-eqz p3, :cond_1

    .line 8692
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eq v0, p3, :cond_2

    .line 8693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8697
    iget-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8706
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8707
    iput-object p3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8708
    iget v0, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8710
    :cond_1
    return-void

    .line 8698
    :cond_2
    iget v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-eq v0, v1, :cond_0

    .line 8699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but is now user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "uid"
    .parameter "obj"
    .parameter "name"

    .prologue
    const/16 v3, 0x2710

    const/4 v5, 0x6

    const/4 v4, 0x0

    const-string v6, " name="

    .line 8793
    const/16 v2, 0x2af8

    if-lt p1, v2, :cond_0

    move v2, v4

    .line 8820
    :goto_0
    return v2

    .line 8797
    :cond_0
    if-lt p1, v3, :cond_3

    .line 8798
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8799
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8800
    .local v1, index:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 8801
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8802
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8804
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 8805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate user id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8808
    goto :goto_0

    .line 8810
    :cond_2
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8820
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 8812
    :cond_3
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, v4

    .line 8816
    goto :goto_0

    .line 8818
    :cond_4
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private findPackagesWithFlag(I)Ljava/util/Set;
    .locals 4
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8834
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8835
    .local v2, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8837
    .local v1, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    iget v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/2addr v3, p1

    if-ne v3, p1, :cond_0

    .line 8838
    iget-object v3, v1, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8841
    .end local v1           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    return-object v2
.end method

.method private getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 14
    .parameter "name"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "vc"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8532
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8533
    .local v4, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v4, :cond_1

    .line 8534
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8536
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 8540
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to update system app code path from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8556
    :cond_0
    :goto_0
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v0, v5

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_5

    .line 8557
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " shared user changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v7, v7, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object v7, v0

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; replacing with new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8563
    const/4 v4, 0x0

    .line 8573
    :cond_1
    :goto_3
    if-nez v4, :cond_c

    .line 8576
    if-nez p10, :cond_6

    .line 8577
    const/4 v5, 0x0

    .line 8642
    .end local p2
    :goto_4
    return-object v5

    .line 8545
    .restart local p2
    :cond_2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " codePath changed from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; Retaining data and using new"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8553
    move-object/from16 v0, p7

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    goto/16 :goto_0

    .line 8557
    :cond_3
    const-string v7, "<nothing>"

    goto :goto_1

    :cond_4
    const-string v7, "<nothing>"

    goto :goto_2

    .line 8565
    :cond_5
    and-int/lit8 v5, p9, 0x1

    if-eqz v5, :cond_1

    .line 8569
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    goto :goto_3

    .line 8579
    :cond_6
    if-eqz p2, :cond_7

    .line 8581
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v5, v0

    move-object v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8587
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v13, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8588
    .local v13, s:Lcom/android/server/PackageManagerService$PackageSignatures;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    .line 8589
    iput-object v13, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    .line 8590
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v5, v0

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8591
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8592
    move-object/from16 v0, p2

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->origPackage:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8593
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8594
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    move-object p1, v0

    .line 8596
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8631
    .end local v13           #s:Lcom/android/server/PackageManagerService$PackageSignatures;
    .end local p2
    :goto_5
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gez v5, :cond_b

    .line 8632
    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be assigned a valid uid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8634
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 8598
    .restart local p2
    :cond_7
    new-instance v4, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v4           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v4 .. v11}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8600
    .restart local v4       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 8601
    move-object/from16 v0, p4

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8602
    if-eqz p4, :cond_8

    .line 8603
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move v5, v0

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_5

    .line 8606
    :cond_8
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8607
    .local v12, dis:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v12, :cond_a

    .line 8612
    iget-object v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v5}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 8613
    iget-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-virtual {v6}, [Landroid/content/pm/Signature;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Landroid/content/pm/Signature;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1102(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)[Landroid/content/pm/Signature;

    .line 8615
    :cond_9
    iget v5, v12, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8617
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    .line 8619
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    .line 8620
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v12, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    .line 8622
    iget v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 8625
    .restart local p2
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto/16 :goto_5

    .line 8636
    .end local v12           #dis:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local p2
    :cond_b
    if-eqz p11, :cond_c

    .line 8639
    move-object v0, p0

    move-object v1, v4

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    :cond_c
    move-object v5, v4

    .line 8642
    goto/16 :goto_4
.end method

.method private insertPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 8
    .parameter "p"
    .parameter "pkg"

    .prologue
    const-string v7, "PackageManager"

    const-string v6, " to "

    const-string v5, " changing from "

    .line 8646
    iput-object p2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 8647
    iget v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    iput v3, p2, Landroid/content/pm/PackageParser$Package;->mSetEnabled:I

    .line 8648
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8649
    .local v0, codePath:Ljava/lang/String;
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 8651
    .local v2, resourcePath:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8652
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Code path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8654
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    .line 8655
    iput-object v0, p1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    .line 8658
    :cond_0
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8659
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource path for pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changing from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8661
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .line 8662
    iput-object v2, p1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 8665
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 8666
    .local v1, nativeLibraryPath:Ljava/lang/String;
    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8668
    iput-object v1, p1, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    .line 8671
    :cond_2
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    if-eq v3, v4, :cond_3

    .line 8672
    iget v3, p2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    .line 8675
    :cond_3
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_4

    .line 8676
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8680
    :cond_4
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    invoke-static {v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$1100(Lcom/android/server/PackageManagerService$PackageSignatures;)[Landroid/content/pm/Signature;

    move-result-object v3

    if-nez v3, :cond_5

    .line 8681
    iget-object v3, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService$PackageSignatures;->access$3800(Lcom/android/server/PackageManagerService$PackageSignatures;[Landroid/content/pm/Signature;)V

    .line 8683
    :cond_5
    iget-object v3, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/PackageManagerService$Settings;->addPackageSettingLP(Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;)V

    .line 8684
    return-void
.end method

.method private newUserIdLP(Ljava/lang/Object;)I
    .locals 3
    .parameter "obj"

    .prologue
    .line 9995
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9996
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9997
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9998
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9999
    add-int/lit16 v2, v1, 0x2710

    .line 10009
    :goto_1
    return v2

    .line 9996
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10004
    :cond_1
    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2

    .line 10005
    const/4 v2, -0x1

    goto :goto_1

    .line 10008
    :cond_2
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10009
    add-int/lit16 v2, v0, 0x2710

    goto :goto_1
.end method

.method private readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9803
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9806
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9808
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9813
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9814
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9815
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9816
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9817
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9828
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9819
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9824
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9830
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 22
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9507
    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9508
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "realName"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9509
    .local v5, realName:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "codePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9510
    .local v11, codePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9511
    .local v14, resourcePathStr:Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9512
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    if-nez v14, :cond_0

    .line 9513
    move-object v14, v11

    .line 9515
    :cond_0
    const/4 v6, 0x0

    const-string v7, "version"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 9516
    .local v21, version:Ljava/lang/String;
    const/4 v9, 0x0

    .line 9517
    .local v9, versionCode:I
    if-eqz v21, :cond_1

    .line 9519
    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 9524
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 9525
    .local v10, pkgFlags:I
    or-int/lit8 v10, v10, 0x1

    .line 9526
    new-instance v3, Lcom/android/server/PackageManagerService$PackageSetting;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v10}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 9528
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    const/4 v6, 0x0

    const-string v7, "ft"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9529
    .local v19, timeStampStr:Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 9531
    const/16 v6, 0x10

    :try_start_1
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    .line 9532
    .local v17, timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 9545
    .end local v17           #timeStamp:J
    :cond_2
    :goto_1
    const/4 v6, 0x0

    const-string v7, "it"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9546
    if-eqz v19, :cond_3

    .line 9548
    const/16 v6, 0x10

    :try_start_2
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    .line 9552
    :cond_3
    :goto_2
    const/4 v6, 0x0

    const-string v7, "ut"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9553
    if-eqz v19, :cond_4

    .line 9555
    const/16 v6, 0x10

    :try_start_3
    move-object/from16 v0, v19

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 9559
    :cond_4
    :goto_3
    const/4 v6, 0x0

    const-string v7, "userId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9560
    .local v12, idStr:Ljava/lang/String;
    if-eqz v12, :cond_9

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_4
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9561
    iget v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-gtz v6, :cond_5

    .line 9562
    const/4 v6, 0x0

    const-string v7, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9563
    .local v15, sharedIdStr:Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_5
    iput v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 9565
    .end local v15           #sharedIdStr:Ljava/lang/String;
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 9568
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .local v13, outerDepth:I
    :cond_6
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v6, 0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_c

    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v13, :cond_c

    .line 9570
    :cond_7
    const/4 v6, 0x3

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_6

    const/4 v6, 0x4

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_6

    .line 9575
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 9576
    .local v16, tagName:Ljava/lang/String;
    const-string v6, "perms"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 9577
    iget-object v6, v3, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto :goto_6

    .line 9536
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v16           #tagName:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    const-string v7, "ts"

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9537
    if-eqz v19, :cond_2

    .line 9539
    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 9540
    .restart local v17       #timeStamp:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 9541
    .end local v17           #timeStamp:J
    :catch_0
    move-exception v6

    goto/16 :goto_1

    .line 9560
    .restart local v12       #idStr:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 9563
    .restart local v15       #sharedIdStr:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    .line 9580
    .end local v8           #nativeLibraryPathStr:Ljava/lang/String;
    .end local v15           #sharedIdStr:Ljava/lang/String;
    .restart local v13       #outerDepth:I
    .restart local v16       #tagName:Ljava/lang/String;
    .restart local v20       #type:I
    :cond_b
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9583
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 9586
    .end local v16           #tagName:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object v6, v0

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9587
    return-void

    .line 9520
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v10           #pkgFlags:I
    .end local v12           #idStr:Ljava/lang/String;
    .end local v13           #outerDepth:I
    .end local v19           #timeStampStr:Ljava/lang/String;
    .end local v20           #type:I
    .restart local v8       #nativeLibraryPathStr:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 9556
    .restart local v3       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v10       #pkgFlags:I
    .restart local v19       #timeStampStr:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_3

    .line 9549
    :catch_3
    move-exception v6

    goto/16 :goto_2

    .line 9533
    :catch_4
    move-exception v6

    goto/16 :goto_1
.end method

.method private readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "packageSetting"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9835
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9838
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9840
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9845
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9846
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9847
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9848
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9849
    iget-object v4, p1, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9860
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9851
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9856
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9862
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .locals 8
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .local p2, outPerms:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9931
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 9934
    .local v1, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 9936
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9941
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9942
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9943
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9944
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 9945
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9956
    .end local v0           #name:Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9947
    .restart local v0       #name:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <perms> has no name at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9952
    .end local v0           #name:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <perms>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_1

    .line 9958
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "parser"
    .parameter "ns"
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 9438
    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9440
    .local v1, v:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, p4

    .line 9450
    :goto_0
    return v2

    .line 9443
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 9444
    :catch_0
    move-exception v0

    .line 9445
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has bad integer value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move v2, p4

    .line 9450
    goto :goto_0
.end method

.method private readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 35
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9591
    const/16 v22, 0x0

    .line 9592
    .local v22, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 9593
    .local v5, realName:Ljava/lang/String;
    const/16 v17, 0x0

    .line 9594
    .local v17, idStr:Ljava/lang/String;
    const/16 v26, 0x0

    .line 9595
    .local v26, sharedIdStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 9596
    .local v12, codePathStr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 9597
    .local v25, resourcePathStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 9598
    .local v8, nativeLibraryPathStr:Ljava/lang/String;
    const/16 v27, 0x0

    .line 9599
    .local v27, systemStr:Ljava/lang/String;
    const/16 v19, 0x0

    .line 9600
    .local v19, installerPackageName:Ljava/lang/String;
    const/16 v33, 0x0

    .line 9601
    .local v33, uidError:Ljava/lang/String;
    const/4 v11, 0x0

    .line 9602
    .local v11, pkgFlags:I
    const-wide/16 v29, 0x0

    .line 9603
    .local v29, timeStamp:J
    const-wide/16 v15, 0x0

    .line 9604
    .local v15, firstInstallTime:J
    const-wide/16 v20, 0x0

    .line 9605
    .local v20, lastUpdateTime:J
    const/16 v24, 0x0

    .line 9606
    .local v24, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    const/16 v34, 0x0

    .line 9607
    .local v34, version:Ljava/lang/String;
    const/4 v10, 0x0

    .line 9609
    .local v10, versionCode:I
    const/4 v4, 0x0

    :try_start_0
    const-string v6, "name"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9610
    const/4 v4, 0x0

    const-string v6, "realName"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9611
    const/4 v4, 0x0

    const-string v6, "userId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 9612
    const/4 v4, 0x0

    const-string v6, "uidError"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 9613
    const/4 v4, 0x0

    const-string v6, "sharedUserId"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 9614
    const/4 v4, 0x0

    const-string v6, "codePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 9615
    const/4 v4, 0x0

    const-string v6, "resourcePath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 9616
    const/4 v4, 0x0

    const-string v6, "nativeLibraryPath"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9617
    const/4 v4, 0x0

    const-string v6, "version"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v34

    .line 9618
    if-eqz v34, :cond_0

    .line 9620
    :try_start_1
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 9624
    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_2
    const-string v6, "installer"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 9626
    const/4 v4, 0x0

    const-string v6, "flags"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v27

    .line 9627
    if-eqz v27, :cond_9

    .line 9629
    :try_start_3
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    .line 9643
    :goto_1
    const/4 v4, 0x0

    :try_start_4
    const-string v6, "ft"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7

    move-result-object v31

    .line 9644
    .local v31, timeStampStr:Ljava/lang/String;
    if-eqz v31, :cond_c

    .line 9646
    const/16 v4, 0x10

    :try_start_5
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v29

    .line 9658
    :cond_1
    :goto_2
    const/4 v4, 0x0

    :try_start_6
    const-string v6, "it"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v31

    .line 9659
    if-eqz v31, :cond_2

    .line 9661
    const/16 v4, 0x10

    :try_start_7
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-wide v15

    .line 9665
    :cond_2
    :goto_3
    const/4 v4, 0x0

    :try_start_8
    const-string v6, "ut"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v31

    .line 9666
    if-eqz v31, :cond_3

    .line 9668
    const/16 v4, 0x10

    :try_start_9
    move-object/from16 v0, v31

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-wide v20

    .line 9674
    :cond_3
    :goto_4
    if-eqz v17, :cond_d

    :try_start_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9675
    .local v9, userId:I
    :goto_5
    if-nez v25, :cond_4

    .line 9676
    move-object/from16 v25, v12

    .line 9678
    :cond_4
    if-eqz v5, :cond_5

    .line 9679
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 9681
    :cond_5
    if-nez v22, :cond_e

    .line 9682
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_7

    move-object/from16 v3, v24

    .line 9737
    .end local v9           #userId:I
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v3, packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :goto_6
    if-eqz v3, :cond_1e

    .line 9738
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->uidError:Z

    .line 9739
    move-object/from16 v0, v19

    move-object v1, v3

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 9740
    iput-object v8, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 9741
    const/4 v4, 0x0

    const-string v5, "enabled"

    .end local v5           #realName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9742
    .local v14, enabledStr:Ljava/lang/String;
    if-eqz v14, :cond_18

    .line 9743
    const-string v4, "true"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 9744
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    .line 9758
    :goto_7
    const/4 v4, 0x0

    const-string v5, "installStatus"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 9759
    .local v18, installStatusStr:Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 9760
    const-string v4, "false"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 9761
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    .line 9767
    :cond_6
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    .line 9770
    .local v23, outerDepth:I
    :cond_7
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, type:I
    const/4 v4, 0x1

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_1f

    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-ne v0, v1, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v23

    if-le v0, v1, :cond_1f

    .line 9772
    :cond_8
    const/4 v4, 0x3

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_7

    const/4 v4, 0x4

    move/from16 v0, v32

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 9777
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    .line 9778
    .local v28, tagName:Ljava/lang/String;
    const-string v4, "disabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 9779
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readDisabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 9634
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_9
    const/4 v4, 0x0

    :try_start_b
    const-string v6, "system"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 9635
    if-eqz v27, :cond_b

    .line 9636
    const-string v4, "true"

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_a
    or-int/2addr v11, v4

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 9640
    :cond_b
    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 9650
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    const-string v6, "ts"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v31

    .line 9651
    if-eqz v31, :cond_1

    .line 9653
    :try_start_c
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_4

    move-result-wide v29

    goto/16 :goto_2

    .line 9674
    :cond_d
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_5

    .line 9685
    .restart local v9       #userId:I
    :cond_e
    if-nez v12, :cond_f

    .line 9686
    const/4 v4, 0x5

    :try_start_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9689
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_f
    if-lez v9, :cond_11

    .line 9690
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v3

    .line 9695
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    if-nez v3, :cond_10

    .line 9696
    const/4 v4, 0x6

    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure adding uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while parsing settings at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_6

    .line 9731
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 9732
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .local v13, e:Ljava/lang/NumberFormatException;
    :goto_b
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 9701
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #userId:I
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :cond_10
    :try_start_f
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;->setTimeStamp(J)V

    .line 9702
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    .line 9703
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_6

    .line 9705
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_11
    if-eqz v26, :cond_14

    .line 9706
    if-eqz v26, :cond_12

    :try_start_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 9708
    :goto_c
    if-lez v9, :cond_13

    .line 9709
    new-instance v3, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v3 .. v11}, Lcom/android/server/PackageManagerService$Settings$PendingPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7

    .line 9712
    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :try_start_11
    move-object v0, v3

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSettingBase;->setTimeStamp(J)V

    .line 9713
    iput-wide v15, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->firstInstallTime:J

    .line 9714
    move-wide/from16 v0, v20

    move-object v2, v3

    iput-wide v0, v2, Lcom/android/server/PackageManagerService$PackageSettingBase;->lastUpdateTime:J

    .line 9715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v3

    check-cast v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_6

    .line 9706
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_12
    const/4 v4, 0x0

    move v9, v4

    goto :goto_c

    .line 9720
    :cond_13
    const/4 v4, 0x5

    :try_start_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad sharedId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9726
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :cond_14
    const/4 v4, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in package manager settings: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has bad userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_7

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_6

    .line 9745
    .end local v5           #realName:Ljava/lang/String;
    .end local v9           #userId:I
    .end local v31           #timeStampStr:Ljava/lang/String;
    .restart local v14       #enabledStr:Ljava/lang/String;
    :cond_15
    const-string v4, "false"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 9746
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9747
    :cond_16
    const-string v4, "default"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 9748
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9750
    :cond_17
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has bad enabled value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 9756
    :cond_18
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->enabled:I

    goto/16 :goto_7

    .line 9763
    .restart local v18       #installStatusStr:Ljava/lang/String;
    :cond_19
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->installStatus:I

    goto/16 :goto_8

    .line 9780
    .restart local v23       #outerDepth:I
    .restart local v28       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_1a
    const-string v4, "enabled-components"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 9781
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readEnabledComponentsLP(Lcom/android/server/PackageManagerService$PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 9782
    :cond_1b
    const-string v4, "sigs"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 9783
    iget-object v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 9784
    :cond_1c
    const-string v4, "perms"

    move-object/from16 v0, v28

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 9785
    iget-object v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 9787
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/PackageManagerService$PackageSettingBase;->permissionsFixed:Z

    goto/16 :goto_9

    .line 9789
    :cond_1d
    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <package>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9792
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_9

    .line 9796
    .end local v14           #enabledStr:Ljava/lang/String;
    .end local v18           #installStatusStr:Ljava/lang/String;
    .end local v23           #outerDepth:I
    .end local v28           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    .restart local v5       #realName:Ljava/lang/String;
    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9798
    .end local v5           #realName:Ljava/lang/String;
    :cond_1f
    return-void

    .line 9621
    .end local v3           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v5       #realName:Ljava/lang/String;
    .restart local v24       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 9630
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 9647
    .restart local v31       #timeStampStr:Ljava/lang/String;
    :catch_3
    move-exception v4

    goto/16 :goto_2

    .line 9654
    :catch_4
    move-exception v4

    goto/16 :goto_2

    .line 9662
    :catch_5
    move-exception v4

    goto/16 :goto_3

    .line 9669
    :catch_6
    move-exception v4

    goto/16 :goto_4

    .line 9731
    .end local v31           #timeStampStr:Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object v13, v4

    move-object/from16 v3, v24

    .end local v24           #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    .restart local v3       #packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;
    goto/16 :goto_b
.end method

.method private readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter
    .parameter "parser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageManagerService$BasePermission;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 9456
    .local p1, out:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9459
    .local v3, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 9461
    :cond_1
    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 9466
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 9467
    .local v7, tagName:Ljava/lang/String;
    const-string v9, "item"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 9468
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9469
    .local v2, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "package"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9470
    .local v6, sourcePackage:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "type"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9471
    .local v5, ptype:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 9472
    const-string v9, "dynamic"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 9473
    .local v1, dynamic:Z
    new-instance v0, Lcom/android/server/PackageManagerService$BasePermission;

    if-eqz v1, :cond_3

    const/4 v9, 0x2

    :goto_1
    invoke-direct {v0, v2, v6, v9}, Lcom/android/server/PackageManagerService$BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9477
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    const/4 v9, 0x0

    const-string v10, "protection"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    .line 9479
    if-eqz v1, :cond_2

    .line 9480
    new-instance v4, Landroid/content/pm/PermissionInfo;

    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 9481
    .local v4, pi:Landroid/content/pm/PermissionInfo;
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 9482
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 9483
    const/4 v9, 0x0

    const-string v10, "icon"

    const/4 v11, 0x0

    invoke-direct {p0, p2, v9, v10, v11}, Lcom/android/server/PackageManagerService$Settings;->readInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v4, Landroid/content/pm/PermissionInfo;->icon:I

    .line 9484
    const/4 v9, 0x0

    const-string v10, "label"

    invoke-interface {p2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9486
    iget v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    iput v9, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 9487
    iput-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    .line 9489
    .end local v4           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    iget-object v9, v0, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9501
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #dynamic:Z
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 9473
    .restart local v1       #dynamic:Z
    .restart local v2       #name:Ljava/lang/String;
    .restart local v5       #ptype:Ljava/lang/String;
    .restart local v6       #sourcePackage:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 9491
    .end local v1           #dynamic:Z
    :cond_4
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: permissions has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_2

    .line 9496
    .end local v2           #name:Ljava/lang/String;
    .end local v5           #ptype:Ljava/lang/String;
    .end local v6           #sourcePackage:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element reading permissions: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_2

    .line 9503
    .end local v7           #tagName:Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 9962
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 9965
    .local v0, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, type:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-ne v3, v6, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 9967
    :cond_1
    if-eq v3, v6, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 9972
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9973
    .local v2, tagName:Ljava/lang/String;
    const-string v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9974
    new-instance v1, Lcom/android/server/PackageManagerService$PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/PackageManagerService$PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9975
    .local v1, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    iget-object v4, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 9976
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    invoke-virtual {v4, v1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 9978
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/PackageManagerService$PreferredActivity;->mParseError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto :goto_0

    .line 9984
    .end local v1           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9987
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 9990
    .end local v2           #tagName:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9866
    const/4 v2, 0x0

    .line 9867
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 9868
    .local v1, idStr:Ljava/lang/String;
    const/4 v4, 0x0

    .line 9869
    .local v4, pkgFlags:I
    const/4 v5, 0x0

    .line 9871
    .local v5, su:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/4 v9, 0x0

    :try_start_0
    const-string v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9872
    const/4 v9, 0x0

    const-string v10, "userId"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9873
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move v8, v9

    .line 9874
    .local v8, userId:I
    :goto_0
    const-string v9, "true"

    const/4 v10, 0x0

    const-string v11, "system"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 9875
    or-int/lit8 v4, v4, 0x1

    .line 9877
    :cond_0
    if-nez v2, :cond_5

    .line 9878
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9900
    .end local v8           #userId:I
    :cond_1
    :goto_1
    if-eqz v5, :cond_9

    .line 9901
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 9904
    .local v3, outerDepth:I
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v9, 0x1

    if-eq v7, v9, :cond_a

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_a

    .line 9906
    :cond_3
    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    const/4 v9, 0x4

    if-eq v7, v9, :cond_2

    .line 9911
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 9912
    .local v6, tagName:Ljava/lang/String;
    const-string v9, "sigs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 9913
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    iget-object v10, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/PackageManagerService$PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 9873
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_4
    const/4 v9, 0x0

    move v8, v9

    goto :goto_0

    .line 9881
    .restart local v8       #userId:I
    :cond_5
    if-nez v8, :cond_6

    .line 9882
    const/4 v9, 0x5

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: shared-user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 9893
    .end local v8           #userId:I
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 9894
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has bad userId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 9887
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #userId:I
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8, v4}, Lcom/android/server/PackageManagerService$Settings;->addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-result-object v5

    if-nez v5, :cond_1

    .line 9888
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Occurred while parsing settings at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 9914
    .end local v8           #userId:I
    .restart local v3       #outerDepth:I
    .restart local v6       #tagName:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_7
    const-string v9, "perms"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 9915
    iget-object v9, v5, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-direct {p0, p1, v9}, Lcom/android/server/PackageManagerService$Settings;->readGrantedPermissionsLP(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    goto/16 :goto_2

    .line 9917
    :cond_8
    const/4 v9, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <shared-user>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9920
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9925
    .end local v3           #outerDepth:I
    .end local v6           #tagName:Ljava/lang/String;
    .end local v7           #type:I
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9927
    :cond_a
    return-void
.end method

.method private removePackageLP(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    .line 8761
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8762
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    .line 8763
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8764
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_0

    .line 8765
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8766
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8767
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8768
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8769
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8776
    :goto_0
    return v1

    .line 8772
    :cond_0
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/PackageManagerService$Settings;->removeUserIdLP(I)V

    .line 8773
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    goto :goto_0

    .line 8776
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private removeUserIdLP(I)V
    .locals 4
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8845
    if-lt p1, v3, :cond_1

    .line 8846
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8847
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8848
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8852
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 8850
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method private replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 2
    .parameter "name"
    .parameter "newp"

    .prologue
    .line 8780
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8781
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8782
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v1, :cond_1

    .line 8783
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8784
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8789
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8790
    return-void

    .line 8786
    :cond_1
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/PackageManagerService$Settings;->replaceUserIdLP(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private replaceUserIdLP(ILjava/lang/Object;)V
    .locals 4
    .parameter "uid"
    .parameter "obj"

    .prologue
    const/16 v3, 0x2710

    .line 8855
    if-lt p1, v3, :cond_1

    .line 8856
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8857
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8858
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8862
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 8860
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "origPkg"
    .parameter "newPkg"

    .prologue
    const/4 v5, 0x0

    .line 8507
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_4

    .line 8508
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v4

    .line 8510
    .local v3, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8511
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8516
    iput-object p2, v0, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    .line 8517
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->packageSetting:Lcom/android/server/PackageManagerService$PackageSettingBase;

    .line 8518
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    .line 8519
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    if-eqz v4, :cond_1

    .line 8520
    iget-object v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 8522
    :cond_1
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/PackageManagerService$BasePermission;->uid:I

    .line 8523
    iput-object v5, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    goto :goto_2

    .line 8508
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v4

    goto :goto_1

    .line 8507
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8527
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/PackageManagerService$BasePermission;>;"
    :cond_4
    return-void
.end method

.method private updateSharedUserPermsLP(Lcom/android/server/PackageManagerService$PackageSetting;[I)V
    .locals 10
    .parameter "deletedPs"
    .parameter "globalGids"

    .prologue
    .line 8721
    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v8, :cond_2

    .line 8722
    :cond_0
    const-string v8, "PackageManager"

    const-string v9, "Trying to update info for null package. Just ignoring"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8758
    :cond_1
    :goto_0
    return-void

    .line 8726
    :cond_2
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-eqz v8, :cond_1

    .line 8729
    iget-object v6, p1, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8731
    .local v6, sus:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iget-object v8, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8732
    .local v1, eachPerm:Ljava/lang/String;
    const/4 v7, 0x0

    .line 8733
    .local v7, used:Z
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 8736
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->packages:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8737
    .local v5, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_4

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v5, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 8740
    const/4 v7, 0x1

    .line 8744
    .end local v5           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_5
    if-nez v7, :cond_3

    .line 8746
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8750
    .end local v1           #eachPerm:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #used:Z
    :cond_6
    move-object v4, p2

    .line 8751
    .local v4, newGids:[I
    iget-object v8, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8752
    .restart local v1       #eachPerm:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8753
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_7

    .line 8754
    iget-object v8, v0, Lcom/android/server/PackageManagerService$BasePermission;->gids:[I

    invoke-static {v4, v8}, Lcom/android/server/PackageManagerService;->appendInts([I[I)[I

    move-result-object v4

    goto :goto_2

    .line 8757
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #eachPerm:Ljava/lang/String;
    :cond_8
    iput-object v4, v6, Lcom/android/server/PackageManagerService$SharedUserSetting;->gids:[I

    goto/16 :goto_0
.end method


# virtual methods
.method addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 8
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "uid"
    .parameter "vc"
    .parameter "pkgFlags"

    .prologue
    .line 8466
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8467
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_1

    .line 8468
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    if-ne v1, p6, :cond_0

    move-object v1, v0

    .line 8482
    :goto_0
    return-object v1

    .line 8471
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 8473
    const/4 v1, 0x0

    goto :goto_0

    .line 8475
    :cond_1
    new-instance v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .end local v0           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V

    .line 8477
    .restart local v0       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    iput p6, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    .line 8478
    invoke-direct {p0, p6, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8479
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8480
    goto :goto_0

    .line 8482
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addSharedUserLP(Ljava/lang/String;II)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .locals 5
    .parameter "name"
    .parameter "uid"
    .parameter "pkgFlags"

    .prologue
    const/4 v4, 0x0

    .line 8486
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8487
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-eqz v0, :cond_1

    .line 8488
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ne v1, p2, :cond_0

    move-object v1, v0

    .line 8501
    :goto_0
    return-object v1

    .line 8491
    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    move-object v1, v4

    .line 8493
    goto :goto_0

    .line 8495
    :cond_1
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p3}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8496
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    iput p2, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8497
    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/PackageManagerService$Settings;->addUserIdLP(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8498
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 8499
    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 8501
    goto :goto_0
.end method

.method disableSystemPackageLP(Ljava/lang/String;)Z
    .locals 7
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 8424
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8425
    .local v2, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v2, :cond_0

    .line 8426
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an installed package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 8445
    :goto_0
    return v3

    .line 8429
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8431
    .local v0, dp:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_2

    .line 8432
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 8433
    iget-object v3, v2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8435
    :cond_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8441
    new-instance v1, Lcom/android/server/PackageManagerService$PackageSetting;

    invoke-direct {v1, v2}, Lcom/android/server/PackageManagerService$PackageSetting;-><init>(Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8442
    .local v1, newp:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-direct {p0, p1, v1}, Lcom/android/server/PackageManagerService$Settings;->replacePackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;)V

    .line 8443
    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #newp:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_2
    move v3, v6

    .line 8445
    goto :goto_0
.end method

.method enableSystemPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 11
    .parameter "name"

    .prologue
    .line 8449
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8450
    .local v9, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v9, :cond_0

    .line 8451
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8452
    const/4 v0, 0x0

    .line 8461
    :goto_0
    return-object v0

    .line 8455
    :cond_0
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 8456
    iget-object v0, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 8458
    :cond_1
    iget-object v2, v9, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v9, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v9, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    iget v6, v9, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    iget v7, v9, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    iget v8, v9, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/PackageManagerService$Settings;->addPackageLP(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;III)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v10

    .line 8460
    .local v10, ret:Lcom/android/server/PackageManagerService$PackageSetting;
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v10

    .line 8461
    goto :goto_0
.end method

.method public getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 3
    .parameter "name"

    .prologue
    .line 10013
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 10014
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10015
    .local v0, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    monitor-exit v1

    return-object v0

    .line 10016
    .end local v0           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getInstallStatus(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 8392
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8393
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8394
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    .line 8396
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 8387
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8388
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getListOfIncompleteInstallPackages()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$PackageSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9261
    new-instance v1, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9262
    .local v1, kList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 9263
    .local v0, its:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 9264
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/PackageManagerService$PackageSetting;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9266
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 9267
    .local v3, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 9268
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9271
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_1
    return-object v4
.end method

.method getPackageLP(Landroid/content/pm/PackageParser$Package;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZZ)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 13
    .parameter "pkg"
    .parameter "origPackage"
    .parameter "realName"
    .parameter "sharedUser"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pkgFlags"
    .parameter "create"
    .parameter "add"

    .prologue
    .line 8352
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 8353
    .local v1, name:Ljava/lang/String;
    iget v8, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v12

    .line 8355
    .local v12, p:Lcom/android/server/PackageManagerService$PackageSetting;
    return-object v12
.end method

.method getReadMessagesLP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9257
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSharedUserLP(Ljava/lang/String;IZ)Lcom/android/server/PackageManagerService$SharedUserSetting;
    .locals 4
    .parameter "name"
    .parameter "pkgFlags"
    .parameter "create"

    .prologue
    .line 8401
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8402
    .local v0, s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    if-nez v0, :cond_1

    .line 8403
    if-nez p3, :cond_0

    .line 8404
    const/4 v1, 0x0

    .line 8420
    :goto_0
    return-object v1

    .line 8406
    :cond_0
    new-instance v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .end local v0           #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {v0, p1, p2}, Lcom/android/server/PackageManagerService$SharedUserSetting;-><init>(Ljava/lang/String;I)V

    .line 8408
    .restart local v0       #s:Lcom/android/server/PackageManagerService$SharedUserSetting;
    invoke-direct {p0, v0}, Lcom/android/server/PackageManagerService$Settings;->newUserIdLP(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    .line 8412
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8415
    iget v1, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    if-ltz v1, :cond_1

    .line 8416
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 8420
    goto :goto_0
.end method

.method public getUserIdLP(I)Ljava/lang/Object;
    .locals 4
    .parameter "uid"

    .prologue
    const/16 v3, 0x2710

    .line 8824
    if-lt p1, v3, :cond_1

    .line 8825
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8826
    .local v0, N:I
    sub-int v1, p1, v3

    .line 8827
    .local v1, index:I
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 8829
    .end local v0           #N:I
    .end local v1           #index:I
    :goto_0
    return-object v2

    .line 8827
    .restart local v0       #N:I
    .restart local v1       #index:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 8829
    .end local v0           #N:I
    .end local v1           #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageManagerService$Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method isEnabledLP(Landroid/content/pm/ComponentInfo;I)Z
    .locals 5
    .parameter "componentInfo"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10020
    and-int/lit16 v1, p2, 0x200

    if-eqz v1, :cond_0

    move v1, v4

    .line 10051
    :goto_0
    return v1

    .line 10023
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10032
    .local v0, packageSettings:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v0, :cond_1

    move v1, v3

    .line 10038
    goto :goto_0

    .line 10040
    :cond_1
    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    iget v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-nez v1, :cond_3

    :cond_2
    move v1, v3

    .line 10043
    goto :goto_0

    .line 10045
    :cond_3
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 10046
    goto :goto_0

    .line 10048
    :cond_4
    iget-object v1, v0, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 10049
    goto :goto_0

    .line 10051
    :cond_5
    iget-boolean v1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0
.end method

.method peekPackageLP(Ljava/lang/String;)Lcom/android/server/PackageManagerService$PackageSetting;
    .locals 1
    .parameter "name"

    .prologue
    .line 8359
    iget-object v0, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/PackageManagerService$PackageSetting;

    return-object p0
.end method

.method readLP()Z
    .locals 33

    .prologue
    .line 9275
    const/16 v29, 0x0

    .line 9276
    .local v29, str:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9278
    :try_start_0
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 9279
    .end local v29           #str:Ljava/io/FileInputStream;
    .local v30, str:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9280
    const/4 v3, 0x4

    const-string v4, "Need to read from backup settings file"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9285
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_0
    move-object/from16 v29, v30

    .line 9293
    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9296
    if-nez v29, :cond_3

    .line 9297
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No settings file found\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9299
    const/4 v3, 0x4

    const-string v4, "No settings file; creating initial state"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9300
    const/4 v3, 0x0

    .line 9433
    :goto_1
    return v3

    .line 9302
    :cond_2
    new-instance v30, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    move-object/from16 v0, v30

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v29           #str:Ljava/io/FileInputStream;
    .restart local v30       #str:Ljava/io/FileInputStream;
    move-object/from16 v29, v30

    .line 9304
    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    :cond_3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 9305
    .local v27, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9309
    :cond_4
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    .local v32, type:I
    const/4 v3, 0x2

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v32

    move v1, v3

    if-ne v0, v1, :cond_4

    .line 9313
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_6

    .line 9314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    const-string v4, "No start tag found in settings file\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9315
    const/4 v3, 0x5

    const-string v4, "No start tag found in package manager settings"

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9316
    const/4 v3, 0x0

    goto :goto_1

    .line 9319
    :cond_6
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v25

    .line 9321
    .local v25, outerDepth:I
    :cond_7
    :goto_2
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/4 v3, 0x1

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_15

    const/4 v3, 0x3

    move/from16 v0, v32

    move v1, v3

    if-ne v0, v1, :cond_8

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v25

    if-le v0, v1, :cond_15

    .line 9323
    :cond_8
    const/4 v3, 0x3

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_7

    const/4 v3, 0x4

    move/from16 v0, v32

    move v1, v3

    if-eq v0, v1, :cond_7

    .line 9328
    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    .line 9329
    .local v31, tagName:Ljava/lang/String;
    const-string v3, "package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 9330
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 9376
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 9377
    .local v16, e:Lorg/xmlpull/v1/XmlPullParserException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9378
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9379
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 9385
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9387
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 9390
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    .end local v16           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 9400
    .local v15, N:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_4
    move/from16 v0, v18

    move v1, v15

    if-ge v0, v1, :cond_19

    .line 9401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/PackageManagerService$Settings$PendingPackage;

    .line 9402
    .local v28, pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->getUserIdLP(I)Ljava/lang/Object;

    move-result-object v19

    .line 9403
    .local v19, idObj:Ljava/lang/Object;
    if-eqz v19, :cond_17

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move v3, v0

    if-eqz v3, :cond_17

    .line 9404
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->realName:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/server/PackageManagerService$SharedUserSetting;

    move-object v7, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->codePath:Ljava/io/File;

    move-object v8, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->resourcePath:Ljava/io/File;

    move-object v9, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->nativeLibraryPathString:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->versionCode:I

    move v11, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->pkgFlags:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v14}, Lcom/android/server/PackageManagerService$Settings;->getPackageLP(Ljava/lang/String;Lcom/android/server/PackageManagerService$PackageSetting;Ljava/lang/String;Lcom/android/server/PackageManagerService$SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;IIZZ)Lcom/android/server/PackageManagerService$PackageSetting;

    move-result-object v26

    .line 9407
    .local v26, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-nez v26, :cond_16

    .line 9408
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create application package for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9400
    .end local v26           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 9331
    .end local v15           #N:I
    .end local v18           #i:I
    .end local v19           #idObj:Ljava/lang/Object;
    .end local v28           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    .restart local v25       #outerDepth:I
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_b
    :try_start_3
    const-string v3, "permissions"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 9332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 9392
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v31           #tagName:Ljava/lang/String;
    .end local v32           #type:I
    :catch_1
    move-exception v3

    move-object/from16 v16, v3

    .line 9393
    .local v16, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9394
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading settings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    .line 9395
    const-string v3, "PackageManager"

    const-string v4, "Error reading package manager settings"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 9333
    .end local v16           #e:Ljava/io/IOException;
    .restart local v25       #outerDepth:I
    .restart local v27       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v31       #tagName:Ljava/lang/String;
    .restart local v32       #type:I
    :cond_c
    :try_start_4
    const-string v3, "permission-trees"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 9334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->readPermissionsLP(Ljava/util/HashMap;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9335
    :cond_d
    const-string v3, "shared-user"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 9336
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readSharedUserLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9337
    :cond_e
    const-string v3, "preferred-packages"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 9339
    const-string v3, "preferred-activities"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9340
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readPreferredActivitiesLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9341
    :cond_f
    const-string v3, "updated-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 9342
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/PackageManagerService$Settings;->readDisabledSysPackageLP(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9343
    :cond_10
    const-string v3, "cleaning-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 9344
    const/4 v3, 0x0

    const-string v4, "name"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9345
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_7

    .line 9346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 9348
    .end local v22           #name:Ljava/lang/String;
    :cond_11
    const-string v3, "renamed-package"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 9349
    const/4 v3, 0x0

    const-string v4, "new"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 9350
    .local v23, nname:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "old"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 9351
    .local v24, oname:Ljava/lang/String;
    if-eqz v23, :cond_7

    if-eqz v24, :cond_7

    .line 9352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 9354
    .end local v23           #nname:Ljava/lang/String;
    .end local v24           #oname:Ljava/lang/String;
    :cond_12
    const-string v3, "last-platform-version"

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 9355
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 9357
    const/4 v3, 0x0

    :try_start_5
    const-string v4, "internal"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 9358
    .local v20, internal:Ljava/lang/String;
    if-eqz v20, :cond_13

    .line 9359
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    .line 9361
    :cond_13
    const/4 v3, 0x0

    const-string v4, "external"

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 9362
    .local v17, external:Ljava/lang/String;
    if-eqz v17, :cond_7

    .line 9363
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 9365
    .end local v17           #external:Ljava/lang/String;
    .end local v20           #internal:Ljava/lang/String;
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 9368
    :cond_14
    :try_start_6
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v27 .. v27}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9370
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 9374
    .end local v31           #tagName:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 9412
    .end local v25           #outerDepth:I
    .end local v27           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v32           #type:I
    .restart local v15       #N:I
    .restart local v18       #i:I
    .restart local v19       #idObj:Ljava/lang/Object;
    .restart local v26       #p:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v28       #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_16
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->copyFrom(Lcom/android/server/PackageManagerService$PackageSettingBase;)V

    goto/16 :goto_5

    .line 9413
    .end local v26           #p:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_17
    if-eqz v19, :cond_18

    .line 9414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not a shared uid\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 9417
    .local v21, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9418
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 9420
    .end local v21           #msg:Ljava/lang/String;
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package setting: package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has shared uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " that is not defined\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 9423
    .restart local v21       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9424
    const/4 v3, 0x6

    move v0, v3

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3700(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 9427
    .end local v19           #idObj:Ljava/lang/Object;
    .end local v21           #msg:Ljava/lang/String;
    .end local v28           #pp:Lcom/android/server/PackageManagerService$Settings$PendingPackage;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPendingPackages:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mReadMessages:Ljava/lang/StringBuilder;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read completed successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packages, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shared uids\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9433
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 9288
    .end local v15           #N:I
    .end local v18           #i:I
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .end local v29           #str:Ljava/io/FileInputStream;
    .restart local v30       #str:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #str:Ljava/io/FileInputStream;
    .restart local v29       #str:Ljava/io/FileInputStream;
    goto/16 :goto_0
.end method

.method setInstallStatus(Ljava/lang/String;I)V
    .locals 2
    .parameter "pkgName"
    .parameter "status"

    .prologue
    .line 8370
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8371
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8372
    invoke-virtual {v0}, Lcom/android/server/PackageManagerService$PackageSetting;->getInstallStatus()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 8373
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallStatus(I)V

    .line 8376
    :cond_0
    return-void
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"
    .parameter "installerPkgName"

    .prologue
    .line 8380
    iget-object v1, p0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8381
    .local v0, p:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v0, :cond_0

    .line 8382
    invoke-virtual {v0, p2}, Lcom/android/server/PackageManagerService$PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    .line 8384
    :cond_0
    return-void
.end method

.method writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 11
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v10, "updated-package"

    const-string v9, "perms"

    const-string v8, "name"

    const-string v7, "item"

    .line 9056
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9057
    const-string v3, "name"

    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v6, v8, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9058
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 9059
    const-string v3, "realName"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9061
    :cond_0
    const-string v3, "codePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9062
    const-string v3, "ft"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9063
    const-string v3, "it"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9064
    const-string v3, "ut"

    iget-wide v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9065
    const-string v3, "version"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9066
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9067
    const-string v3, "resourcePath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9069
    :cond_1
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 9070
    const-string v3, "nativeLibraryPath"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9072
    :cond_2
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_4

    .line 9073
    const-string v3, "userId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9079
    :goto_0
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9080
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v3, :cond_5

    .line 9085
    iget-object v3, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9086
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageManagerService$BasePermission;

    .line 9087
    .local v0, bp:Lcom/android/server/PackageManagerService$BasePermission;
    if-eqz v0, :cond_3

    .line 9090
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9091
    const-string v3, "name"

    invoke-interface {p1, v6, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9092
    const-string v3, "item"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 9076
    .end local v0           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :cond_4
    const-string v3, "sharedUserId"

    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 9096
    :cond_5
    const-string v3, "perms"

    invoke-interface {p1, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9097
    const-string v3, "updated-package"

    invoke-interface {p1, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9098
    return-void
.end method

.method writeLP()V
    .locals 27

    .prologue
    .line 8869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 8874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_1

    .line 8875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 8876
    const-string v23, "PackageManager"

    const-string v24, "Unable to backup package manager settings, current changes will be lost at reboot"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9052
    :cond_0
    :goto_0
    return-void

    .line 8880
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 8881
    const-string v23, "PackageManager"

    const-string v24, "Preserving older settings backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8885
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V

    .line 8888
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8889
    .local v9, fstr:Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8892
    .local v20, str:Ljava/io/BufferedOutputStream;
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 8893
    .local v19, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v23, "utf-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 8894
    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8895
    const-string v23, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 8897
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8899
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8900
    const/16 v23, 0x0

    const-string v24, "internal"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mInternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8901
    const/16 v23, 0x0

    const-string v24, "external"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$Settings;->mExternalSdkPlatform:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8902
    const/16 v23, 0x0

    const-string v24, "last-platform-version"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8904
    const/16 v23, 0x0

    const-string v24, "permission-trees"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissionTrees:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8906
    .local v5, bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 9040
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #str:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v23

    move-object/from16 v7, v23

    .line 9041
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9046
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 9047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    move-result v23

    if-nez v23, :cond_0

    .line 9048
    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to clean up mangled file: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8908
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :cond_3
    const/16 v23, 0x0

    :try_start_1
    const-string v24, "permission-trees"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8910
    const/16 v23, 0x0

    const-string v24, "permissions"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPermissions:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageManagerService$BasePermission;

    .line 8912
    .restart local v5       #bp:Lcom/android/server/PackageManagerService$BasePermission;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 9042
    .end local v5           #bp:Lcom/android/server/PackageManagerService$BasePermission;
    .end local v9           #fstr:Ljava/io/FileOutputStream;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #str:Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v23

    move-object/from16 v7, v23

    .line 9043
    .local v7, e:Ljava/io/IOException;
    const-string v23, "PackageManager"

    const-string v24, "Unable to write package manager settings, current changes will be lost at reboot"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 8914
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :cond_4
    const/16 v23, 0x0

    :try_start_2
    const-string v24, "permissions"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8917
    .local v17, pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_4

    .line 8920
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mDisabledSysPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8921
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/PackageManagerService$Settings;->writeDisabledSysPackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V

    goto :goto_5

    .line 8924
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_6
    const/16 v23, 0x0

    const-string v24, "preferred-activities"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPreferredActivities:Lcom/android/server/IntentResolver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/PackageManagerService$PreferredActivity;

    .line 8926
    .local v16, pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8927
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8928
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 8930
    .end local v16           #pa:Lcom/android/server/PackageManagerService$PreferredActivity;
    :cond_7
    const/16 v23, 0x0

    const-string v24, "preferred-activities"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSharedUsers:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v11           #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/PackageManagerService$SharedUserSetting;

    .line 8933
    .local v22, usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8934
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8935
    const/16 v23, 0x0

    const-string v24, "userId"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->userId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8937
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    move-object/from16 v23, v0

    const-string v24, "sigs"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8938
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8939
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$SharedUserSetting;->grantedPermissions:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 8940
    .local v15, name:Ljava/lang/String;
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8941
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v15

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8942
    const/16 v23, 0x0

    const-string v24, "item"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    .line 8944
    .end local v15           #name:Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    const-string v24, "perms"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8945
    const/16 v23, 0x0

    const-string v24, "shared-user"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_7

    .line 8948
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v22           #usr:Lcom/android/server/PackageManagerService$SharedUserSetting;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_a

    .line 8949
    const/4 v10, 0x0

    .local v10, i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move v0, v10

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 8950
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8951
    const/16 v23, 0x0

    const-string v24, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8952
    const/16 v23, 0x0

    const-string v24, "cleaning-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8949
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 8956
    .end local v10           #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v23

    if-lez v23, :cond_b

    .line 8957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mRenamedPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 8958
    .local v8, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8959
    const/16 v23, 0x0

    const-string v24, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8960
    const/16 v23, 0x0

    const-string v24, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8961
    const/16 v23, 0x0

    const-string v24, "renamed-package"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 8965
    .end local v8           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_b
    const/16 v23, 0x0

    const-string v24, "packages"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8967
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 8969
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8970
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8971
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 8975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mBackupSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 8976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mSettingsFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b4

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 8984
    new-instance v21, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".tmp"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8985
    .local v21, tempFile:Ljava/io/File;
    new-instance v14, Lcom/android/internal/util/JournaledFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 8987
    .local v14, journal:Lcom/android/internal/util/JournaledFile;
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9           #fstr:Ljava/io/FileOutputStream;
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 8988
    .restart local v9       #fstr:Ljava/io/FileOutputStream;
    new-instance v20, Ljava/io/BufferedOutputStream;

    .end local v20           #str:Ljava/io/BufferedOutputStream;
    move-object/from16 v0, v20

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8990
    .restart local v20       #str:Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 8991
    .local v18, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 8992
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    .line 8993
    .local v4, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 8994
    .local v6, dataPath:Ljava/lang/String;
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x2

    if-eqz v23, :cond_d

    const/16 v23, 0x1

    move/from16 v13, v23

    .line 8998
    .local v13, isDebug:Z
    :goto_c
    const-string v23, " "

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-gez v23, :cond_c

    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    const/16 v24, 0x2710

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 9014
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9015
    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9016
    const-string v23, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9017
    move-object v0, v4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9018
    if-eqz v13, :cond_e

    const-string v23, " 1 "

    :goto_d
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9019
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9020
    const-string v23, "\n"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9021
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_b

    .line 9028
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #isDebug:Z
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :catch_2
    move-exception v23

    move-object/from16 v7, v23

    .line 9029
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 9032
    .end local v7           #e:Ljava/lang/Exception;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackageListFilename:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1b4

    const/16 v25, -0x1

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 8994
    .restart local v4       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #dataPath:Ljava/lang/String;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v17       #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    :cond_d
    const/16 v23, 0x0

    move/from16 v13, v23

    goto/16 :goto_c

    .line 9018
    .restart local v13       #isDebug:Z
    :cond_e
    :try_start_5
    const-string v23, " 0 "

    goto :goto_d

    .line 9023
    .end local v4           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v6           #dataPath:Ljava/lang/String;
    .end local v13           #isDebug:Z
    .end local v17           #pkg:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_f
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9024
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 9025
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 9026
    invoke-virtual {v14}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_e
.end method

.method writePackage(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$PackageSetting;)V
    .locals 12
    .parameter "serializer"
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v11, "meta-data"

    const-string v10, "com.verizon.directedAppSMS"

    const-string v9, "name"

    const-string v8, "item"

    .line 9102
    const-string v4, "package"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9103
    const-string v4, "name"

    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v7, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9104
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 9105
    const-string v4, "realName"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9107
    :cond_0
    const-string v4, "codePath"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9108
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9109
    const-string v4, "resourcePath"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9111
    :cond_1
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 9112
    const-string v4, "nativeLibraryPath"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->nativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9114
    :cond_2
    const-string v4, "flags"

    iget v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9116
    const-string v4, "ft"

    iget-wide v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->timeStamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9117
    const-string v4, "it"

    iget-wide v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9118
    const-string v4, "ut"

    iget-wide v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->lastUpdateTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9119
    const-string v4, "version"

    iget v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->versionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9120
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v4, :cond_7

    .line 9121
    const-string v4, "userId"

    iget v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9127
    :goto_0
    iget-boolean v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->uidError:Z

    if-eqz v4, :cond_3

    .line 9128
    const-string v4, "uidError"

    const-string v5, "true"

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9130
    :cond_3
    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    if-eqz v4, :cond_4

    .line 9131
    const-string v4, "enabled"

    iget v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabled:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    const-string v5, "true"

    :goto_1
    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9135
    :cond_4
    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installStatus:I

    if-nez v4, :cond_5

    .line 9136
    const-string v4, "installStatus"

    const-string v5, "false"

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9138
    :cond_5
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 9139
    const-string v4, "installer"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9141
    :cond_6
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->signatures:Lcom/android/server/PackageManagerService$PackageSignatures;

    const-string v5, "sigs"

    iget-object v6, p0, Lcom/android/server/PackageManagerService$Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/PackageManagerService$PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9142
    iget v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_a

    .line 9143
    const-string v4, "perms"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9144
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->sharedUser:Lcom/android/server/PackageManagerService$SharedUserSetting;

    if-nez v4, :cond_9

    .line 9149
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9150
    .local v3, name:Ljava/lang/String;
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9151
    const-string v4, "name"

    invoke-interface {p1, v7, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9152
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 9124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    :cond_7
    const-string v4, "sharedUserId"

    iget v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 9131
    :cond_8
    const-string v5, "false"

    goto :goto_1

    .line 9155
    :cond_9
    const-string v4, "perms"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9165
    :cond_a
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_c

    .line 9166
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageSetting.pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".pkg is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9201
    :cond_b
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 9202
    const-string v4, "disabled-components"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9203
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9204
    .restart local v3       #name:Ljava/lang/String;
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9205
    const-string v4, "name"

    invoke-interface {p1, v7, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9206
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 9167
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    :cond_c
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v4, :cond_b

    .line 9168
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9169
    .local v1, metaDataKey:Ljava/lang/String;
    const-string v4, "com.verizon.directedAppSMS"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 9173
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v5, "com.verizon.directedAppSMS"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    .line 9175
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Meta-data com.verizon.directedAppSMS Application Prefix for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 9178
    :cond_d
    const-string v4, "meta-data"

    invoke-interface {p1, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9179
    const-string v4, "name"

    const-string v4, "com.verizon.directedAppSMS"

    invoke-interface {p1, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9180
    const-string v4, "value"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v6, "com.verizon.directedAppSMS"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9181
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 9182
    const-string v4, "FQN"

    iget-object v5, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9187
    :goto_5
    const-string v4, "meta-data"

    invoke-interface {p1, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 9185
    :cond_e
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FQN for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/server/PackageManagerService$PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 9193
    :cond_f
    const-string v4, "meta-data"

    invoke-interface {p1, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9194
    const-string v4, "name"

    invoke-interface {p1, v7, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9195
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 9196
    .local v2, metaDataValue:Ljava/lang/Object;
    const-string v4, "value"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9197
    const-string v4, "meta-data"

    invoke-interface {p1, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_4

    .line 9208
    .end local v1           #metaDataKey:Ljava/lang/String;
    .end local v2           #metaDataValue:Ljava/lang/Object;
    :cond_10
    const-string v4, "disabled-components"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9210
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_11
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 9211
    const-string v4, "enabled-components"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9212
    iget-object v4, p2, Lcom/android/server/PackageManagerService$PackageSetting;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9213
    .restart local v3       #name:Ljava/lang/String;
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9214
    const-string v4, "name"

    invoke-interface {p1, v7, v9, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9215
    const-string v4, "item"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 9217
    .end local v3           #name:Ljava/lang/String;
    :cond_12
    const-string v4, "enabled-components"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9220
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_13
    const-string v4, "package"

    invoke-interface {p1, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9221
    return-void
.end method

.method writePermission(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/PackageManagerService$BasePermission;)V
    .locals 5
    .parameter "serializer"
    .parameter "bp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "item"

    .line 9225
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9227
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9228
    const-string v1, "name"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->name:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9229
    const-string v1, "package"

    iget-object v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->sourcePackage:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9230
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    if-eqz v1, :cond_0

    .line 9232
    const-string v1, "protection"

    iget v2, p2, Lcom/android/server/PackageManagerService$BasePermission;->protectionLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9237
    :cond_0
    iget v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 9238
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    .line 9240
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 9241
    const-string v1, "type"

    const-string v2, "dynamic"

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9242
    iget v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_1

    .line 9243
    const-string v1, "icon"

    iget v2, v0, Landroid/content/pm/PermissionInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9246
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 9247
    const-string v1, "label"

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9252
    .end local v0           #pi:Landroid/content/pm/PermissionInfo;
    :cond_2
    const-string v1, "item"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9254
    :cond_3
    return-void

    .line 9238
    :cond_4
    iget-object v1, p2, Lcom/android/server/PackageManagerService$BasePermission;->pendingInfo:Landroid/content/pm/PermissionInfo;

    move-object v0, v1

    goto :goto_0
.end method
