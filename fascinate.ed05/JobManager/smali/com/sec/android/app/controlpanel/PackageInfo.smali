.class public Lcom/sec/android/app/controlpanel/PackageInfo;
.super Ljava/lang/Object;
.source "PackageInfo.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;,
        Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
    }
.end annotation


# static fields
.field private static final ATTR_CODE_SIZE:Ljava/lang/String; = "cs"

.field private static final ATTR_CODE_SIZE_STRS:Ljava/lang/String; = "cfs"

.field private static final ATTR_DATA_SIZE:Ljava/lang/String; = "ds"

.field private static final ATTR_DATA_SIZE_STRS:Ljava/lang/String; = "dfs"

.field private static final ATTR_PKGS:Ljava/lang/String; = "ps"

.field private static final DBG:Z = false

.field private static final DEBUG_TIME:Z = false

.field private static final HANDLER_MESSAGE_BASE:I = 0x0

.field public static final INSTALLED:I = 0x1

.field private static final MESSAGE_COMPUTE_BULK_SIZE:I = 0x1

.field private static final MESSAGE_COMPUTE_END:I = 0x2

.field private static final MESSAGE_START_LOAD_PKG_INFO:I = 0x6

.field private static final MESSAGE_UPDATE_PKG_INFO:I = 0x4

.field private static final MESSAGE_UPDATE_PKG_INFO_END:I = 0x5

.field public static final RUNNING:I = 0x0

.field private static final SIZE_INVALID:I = -0x1

.field static final TAG:Ljava/lang/String; = "AppInfo"

.field private static instance:Lcom/sec/android/app/controlpanel/PackageInfo;

