.class public Lcom/android/music/discplus/activity/DiscPlus;
.super Landroid/app/Activity;
.source "DiscPlus.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field batteryMessageBox:Landroid/app/AlertDialog;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerRunCheck:Z

.field private mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

.field private mTopView:Lcom/android/music/discplus/view/TopView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 623
    const-string v0, "discjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    const-class v0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    .line 132
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$1;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mConnection:Landroid/content/ServiceConnection;

    .line 146
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$2;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$2;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 520
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$3;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$3;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$4;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$4;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/TopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/activity/DiscPlus;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/music/discplus/activity/DiscPlus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/music/discplus/activity/DiscPlus;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/music/discplus/activity/DiscPlus;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v12, "activity"

    const-string v11, "DiscPlus"

    .line 561
    const/4 v9, 0x0

    .line 563
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "volume"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 566
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 567
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 571
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v9

    .line 573
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 574
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "DiscPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 576
    const-string v1, "activity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 577
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 579
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "DiscPlus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getMusicMainListCursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 581
    const-string v1, "activity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 582
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    iput-object p0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    .line 175
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x78

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    move v3, v5

    .line 176
    .local v3, isWQVGA:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 177
    const/16 v5, 0x80

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->setScopeRange(I)V

    .line 183
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusUtils;->setDefaultImage(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 185
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusType()V

    .line 186
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->setContentView(I)V

    .line 189
    const v5, 0x7f0c000e

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/view/DiscView;

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 190
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5, v6}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 193
    const v5, 0x7f0c000d

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/view/TopView;

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 195
    const v5, 0x7f0c000c

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/music/discplus/view/PanelSwitcher;

    .line 196
    .local v4, view:Lcom/android/music/discplus/view/PanelSwitcher;
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5, v4}, Lcom/android/music/discplus/view/DiscView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 197
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v5, v4}, Lcom/android/music/discplus/view/TopView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 201
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v5}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 202
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v5}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 204
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v2, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 206
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/music/discplus/activity/DiscPlus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/music/discplus/activity/DiscPlus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void

    .line 175
    .end local v0           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v1           #intentFilterBattery:Landroid/content/IntentFilter;
    .end local v2           #intentMediaStateFilter:Landroid/content/IntentFilter;
    .end local v3           #isWQVGA:Z
    .end local v4           #view:Lcom/android/music/discplus/view/PanelSwitcher;
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    goto/16 :goto_0

    .line 179
    .restart local v3       #isWQVGA:Z
    :cond_1
    const/16 v5, 0x100

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->setScopeRange(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 362
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->clearDiscPlusListInfos()V

    .line 363
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    .line 365
    .local v1, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 367
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->onDestroy()V

    .line 368
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TopView;->onDestroy()V

    .line 373
    .end local v0           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v1           #mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 375
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 377
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v2}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 379
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 385
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 386
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 390
    sparse-switch p1, :sswitch_data_0

    .line 405
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 392
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 395
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 398
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 400
    const/4 v0, 0x1

    goto :goto_1

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 410
    sparse-switch p1, :sswitch_data_0

    .line 431
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 416
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 419
    :sswitch_2
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 422
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    .line 429
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/android/music/discplus/activity/DiscPlus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 321
    .local v5, pm:Landroid/os/PowerManager;
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 323
    .local v0, bIsScreenOn:Z
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPause() : pm.isScreenOn() return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_2

    const-string v8, "true"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-ne v0, v9, :cond_3

    .line 327
    sget-object v1, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 330
    .local v1, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 331
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->showNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v6}, Lcom/android/music/discplus/view/DiscView;->onPause()V

    .line 343
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v6}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 346
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    .line 348
    .local v2, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v2}, Lcom/android/music/discplus/data/DiscPlusData;->clearDiscPlusListInfos()V

    .line 349
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v4

    .line 351
    .local v4, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 352
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v6}, Lcom/android/music/discplus/view/DiscView;->onDestroy()V

    .line 353
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v6}, Lcom/android/music/discplus/view/TopView;->onDestroy()V

    .line 356
    .end local v2           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v4           #mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    :cond_1
    return-void

    .line 323
    :cond_2
    const-string v8, "false"

    goto :goto_0

    .line 333
    .restart local v1       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 334
    .local v3, e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException occured 35:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 337
    .end local v1           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    const-string v7, "onPause() called by LCD off.. do not Show notificationInfno"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 253
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusUtils;->setDefaultImage(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 255
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusType()V

    .line 256
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->setContentView(I)V

    .line 259
    const v2, 0x7f0c000e

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/discplus/view/DiscView;

    iput-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 260
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2, v3}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 263
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/music/discplus/view/TopView;

    iput-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 265
    const v2, 0x7f0c000c

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/music/discplus/view/PanelSwitcher;

    .line 266
    .local v1, view:Lcom/android/music/discplus/view/PanelSwitcher;
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2, v1}, Lcom/android/music/discplus/view/DiscView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 267
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2, v1}, Lcom/android/music/discplus/view/TopView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 268
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 276
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1, v3}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 280
    :cond_0
    new-instance v1, Lcom/android/music/common/util/BatteryChecker;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 281
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    new-array v2, v3, [Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 291
    invoke-static {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    .line 294
    .local v0, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    if-eqz v0, :cond_1

    .line 295
    iget-boolean v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/util/DiscPlusManager;->setMediaScannerRunCheck(Z)V

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->onResume()V

    .line 312
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public switchToMusicPlayer()V
    .locals 6

    .prologue
    .line 454
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/android/music/discplus/activity/DiscPlus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 455
    .local v2, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 457
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 459
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 460
    .local v1, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iget v3, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 461
    iget v3, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 462
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 463
    const/16 v3, 0xd

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 464
    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter.listType :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filter.focusIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filter.manageMode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filter.runingState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    invoke-virtual {v3, p0, v1, v4}, Lcom/android/music/common/manager/MusicAppManager;->releaseDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;Z)Z

    .line 470
    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/music/discplus/view/DiscView;->setVisibility(I)V

    .line 471
    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    const-string v4, "finish discplus..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->finish()V

    .line 473
    return-void
.end method
