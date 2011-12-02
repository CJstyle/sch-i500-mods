.class public Lcom/android/music/discplus/activity/DiscPlus;
.super Landroid/app/Activity;
.source "DiscPlus.java"

# interfaces
.implements Lcom/android/music/common/util/OnLowBatteryListener;
.implements Lcom/android/music/list/interfaces/MusicOrientationChanger;


# static fields
.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field batteryMessageBox:Landroid/app/AlertDialog;

.field private mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerRunCheck:Z

.field private mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mTopView:Lcom/android/music/discplus/view/TopView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 556
    const-string v0, "discjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-class v0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    .line 88
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$1;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mConnection:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$2;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$2;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 449
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$4;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$4;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 473
    new-instance v0, Lcom/android/music/discplus/activity/DiscPlus$5;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/activity/DiscPlus$5;-><init>(Lcom/android/music/discplus/activity/DiscPlus;)V

    iput-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/player/service/ICorePlayerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/discplus/activity/DiscPlus;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/DiscView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/discplus/view/TopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/discplus/activity/DiscPlus;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/discplus/activity/DiscPlus;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/music/discplus/activity/DiscPlus;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/music/discplus/activity/DiscPlus;)Lcom/android/music/common/util/BatteryChecker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/music/discplus/activity/DiscPlus;Lcom/android/music/common/util/BatteryChecker;)Lcom/android/music/common/util/BatteryChecker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    return-object p1
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const-string v12, "com.android.music"

    const-string v11, "activity"

    .line 489
    const/4 v9, 0x0

    .line 491
    .local v9, result:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 492
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

    .line 494
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 496
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 497
    const-string v1, "external"

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 499
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v9

    .line 501
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 502
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "DiscPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException getMusicMainListCursor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 506
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 507
    .local v6, am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v6           #am:Landroid/app/ActivityManager;
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 511
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 514
    const-string v1, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 515
    .restart local v6       #am:Landroid/app/ActivityManager;
    const-string v1, "com.android.music"

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeOrientation()V
    .locals 1

    .prologue
    .line 571
    sget-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mShowPopup:Z

    if-eqz v0, :cond_0

    .line 581
    :cond_0
    return-void
.end method

