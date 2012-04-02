.class public Lcom/sec/android/app/controlpanel/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/PackageInfo$1;,
        Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private static final mHiddenPkgString:[Ljava/lang/String;

.field private static final mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

.field private static final mMustBeShownPkgString:[Ljava/lang/String;


# instance fields
.field private killMethod:Ljava/lang/reflect/Method;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field mDiffProceeNamePkg:Ljava/util/HashMap;
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

.field mHiddenPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIntentActionAfterKilledPkg:Ljava/util/HashMap;
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

.field mMemoryClearHiddennPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMustBeShownPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/controlpanel/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageInfoCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v4

    const-string v1, "com.android.music"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.voicerecorder"

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.app.fm"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkgString:[Ljava/lang/String;

    .line 74
    const/16 v0, 0x2C

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.twlauncher"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.dialertop"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.dialer"

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.providers.telephony"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "system"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.bluetoothtest"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.sec.android.application.csc"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.callsetting"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.samsung.crashnotifier"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.factorytest"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.android.settings.mt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.samsung.mobileTracker.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.osp.app.signin"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.wipereceiver"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.sec.android.app.personalization"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.android.Preconfig"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.sec.android.app.wlantest"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.android.app.dialertab"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.wssyncmldm"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.samsungtest.DataCreate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.google.android.googleapps"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.wallpaper.livepicker"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.sec.android.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.spritemobile.backup.samsung"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.sec.android.app.samsungapps.una"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const-string v2, "com.fede.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "org.adw.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "info.tikuwarez.launcher3"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.gau.go.launcherex"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.neomtel.mxhome"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.nemustech.regina"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.nd.android.pandahomepro"

    aput-object v2, v0, v1

    const/16 v1, 0x2A

    const-string v2, "com.android.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x2B

    const-string v2, "samsung.tw4.nextgen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    .line 135
    new-array v0, v4, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.android.email"

    aput-object v2, v1, v3

    const-string v2, "com.android.email.RESTART_SYNCMANAGER"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkg:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    .line 149
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$1;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    .line 160
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->initInstalledPkgList()V

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private canClearUserData(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 454
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Z
    .locals 7
    .parameter "packageInfoItem"

    .prologue
    const/4 v6, 0x0

    .line 385
    if-nez p1, :cond_0

    move v3, v6

    .line 394
    :goto_0
    return v3

    .line 386
    :cond_0
    monitor-enter p1

    .line 387
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 388
    .local v0, count:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    const-wide/16 v3, 0x1f40

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    :try_start_2
    monitor-exit p1

    goto :goto_0

    .line 396
    .end local v0           #count:Ljava/util/concurrent/CountDownLatch;
    .end local v2           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 392
    .restart local v0       #count:Ljava/util/concurrent/CountDownLatch;
    .restart local v2       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 394
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v6

    goto :goto_0
.end method

.method private getInstalledAppList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v2, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    :cond_0
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/PackageInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 156
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method private getKillPackageMethod()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    const-class v0, Ljava/lang/String;

    const-class v0, Landroid/app/ActivityManager;

    .line 924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 925
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 927
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "restartPackage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 942
    :goto_0
    return-object v0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 942
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :catch_1
    move-exception v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 935
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "forceStopPackage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto :goto_0

    .line 936
    :catch_2
    move-exception v0

    .line 937
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 938
    :catch_3
    move-exception v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method private getLaunchers()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 704
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 705
    .local v3, r:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getRecentTasksList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 649
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v8, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v10, 0x64

    invoke-virtual {v9, v10, v11}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 651
    .local v6, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v3, 0x0

    .line 652
    .local v3, order:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 653
    .local v1, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v9, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 654
    .local v2, intent:Landroid/content/Intent;
    iget-object v9, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_1

    .line 655
    iget-object v9, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 657
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const v10, -0x200001

    and-int/2addr v9, v10

    const/high16 v10, 0x1000

    or-int/2addr v9, v10

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 659
    .local v7, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_0

    .line 661
    iget-object v9, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 662
    .local v5, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v5, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setIntent(Landroid/content/Intent;)V

    .line 663
    add-int/lit8 v4, v3, 0x1

    .end local v3           #order:I
    .local v4, order:I
    invoke-virtual {v5, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setRecentTaskOrder(I)V

    .line 664
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .end local v4           #order:I
    .restart local v3       #order:I
    goto :goto_0

    .line 667
    .end local v1           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v7           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-object v8
.end method

.method private getRunningAppProcesses()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 678
    .local v7, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 679
    .local v0, applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Lcom/sec/android/app/controlpanel/Utils;->getBootTime()J

    move-result-wide v1

    .line 680
    .local v1, bootTime:J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 681
    .local v5, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 683
    iget-object v8, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 684
    .local v6, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v8}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setPid(I)V

    .line 685
    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Lcom/sec/android/app/controlpanel/Utils;->getProcessStartTime(I)J

    move-result-wide v8

    add-long/2addr v8, v1

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setProcessStartTime(J)V

    .line 686
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v3           #i:I
    .end local v5           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    return-object v7
.end method

.method private getRunningServices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v2, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 631
    .local v4, serviceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 632
    .local v3, s:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-eqz v5, :cond_0

    .line 634
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 635
    .local v1, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    .line 636
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    .end local v1           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v3           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    return-object v2
.end method

.method private getRunningTasks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mAm:Landroid/app/ActivityManager;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 603
    .local v4, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 604
    .local v0, i:Landroid/app/ActivityManager$RunningTaskInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v5, :cond_0

    .line 606
    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 608
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 609
    .local v2, pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 612
    .end local v2           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 613
    .restart local v2       #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 615
    .restart local v2       #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    .end local v0           #i:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2           #pkgInfoItem:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    return-object v3
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 722
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 723
    .local v3, r:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    .end local v3           #r:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .parameter "size"

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, appSize:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    :goto_0
    return-object v1

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 365
    goto :goto_0
.end method

.method private getWidgets()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 737
    .local v2, mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 738
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 739
    .local v3, r:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_1
    iget-object v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    .end local v3           #r:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-object v4
.end method

.method private initInstalledPkgList()V
    .locals 7

    .prologue
    .line 199
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 200
    .local v2, mInstalledAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 201
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->updatePakcageInfo(Lcom/sec/android/app/controlpanel/PackageInfoItem;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0

    .line 207
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateExcludePackageList()V

    .line 210
    return-void
.end method

.method private isHiddenPkg(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStoredDataOnly(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .parameter "a"

    .prologue
    const/4 v4, 0x0

    .line 470
    const/4 v0, 0x0

    .line 472
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 475
    :goto_0
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    move v1, v4

    goto :goto_1

    .line 473
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isStoredExternalStorage(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter "a"

    .prologue
    .line 466
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 458
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 462
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPackageCacheFile()Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    .locals 8

    .prologue
    .line 302
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CachedFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, appNameCache:Ljava/io/File;
    const/4 v4, 0x0

    .line 304
    .local v4, ois:Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 306
    .local v2, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 307
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .local v5, ois:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 313
    if-eqz v5, :cond_3

    .line 315
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    move-object v6, v2

    .line 320
    :cond_1
    :goto_1
    return-object v6

    .line 316
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 317
    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 308
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 309
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    .line 313
    if-eqz v4, :cond_1

    .line 315
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 316
    :catch_2
    move-exception v7

    goto :goto_1

    .line 310
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 311
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v6, "PackageInfo"

    const-string v7, "Load Cache Exception"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 313
    if-eqz v4, :cond_0

    .line 315
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 316
    :catch_4
    move-exception v6

    goto :goto_0

    .line 313
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_2

    .line 315
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 317
    :cond_2
    :goto_5
    throw v6

    .line 316
    :catch_5
    move-exception v7

    goto :goto_5

    .line 313
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 310
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v6

    move-object v3, v6

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 308
    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v6

    move-object v3, v6

    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #ois:Ljava/io/ObjectInputStream;
    :cond_3
    move-object v4, v5

    .end local v5           #ois:Ljava/io/ObjectInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method private mustBeShown(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private savePackageCacheFile(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;)Z
    .locals 8
    .parameter "packageCache"

    .prologue
    const/4 v7, 0x0

    .line 327
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CachedFile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, appNameCache:Ljava/io/File;
    const/4 v3, 0x0

    .line 330
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 331
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 336
    if-eqz v4, :cond_0

    .line 338
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 343
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 349
    :cond_0
    const/4 v5, 0x1

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return v5

    .line 339
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move v5, v7

    .line 340
    goto :goto_0

    .line 344
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move v5, v7

    .line 345
    goto :goto_0

    .line 332
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 333
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v5, "PackageInfo"

    const-string v6, "Save Cache Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 336
    if-eqz v3, :cond_1

    .line 338
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 343
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_1
    move v5, v7

    .line 345
    goto :goto_0

    .line 339
    :catch_3
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move v5, v7

    .line 340
    goto :goto_0

    .line 344
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move v5, v7

    .line 345
    goto :goto_0

    .line 336
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 338
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 343
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 345
    :cond_2
    throw v5

    .line 339
    :catch_5
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move v5, v7

    .line 340
    goto :goto_0

    .line 344
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .restart local v2       #ioe:Ljava/io/IOException;
    move v5, v7

    .line 345
    goto :goto_0

    .line 336
    .end local v2           #ioe:Ljava/io/IOException;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 332
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v5

    move-object v1, v5

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method private updateExcludePackageList()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 168
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkgString:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 169
    .local v4, s:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 174
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 180
    .local v4, s:[Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 181
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    aget-object v6, v4, v8

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    .end local v4           #s:[Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getLaunchers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 187
    .local v2, launcher:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 188
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    .end local v2           #launcher:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_7
    return-void
.end method

.method private updatePakcageInfo(Lcom/sec/android/app/controlpanel/PackageInfoItem;Landroid/content/pm/ApplicationInfo;)V
    .locals 6
    .parameter "p"
    .parameter "a"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 414
    invoke-direct {p0, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->canClearUserData(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCanClearData(Z)V

    .line 415
    invoke-direct {p0, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemApp(Z)V

    .line 416
    invoke-direct {p0, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemAppUpdate(Z)V

    .line 417
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setInstalledTime(J)V

    .line 418
    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    .line 419
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    .line 421
    invoke-direct {p0, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isStoredDataOnly(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.android.app.controlpanel.permission.HIDE_RUNNING_APP_LIST"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setHideRunningAppList(Z)V

    .line 432
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isHideRunningAppList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.android.app.controlpanel.permission.MUST_BE_SHOW_RUNNING_APP_LIST"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v5

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMustBeShowRunningAppList(Z)V

    .line 437
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isMustBeShowRunningAppList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.android.app.controlpanel.permission.GET_INTENT_ACTION_AFTER_FORCESTOP"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v5

    :goto_3
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setGetIntentActionAfterForceStop(Z)V

    .line 442
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isGetIntentActionAfterForceStop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".RESTART_PACKAGE_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.sec.android.app.controlpanel.permission.EXCLUDE_MEMORY_CLEAN"

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v5

    :goto_4
    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setGetIntentActionAfterForceStop(Z)V

    .line 447
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isGetIntentActionAfterForceStop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_3
    return-void

    .line 423
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->isStoredExternalStorage(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V

    goto/16 :goto_0

    .line 426
    :cond_5
    invoke-virtual {p1, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setStoredExternalStorage(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 431
    goto/16 :goto_1

    :cond_7
    move v0, v4

    .line 436
    goto :goto_2

    :cond_8
    move v0, v4

    .line 441
    goto :goto_3

    :cond_9
    move v0, v4

    .line 446
    goto :goto_4
.end method


# virtual methods
.method public clearCache()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CachedFile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, appNameCache:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    const-string v1, "PackageInfo"

    const-string v2, "clearCache() OK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    return-void
.end method

.method public getInstallAppPackageList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstalledAppList()Ljava/util/List;

    move-result-object v1

    .line 522
    .local v1, installedPackgeInfoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 523
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemAppUpdate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 525
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    return-object v3
.end method

.method public getIntentActionAfterKilledPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRunningAppPackageList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v4, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v0, existCheck:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v5, runnningPackageInfoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 542
    .local v6, runnningProcess:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningTasks()Ljava/util/List;

    move-result-object v9

    .line 543
    .local v9, runnningTask:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningServices()Ljava/util/List;

    move-result-object v8

    .line 544
    .local v8, runnningService:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRecentTasksList()Ljava/util/List;

    move-result-object v7

    .line 545
    .local v7, runnningRecentTask:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 546
    .local v3, process:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v3, v13}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setTask(Z)V

    .line 547
    invoke-virtual {v3, v13}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    goto :goto_0

    .line 549
    .end local v3           #process:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 550
    .local v11, task:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    .line 551
    invoke-virtual {v11, v14}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setTask(Z)V

    .line 552
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v11}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 556
    .end local v11           #task:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 557
    .local v10, service:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    .line 558
    invoke-virtual {v10, v14}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    .line 559
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v10}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 563
    .end local v10           #service:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 564
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/controlpanel/PackageInfo;->mustBeShown(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 565
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/controlpanel/PackageInfo;->mustBeShown(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isTask()Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isService()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemApp()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSystemAppUpdate()Z

    move-result v12

    if-nez v12, :cond_5

    .line 568
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/sec/android/app/controlpanel/PackageInfo;->isHiddenPkg(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 572
    :cond_8
    if-eqz v2, :cond_5

    .line 573
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 577
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_9
    return-object v4
.end method

.method public isThereAppCanBeKilled(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 947
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 949
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public killAll(I)V
    .locals 21
    .parameter

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 753
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 754
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 755
    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 756
    const/4 v7, 0x1

    .line 757
    const-string v3, "PackageInfo"

    const-string v8, "----------------------------"

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v3, "PackageInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Kill ALL!!! Level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v3, "PackageInfo"

    const-string v8, "----------------------------"

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 761
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSamsungWidgets()Ljava/util/List;

    move-result-object v10

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getWidgets()Ljava/util/List;

    move-result-object v11

    .line 767
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getLaunchers()Ljava/util/List;

    move-result-object v12

    .line 769
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 770
    iget v13, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    if-lez v13, :cond_0

    .line 771
    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 776
    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 778
    :cond_2
    const/4 v3, 0x0

    .line 779
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v6, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 780
    const-string v7, "PackageInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " +processName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v13, v7

    const/4 v14, 0x0

    move/from16 v20, v14

    move v14, v4

    move v4, v6

    move/from16 v6, v20

    :goto_3
    if-ge v6, v13, :cond_10

    aget-object v15, v7, v6

    .line 785
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | +pkgName : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "[killLevel:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 796
    :pswitch_0
    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_0

    .line 810
    :goto_4
    invoke-virtual {v8, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 811
    const/4 v4, 0x2

    .line 812
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 2 check : runningTask!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_3
    move-object v0, v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "android.process.acore"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 818
    const/4 v4, 0x3

    .line 819
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 3 check : acore process!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 822
    const/4 v4, 0x3

    .line 823
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 3 check : samsungWidget!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 826
    const/4 v4, 0x3

    .line 827
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 3 check : widget!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 830
    const/4 v4, 0x3

    .line 831
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 3 check : launcher!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 834
    const/4 v4, 0x3

    .line 835
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 3 IntentActionAfterKilledPkg!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2000

    move-object/from16 v0, v16

    move-object v1, v15

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 843
    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-eqz v16, :cond_9

    .line 849
    :cond_9
    :goto_5
    invoke-virtual {v9, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 850
    const/4 v4, 0x4

    .line 851
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 4 check : runningService!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_a
    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v16, v0

    sparse-switch v16, :sswitch_data_1

    move/from16 v16, v4

    .line 871
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 872
    move-object v0, v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 873
    const/4 v4, 0x5

    .line 874
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 5 check : ProcessName is hiddenPackage!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_7
    sget-object v16, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    aget-object v19, v16, v18

    .line 884
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 885
    const/4 v4, 0x5

    .line 890
    :cond_c
    move v0, v4

    move/from16 v1, p1

    if-gt v0, v1, :cond_d

    .line 891
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " |  \\Killed!! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    .line 893
    add-int/lit8 v14, v14, 0x1

    .line 781
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 798
    :sswitch_0
    const/4 v4, 0x1

    .line 799
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | \\ level 1 check : item.importance:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 802
    :sswitch_1
    const/4 v4, 0x1

    .line 803
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | \\ level 1 check : item.importance:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 846
    :catch_0
    move-exception v16

    .line 847
    const-string v17, "PackageInfo"

    const-string v18, "getApplicationInfo() NameNotFoundException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 855
    :sswitch_2
    const/4 v4, 0x3

    .line 856
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | \\ level 4 check : item.importance:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v4

    .line 857
    goto/16 :goto_6

    .line 859
    :sswitch_3
    const/4 v4, 0x3

    .line 860
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | \\ level 4 check : item.importance:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v4

    .line 861
    goto/16 :goto_6

    .line 863
    :sswitch_4
    const/4 v4, 0x3

    .line 864
    const-string v16, "PackageInfo"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " | \\ level 4 check : item.importance:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v3

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v4

    .line 865
    goto/16 :goto_6

    .line 877
    :cond_e
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 878
    const/4 v4, 0x5

    .line 879
    const-string v16, "PackageInfo"

    const-string v17, " | \\ level 5 check : PackageName is hiddenPackage!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 883
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_8

    :cond_10
    move v6, v4

    move v4, v14

    .line 781
    goto/16 :goto_2

    .line 897
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f060050

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 898
    return-void

    :cond_12
    move/from16 v4, v16

    goto/16 :goto_7

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch

    .line 853
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
    .end sparse-switch
.end method

.method public killPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 906
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 907
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getKillPackageMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    .line 909
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 910
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 912
    .local v0, am:Landroid/app/ActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 921
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 913
    .restart local v0       #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 914
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 915
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 916
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 917
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 918
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public loadCache()V
    .locals 8

    .prologue
    const-string v7, "PackageInfo"

    .line 252
    const-string v5, "PackageInfo"

    const-string v5, "loadCache() start!"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadPackageCacheFile()Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    move-result-object v0

    .line 254
    .local v0, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    if-eqz v0, :cond_1

    .line 255
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    .local v2, entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 257
    .local v4, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->get(Ljava/lang/String;)Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;

    move-result-object v1

    .line 258
    .local v1, cachedItem:Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getCodeSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSize(J)V

    .line 261
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getDataSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSize(J)V

    .line 262
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getCodeSize()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSizeFormatted(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;->getDataSize()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSizeStr(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSizeFormatted(Ljava/lang/String;)V

    .line 264
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    goto :goto_0

    .line 268
    .end local v1           #cachedItem:Lcom/sec/android/app/controlpanel/PackageInfoItemCache$CachedItem;
    .end local v2           #entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    const-string v5, "PackageInfo"

    const-string v5, "loadCache() end!"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public loadIcon(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 3
    .parameter

    .prologue
    .line 961
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;->DefaultAppIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 963
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    const-string v1, "PackageInfo"

    const-string v2, "loadLabel() NameNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 3
    .parameter

    .prologue
    .line 972
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    const-string v1, "PackageInfo"

    const-string v2, "loadLabel() NameNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public loadSize(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 983
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isSizeComputed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 984
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 987
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-boolean v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->succeeded:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    if-eqz v4, :cond_1

    .line 988
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v0, v4, Landroid/content/pm/PackageStats;->codeSize:J

    .line 989
    .local v0, code:J
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    iget-object v4, v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    iget-wide v2, v4, Landroid/content/pm/PackageStats;->dataSize:J

    .line 994
    .local v2, data:J
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSize(J)V

    .line 995
    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSize(J)V

    .line 996
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCodeSizeFormatted(Ljava/lang/String;)V

    .line 997
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSizeStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setDataSizeFormatted(Ljava/lang/String;)V

    .line 998
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSizeComputed(Z)V

    .line 1001
    .end local v0           #code:J
    .end local v2           #data:J
    :cond_0
    return-void

    .line 991
    :cond_1
    const-wide/16 v0, -0x1

    .line 992
    .restart local v0       #code:J
    const-wide/16 v2, -0x1

    .restart local v2       #data:J
    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 356
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/Observer;

    .line 357
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 359
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method public reloadAppName()V
    .locals 4

    .prologue
    .line 241
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 243
    .local v2, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v2           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_0
    return-void
.end method

.method public saveCache()V
    .locals 11

    .prologue
    const-string v10, "PackageInfo"

    .line 275
    const-string v1, "PackageInfo"

    const-string v1, "saveCache() start!"

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;-><init>()V

    .line 277
    .local v0, cache:Lcom/sec/android/app/controlpanel/PackageInfoItemCache;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 278
    .local v7, entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 279
    .local v9, item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeSize()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getDataSize()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/controlpanel/PackageInfoItemCache;->put(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 283
    .end local v7           #entryItem:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    .end local v9           #item:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->savePackageCacheFile(Lcom/sec/android/app/controlpanel/PackageInfoItemCache;)Z

    .line 284
    const-string v1, "PackageInfo"

    const-string v1, "saveCache() end!"

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 954
    return-void
.end method

.method public updateInstalledPackageList(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 222
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/sec/android/app/controlpanel/PackageInfoItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->updatePakcageInfo(Lcom/sec/android/app/controlpanel/PackageInfoItem;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->updateExcludePackageList()V

    .line 233
    return-void

    .line 226
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 227
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPackageInfoCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