.field private static final mDiffProceeNamePkgString:[[Ljava/lang/String;

.field private static final mHiddenPkgString:[Ljava/lang/String;

.field private static final mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

.field private static final mMemoryClearHiddennPkgString:[Ljava/lang/String;

.field private static final mMustBeShownPkgString:[Ljava/lang/String;

.field private static final mProtectedPkgString:[Ljava/lang/String;


# instance fields
.field private killMethod:Ljava/lang/reflect/Method;

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

.field private mHandler:Landroid/os/Handler;

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

.field private mInstalledPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPkgListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
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

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

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

.field private mPkgInfoCache:Ljava/util/HashMap;
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

.field private mPkgInfoObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field mProtectedPkg:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

.field private mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mProtectedPkgString:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.youtube"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v4

    const-string v1, "com.android.music"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.voicerecorder"

    aput-object v1, v0, v6

    const-string v1, "com.sec.android.app.fm"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkgString:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x2A

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.twlauncher"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.dialertop"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.dialer"

    aput-object v1, v0, v6

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "system"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.android.stk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.bluetoothtest"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.sec.android.application.csc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.callsetting"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.crashnotifier"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.factorytest"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.android.settings.mt"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.samsung.mobileTracker.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.osp.app.signin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.wipereceiver"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.sec.android.app.personalization"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.android.Preconfig"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.sec.android.app.wlantest"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.sec.android.app.dialertab"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.wssyncmldm"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.samsungtest.DataCreate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.google.android.googleapps"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.android.wallpaper.livepicker"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.sec.android.voip"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.spritemobile.backup.samsung"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.sec.android.app.samsungapps.una"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.fede.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "org.adw.launcher"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "info.tikuwarez.launcher3"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.gau.go.launcherex"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.neomtel.mxhome"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.nemustech.regina"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.nd.android.pandahomepro"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.android.launcher"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    .line 106
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.widgetapp.infoalarm"

    aput-object v1, v0, v4

    const-string v1, "com.android.providers.calendar"

    aput-object v1, v0, v5

    const-string v1, "com.sec.android.app.minidiary"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkgString:[Ljava/lang/String;

    .line 115
    new-array v0, v4, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v3

    const-string v2, "android.process.acore"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkgString:[[Ljava/lang/String;

    .line 122
    new-array v0, v4, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.android.email"

    aput-object v2, v1, v3

    const-string v2, "com.android.email.RESTART_SYNCMANAGER"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    .line 128
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    .line 129
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mProtectedPkg:Ljava/util/Set;

    .line 130
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    .line 131
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkg:Ljava/util/HashMap;

    .line 133
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    .line 163
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    .line 412
    new-instance v4, Lcom/sec/android/app/controlpanel/PackageInfo$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/PackageInfo$1;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHandler:Landroid/os/Handler;

    .line 174
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 177
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mProtectedPkgString:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 178
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mProtectedPkg:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkgString:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 181
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkgString:[[Ljava/lang/String;

    .local v0, arr$:[[Ljava/lang/String;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 184
    .local v3, s:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkg:Ljava/util/HashMap;

    aget-object v5, v3, v7

    aget-object v6, v3, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    .end local v3           #s:[Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkgString:[[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 187
    .restart local v3       #s:[Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    aget-object v5, v3, v7

    aget-object v6, v3, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 189
    .end local v3           #s:[Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 190
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 192
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkgString:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 193
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 195
    .end local v3           #s:Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    invoke-direct {v4, p0}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;-><init>(Lcom/sec/android/app/controlpanel/PackageInfo;)V

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    .line 196
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const v5, 0x7f060003

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->initInstalledPkgList()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/controlpanel/PackageInfo;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;)Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/controlpanel/PackageInfo;Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadIconAndLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/controlpanel/PackageInfo;)Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/PackageInfo;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getCodeSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/PackageInfo;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->getDataSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/controlpanel/PackageInfo;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/controlpanel/PackageInfo;->getSizeStr(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/controlpanel/PackageInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/controlpanel/PackageInfo;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private addObservedPkgList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, packageInfoItem:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 233
    .local v1, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1           #p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_1
    return-void
.end method

.method private canClearUserData(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter "a"

    .prologue
    .line 506
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

.method private computeSizeOfPackage(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 3
    .parameter "packageInfoItem"

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 288
    :cond_0
    monitor-enter p1

    .line 289
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 290
    .local v0, count:Ljava/util/concurrent/CountDownLatch;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeObserver:Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/controlpanel/PackageInfo$SizeObserver;->invokeGetSize(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :goto_1
    :try_start_2
    monitor-exit p1

    goto :goto_0

    .end local v0           #count:Ljava/util/concurrent/CountDownLatch;
    .end local v1           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 294
    .restart local v0       #count:Ljava/util/concurrent/CountDownLatch;
    .restart local v1       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static destroy()V
    .locals 2

    .prologue
    .line 873
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 877
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    monitor-enter v0

    .line 878
    :try_start_0
    sget-object v1, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->onDestroy()V

    .line 879
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 880
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCodeSize(Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "ps"

    .prologue
    .line 252
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 253
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getDataSize(Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "ps"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 258
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/PackageInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 170
    :cond_0
    sget-object v0, Lcom/sec/android/app/controlpanel/PackageInfo;->instance:Lcom/sec/android/app/controlpanel/PackageInfo;

    return-object v0
.end method

.method private getKillPackageMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    const-class v2, Ljava/lang/String;

    const-class v2, Landroid/app/ActivityManager;

    .line 830
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 831
    .local v1, sdkVersion:I
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 833
    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "restartPackage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 848
    :goto_0
    return-object v2

    .line 834
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 835
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 848
    .end local v0           #e:Ljava/lang/SecurityException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 836
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 837
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 841
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_1
    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "forceStopPackage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    goto :goto_0

    .line 842
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 843
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 844
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 845
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method private getSizeStr(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "size"

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, appSize:Ljava/lang/CharSequence;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 265
    :goto_0
    return-object v1

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 265
    goto :goto_0
.end method

.method private isHiddenPkg(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 478
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
    .line 510
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
    .line 514
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

.method private loadIconAndLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 302
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    if-ne v1, v2, :cond_2

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setAppName(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private mustBeShown(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMustBeShownPkg:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDestroy()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->requestExitAndWait()V

    .line 889
    :cond_0
    return-void
.end method


# virtual methods
.method public createPakcageInfo(Landroid/content/pm/ApplicationInfo;I)Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .locals 3
    .parameter "a"
    .parameter "pid"

    .prologue
    .line 487
    new-instance v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, p:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mProtectedPkg:Ljava/util/Set;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCanKilled(Z)V

    .line 497
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->canClearUserData(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setCanClearData(Z)V

    .line 498
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemApp(Z)V

    .line 499
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemAppUpdate(Z)V

    .line 500
    invoke-virtual {v0, p2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setPid(I)V

    .line 502
    return-object v0
.end method

.method getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 859
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    move-object v0, p0

    goto :goto_0
.end method

.method public getIntentActionAfterKilledPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mIntentActionAfterKilledPkg:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getRunningPackageCount()I
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningPackageInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRunningPackageInfo()Ljava/util/List;
    .locals 34
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
    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "activity"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 540
    .local v3, am:Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 541
    const/16 v30, 0x0

    .line 727
    :goto_0
    return-object v30

    .line 544
    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v20, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 557
    .local v25, runningTaskPackage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 558
    .local v23, runningServicePackage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 561
    .local v21, runningProcessPackage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v30, 0x3e8

    move-object v0, v3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v24

    .line 562
    .local v24, runningTaskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 563
    .local v5, i:Landroid/app/ActivityManager$RunningTaskInfo;
    move-object v0, v5

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    move/from16 v30, v0

    if-lez v30, :cond_1

    .line 564
    move-object v0, v5

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object v0, v5

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 566
    move-object v0, v5

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 569
    :cond_2
    move-object v0, v5

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 570
    move-object v0, v5

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    .end local v5           #i:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    const/16 v30, 0xc8

    const/16 v31, 0x0

    move-object v0, v3

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v18

    .line 581
    .local v18, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v22, runningRecentTaskIntent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/Intent;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v12

    .line 583
    .local v12, numTasks:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v12, :cond_6

    .line 584
    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 585
    .local v8, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v9, Landroid/content/Intent;

    move-object v0, v8

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 586
    .local v9, intent:Landroid/content/Intent;
    move-object v0, v8

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 587
    move-object v0, v8

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object v0, v9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    :cond_4
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v30

    const v31, -0x200001

    and-int v30, v30, v31

    const/high16 v31, 0x1000

    or-int v30, v30, v31

    move-object v0, v9

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object v1, v9

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 591
    .local v19, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v19, :cond_5

    .line 593
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 604
    .end local v8           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v19           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_6
    const/16 v30, 0x3e8

    move-object v0, v3

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v28

    .line 605
    .local v28, serviceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 606
    .local v26, s:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 608
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 618
    .end local v26           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_8
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v14, packagePid:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 620
    .local v4, applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 621
    .local v10, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v5, 0x0

    :goto_5
    move-object v0, v10

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move v0, v5

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 622
    move-object v0, v10

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v30, v0

    aget-object v30, v30, v5

    move-object v0, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 624
    :cond_9
    move-object v0, v10

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 625
    move-object v0, v10

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object v0, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_a
    move-object v0, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 634
    :pswitch_0
    move-object v0, v10

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 644
    :sswitch_0
    move-object v0, v10

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 653
    .end local v10           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4           #applicaitonInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .line 655
    .local v13, p:Landroid/content/pm/ApplicationInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    .line 656
    .local v29, task:Z
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    .line 657
    .local v27, service:Z
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 659
    .local v17, process:Z
    if-nez v29, :cond_d

    if-eqz v27, :cond_c

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->mustBeShown(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 666
    :cond_d
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->mustBeShown(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_e

    if-nez v29, :cond_e

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 671
    :cond_e
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isHiddenPkg(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_c

    .line 676
    const/4 v15, 0x0

    .line 677
    .local v15, pid:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkg:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 678
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #pid:Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .line 679
    .restart local v15       #pid:Ljava/lang/Integer;
    if-nez v15, :cond_f

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mDiffProceeNamePkg:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #pid:Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .line 687
    .restart local v15       #pid:Ljava/lang/Integer;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 688
    .local v16, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v16, :cond_c

    .line 692
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setIntent(Landroid/content/Intent;)V

    .line 693
    if-nez v15, :cond_14

    const/16 v30, -0x1

    :goto_8
    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setPid(I)V

    .line 694
    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setTask(Z)V

    .line 695
    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setService(Z)V

    .line 697
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 698
    .restart local v26       #s:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 699
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setComponentName(Landroid/content/ComponentName;)V

    .line 704
    .end local v26           #s:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_11
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemApp(Z)V

    .line 705
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v30

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setSystemAppUpdate(Z)V

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->loadIconAndLabel(Lcom/sec/android/app/controlpanel/PackageInfoItem;)V

    .line 709
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v30

    const-wide/16 v32, 0x0

    cmp-long v30, v30, v32

    if-nez v30, :cond_12

    .line 710
    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v32

    aput v32, v30, v31

    move-object v0, v3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v30, v30, v31

    invoke-virtual/range {v30 .. v30}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v11

    .line 711
    .local v11, memUsage:I
    if-eqz v11, :cond_c

    .line 715
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->setMemUsage(J)V

    .line 720
    .end local v11           #memUsage:I
    :cond_12
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 684
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v16           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_13
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #pid:Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .restart local v15       #pid:Ljava/lang/Integer;
    goto/16 :goto_7

    .line 693
    .restart local v16       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_14
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_8

    .end local v13           #p:Landroid/content/pm/ApplicationInfo;
    .end local v15           #pid:Ljava/lang/Integer;
    .end local v16           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v17           #process:Z
    .end local v27           #service:Z
    .end local v29           #task:Z
    :cond_15
    move-object/from16 v30, v20

    .line 727
    goto/16 :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 634
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x190 -> :sswitch_0
        0x1f4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getThirdPartyPkgList()Ljava/util/List;
    .locals 6
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
    .line 518
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 534
    :goto_0
    return-object v4

    .line 520
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v3, retList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 526
    .local v1, p:Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 527
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 528
    .local v2, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_1

    .line 529
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #p:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    move-object v4, v3

    .line 534
    goto :goto_0
.end method

.method public initInstalledPkgList()V
    .locals 7

    .prologue
    .line 204
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 208
    .local v2, p:Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgListMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    .end local v2           #p:Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    monitor-enter v4

    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 213
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    iget-object v4, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 215
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 216
    .local v0, a:Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 217
    const/4 v5, -0x1

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/controlpanel/PackageInfo;->createPakcageInfo(Landroid/content/pm/ApplicationInfo;I)Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-result-object v3

    .line 218
    .local v3, pkg:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoCache:Ljava/util/HashMap;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v0           #a:Landroid/content/pm/ApplicationInfo;
    .end local v3           #pkg:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 213
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 221
    :cond_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    return-void
.end method

.method public killAll(I)V
    .locals 23
    .parameter "level"

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 732
    .local v3, am:Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v17

    .line 734
    .local v17, processInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v13, 0x1

    .line 735
    .local v13, killLevel:I
    const-string v18, "AppInfo"

    const-string v19, "----------------------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v18, "AppInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Kill ALL!!! Level:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v18, "AppInfo"

    const-string v19, "----------------------------"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v7, 0x0

    .line 740
    .local v7, count:I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 741
    .local v12, item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v0, v12

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 749
    :pswitch_0
    move-object v0, v12

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 768
    :goto_0
    iget-object v5, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #len$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v14, :cond_0

    aget-object v16, v5, v11

    .line 770
    .local v16, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 771
    .local v4, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mInstalledPkgList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 772
    .local v2, a:Landroid/content/pm/ApplicationInfo;
    move-object v0, v2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 773
    move-object v4, v2

    .line 778
    .end local v2           #a:Landroid/content/pm/ApplicationInfo;
    :cond_2
    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->isSystemAppUpdate(Landroid/content/pm/ApplicationInfo;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 782
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mMemoryClearHiddennPkg:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 783
    .local v8, hiddenPkgName:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 784
    const/4 v13, 0x5

    .line 789
    .end local v8           #hiddenPkgName:Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/sec/android/app/controlpanel/PackageInfo;->mHiddenPkgString:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v15, v6

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v15, :cond_6

    aget-object v8, v6, v10

    .line 790
    .restart local v8       #hiddenPkgName:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 791
    const/4 v13, 0x5

    .line 796
    .end local v8           #hiddenPkgName:Ljava/lang/String;
    :cond_6
    move v0, v13

    move/from16 v1, p1

    if-gt v0, v1, :cond_7

    .line 800
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/PackageInfo;->killPackage(Ljava/lang/String;)V

    .line 801
    add-int/lit8 v7, v7, 0x1

    .line 768
    :cond_7
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_1

    .line 751
    .end local v4           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v15           #len$:I
    .end local v16           #pkgName:Ljava/lang/String;
    :sswitch_0
    const/4 v13, 0x3

    .line 752
    goto/16 :goto_0

    .line 754
    :sswitch_1
    const/4 v13, 0x3

    .line 755
    goto/16 :goto_0

    .line 757
    :sswitch_2
    const/4 v13, 0x3

    .line 758
    goto/16 :goto_0

    .line 760
    :sswitch_3
    const/4 v13, 0x2

    .line 761
    goto/16 :goto_0

    .line 763
    :sswitch_4
    const/4 v13, 0x1

    .line 764
    goto/16 :goto_0

    .line 789
    .restart local v4       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v8       #hiddenPkgName:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 805
    .end local v4           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #hiddenPkgName:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #item:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v15           #len$:I
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f060050

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 806
    return-void

    .line 741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 749
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method

.method public killPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 812
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 813
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getKillPackageMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->killMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 816
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 818
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

    .line 827
    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 819
    .restart local v0       #am:Landroid/app/ActivityManager;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 820
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 821
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 822
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 823
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 824
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 226
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

    .line 227
    .local v1, o:Lcom/sec/android/app/controlpanel/Observer;
    invoke-interface {v1, p0}, Lcom/sec/android/app/controlpanel/Observer;->update(Lcom/sec/android/app/controlpanel/Observable;)V

    goto :goto_0

    .line 229
    .end local v1           #o:Lcom/sec/android/app/controlpanel/Observer;
    :cond_0
    return-void
.end method

.method public refreshObservedPkgList(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, packageInfoItem:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mSizeComputor:Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfo$TaskRunner;->requestExitAndWait()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mPkgInfoObserverList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 243
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/PackageInfo;->addObservedPkgList(Ljava/util/List;)V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 871
    return-void
.end method

.method public startGettingPackageInformation()V
    .locals 4

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    return-void
.end method

.method public uninstallPkg(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 460
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 461
    .local v1, uninstallIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 465
    return-void
.end method

.method public unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/PackageInfo;->mObserver:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 867
    :cond_0
    return-void
.end method