.method public getCorePlayer()Lcom/android/music/player/service/ICorePlayerService;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 560
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public isOrientation()I
    .locals 6

    .prologue
    .line 364
    const/4 v2, 0x0

    .line 366
    .local v2, mDisplay:Landroid/view/Display;
    const-string v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 367
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 370
    .local v1, dw:I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 371
    .local v0, dh:I
    const/4 v3, 0x3

    .line 372
    .local v3, orientation:I
    if-ge v1, v0, :cond_1

    .line 373
    const/4 v3, 0x1

    .line 378
    :cond_0
    :goto_0
    return v3

    .line 374
    :cond_1
    if-le v1, v0, :cond_0

    .line 375
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 406
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iput-object p0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x78

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    move v3, v5

    .line 125
    .local v3, isWQVGA:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 126
    const/16 v5, 0x80

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->setScopeRange(I)V

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusUtils;->setDefaultImage(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 133
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusType()V

    .line 134
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->setContentView(I)V

    .line 137
    const v5, 0x7f0c000e

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/view/DiscView;

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 138
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5, v6}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 141
    const v5, 0x7f0c000d

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/music/discplus/view/TopView;

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 143
    const v5, 0x7f0c000c

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/music/discplus/view/PanelSwitcher;

    .line 144
    .local v4, view:Lcom/android/music/discplus/view/PanelSwitcher;
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5, v4}, Lcom/android/music/discplus/view/DiscView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 145
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v5, v4}, Lcom/android/music/discplus/view/TopView;->setPanelSwitcher(Lcom/android/music/discplus/view/PanelSwitcher;)V

    .line 149
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v5}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 150
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v5}, Lcom/android/music/common/util/MusicPlayerUtil;->registerIntentFilter(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 152
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v2, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v5, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/android/music/discplus/activity/DiscPlus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/android/music/discplus/activity/DiscPlus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void

    .line 124
    .end local v0           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v1           #intentFilterBattery:Landroid/content/IntentFilter;
    .end local v2           #intentMediaStateFilter:Landroid/content/IntentFilter;
    .end local v3           #isWQVGA:Z
    .end local v4           #view:Lcom/android/music/discplus/view/PanelSwitcher;
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    goto/16 :goto_0

    .line 128
    .restart local v3       #isWQVGA:Z
    :cond_1
    const/16 v5, 0x100

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->setScopeRange(I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 292
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v0}, Lcom/android/music/discplus/data/DiscPlusData;->clearDiscPlusListInfos()V

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 294
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    .line 295
    .local v1, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 297
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->onDestroy()V

    .line 298
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/TopView;->onDestroy()V

    .line 303
    .end local v0           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v1           #mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mPlayerUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/music/discplus/activity/DiscPlus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 308
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v2, :cond_2

    .line 309
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 310
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 312
    :cond_1
    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 314
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 315
    return-void
.end method

.method public onFinishActivity()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/BatteryChecker;->mFinishApp:Z

    .line 567
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    .line 568
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    sparse-switch p1, :sswitch_data_0

    .line 334
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 321
    :sswitch_0
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 324
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 327
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 329
    const/4 v0, 0x1

    goto :goto_1

    .line 319
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
    .line 339
    sparse-switch p1, :sswitch_data_0

    .line 360
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 345
    :sswitch_1
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 348
    :sswitch_2
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, p2}, Lcom/android/music/discplus/view/DiscView;->processKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 351
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->switchToMusicPlayer()V

    .line 358
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 339
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
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 251
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/music/discplus/activity/DiscPlus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 252
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 254
    .local v0, bIsScreenOn:Z
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPause() : pm.isScreenOn() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_2

    const-string v7, "true"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-ne v0, v8, :cond_3

    .line 259
    :try_start_0
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v5

    if-ne v5, v8, :cond_0

    .line 260
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->showNotificationInfo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5}, Lcom/android/music/discplus/view/DiscView;->onPause()V

    .line 272
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v5}, Lcom/android/music/common/util/BatteryChecker;->removeCallback()V

    .line 275
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v1

    .line 278
    .local v1, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    invoke-virtual {v1}, Lcom/android/music/discplus/data/DiscPlusData;->clearDiscPlusListInfos()V

    .line 279
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v3

    .line 281
    .local v3, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/music/discplus/util/DiscPlusManager;->setDiscView(Lcom/android/music/discplus/view/DiscView;)V

    .line 282
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v5}, Lcom/android/music/discplus/view/DiscView;->onDestroy()V

    .line 283
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mTopView:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v5}, Lcom/android/music/discplus/view/TopView;->onDestroy()V

    .line 286
    .end local v1           #discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v3           #mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    :cond_1
    return-void

    .line 254
    :cond_2
    const-string v7, "false"

    goto :goto_0

    .line 262
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 263
    .local v2, e:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured 35:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    const-string v6, "onPause() called by LCD off.. do not Show notificationInfno"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/android/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    invoke-virtual {v1, v4}, Lcom/android/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 217
    :cond_0
    new-instance v1, Lcom/android/music/common/util/BatteryChecker;

    iget-object v2, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-direct {v1, v2, p0}, Lcom/android/music/common/util/BatteryChecker;-><init>(Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/common/util/OnLowBatteryListener;)V

    iput-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    .line 218
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mBatteryChecker:Lcom/android/music/common/util/BatteryChecker;

    new-array v2, v4, [Landroid/app/Activity;

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    invoke-static {p0}, Lcom/android/music/discplus/activity/DiscPlus;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v0

    .line 224
    .local v0, mgr:Lcom/android/music/discplus/util/DiscPlusManager;
    if-eqz v0, :cond_1

    .line 225
    iget-boolean v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mMediaScannerRunCheck:Z

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/util/DiscPlusManager;->setMediaScannerRunCheck(Z)V

    .line 230
    :cond_1
    invoke-static {v3, v3}, Landroid/os/Power;->acquireDVFSlock(II)I

    .line 242
    iget-object v1, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v1}, Lcom/android/music/discplus/view/DiscView;->onResume()V

    .line 243
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public showLowBatteryMsg(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 418
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    const-string v6, "showLowBatteryMsg() is called"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v5, :cond_0

    .line 421
    :try_start_0
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 431
    .local v2, mLayoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 432
    .local v3, myView:Landroid/view/View;
    const v5, 0x7f0c0032

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 433
    .local v4, text:Landroid/widget/TextView;
    const v5, 0x7f0a00d6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 434
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00a5

    new-instance v7, Lcom/android/music/discplus/activity/DiscPlus$3;

    invoke-direct {v7, p0, p1}, Lcom/android/music/discplus/activity/DiscPlus$3;-><init>(Lcom/android/music/discplus/activity/DiscPlus;Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 446
    iget-object v5, p0, Lcom/android/music/discplus/activity/DiscPlus;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 447
    return-void

    .line 422
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #mLayoutInflater:Landroid/view/LayoutInflater;
    .end local v3           #myView:Landroid/view/View;
    .end local v4           #text:Landroid/widget/TextView;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 423
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {p0}, Lcom/android/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 424
    const-string v5, "MusicPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException occured :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchToMusicPlayer()V
    .locals 6

    .prologue
    .line 383
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/android/music/discplus/activity/DiscPlus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 384
    .local v2, mSearchManager:Landroid/app/SearchManager;
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 386
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 388
    .local v0, discPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    new-instance v1, Lcom/android/music/common/manager/MusicAppManageFilter;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 389
    .local v1, filter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iget v3, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 390
    iget v3, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 391
    const/4 v3, 0x2

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 392
    const/16 v3, 0xd

    iput v3, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 393
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

    .line 398
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    invoke-virtual {v3, p0, v1, v4}, Lcom/android/music/common/manager/MusicAppManager;->releaseDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;Z)Z

    .line 399
    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/music/discplus/view/DiscView;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/android/music/discplus/activity/DiscPlus;->TAG:Ljava/lang/String;

    const-string v4, "finish discplus..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/android/music/discplus/activity/DiscPlus;->finish()V

    .line 402
    return-void
.end method
