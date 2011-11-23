.class public Lcom/sec/android/app/carcradle/CarCradleMain;
.super Landroid/app/Activity;
.source "CarCradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

.field private mBubble:Landroid/widget/FrameLayout;

.field private mCarModeEnabled:Z

.field private mConatacts:Landroid/widget/TextView;

.field private mDisclaimerShown:Z

.field private mDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableVoiceSearch:Z

.field private mGoHome:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHasVoiceSearch:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMusic:Landroid/widget/TextView;

.field private mNavigation:Landroid/widget/TextView;

.field mPrefs:Landroid/content/SharedPreferences;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSearch:Landroid/widget/TextView;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mSpeakerMode:Z

.field private mStarted:Z

.field private mToast:Landroid/widget/Toast;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mViewMap:Landroid/widget/TextView;

.field private mVoiceSearch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    .line 68
    iput-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->listener:Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

    .line 315
    new-instance v0, Lcom/sec/android/app/carcradle/CarCradleMain$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$5;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 356
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/carcradle/CarCradleMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/carcradle/CarCradleMain;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/carcradle/CarCradleMain;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mBubble:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/carcradle/CarCradleMain;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/carcradle/CarCradleMain;->setPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method private registerTelephonyListener()V
    .locals 3

    .prologue
    .line 345
    const-string v1, "CarCradleMain"

    const-string v2, "registerTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 347
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->listener:Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 348
    return-void
.end method

.method private setPreference(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 282
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void
.end method

.method private showDisclaimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "always_show_disclaimer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iget-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->showDialog(I)V

    .line 289
    iput-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    goto :goto_0
.end method

.method private unregisterTelephonyListener()V
    .locals 3

    .prologue
    .line 351
    const-string v1, "CarCradleMain"

    const-string v2, "unregisterTelephonyListener() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 353
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->listener:Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    return-void
.end method

.method private updateSpeaker()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    const-string v8, "audio"

    const-string v7, "CarCradleMain"

    .line 380
    iget-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    if-eqz v3, :cond_2

    .line 382
    iput-boolean v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    .line 383
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 385
    .local v1, mAudio:Landroid/media/AudioManager;
    const-string v3, "CarCradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External Speaker isExtraSpeakerDockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v3, "state"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    .local v2, speakerDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lcom/sec/android/app/carcradle/CarCradleMain$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$6;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 413
    .end local v2           #speakerDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 402
    .end local v1           #mAudio:Landroid/media/AudioManager;
    :cond_2
    iput-boolean v6, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    .line 403
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 405
    .restart local v1       #mAudio:Landroid/media/AudioManager;
    const-string v3, "CarCradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone Speaker isExtraSpeakerDockOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 408
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v3, "state"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected initReceiver()V
    .locals 2

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 331
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/high16 v10, 0x1000

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "CarDock"

    const-string v6, "TAG"

    .line 543
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 545
    .local v2, id:I
    packed-switch v2, :pswitch_data_0

    .line 693
    :goto_0
    :pswitch_0
    return-void

    .line 571
    :pswitch_1
    const-string v4, "CarCradleMain"

    const-string v5, "Home is pressed, closing this activity"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->finish()V

    goto :goto_0

    .line 575
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->updateSpeaker()V

    goto :goto_0

    .line 578
    :pswitch_3
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View Map Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mViewMap:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View Map Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mViewMap:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v4, "com.google.android.apps.maps"

    const-string v5, "com.google.android.maps.MapsActivity"

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 590
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v5, "No Activity found : Maps"

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 592
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 598
    .end local v1           #e1:Ljava/lang/Exception;
    :pswitch_4
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice Search Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voice Search Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v4, "com.google.android.voicesearch"

    const-string v5, "com.google.android.voicesearch.RecognitionActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    .line 604
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 605
    :catch_1
    move-exception v0

    .line 607
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "CarDock"

    const-string v4, "No Activity found : Voice Search"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 609
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v5, "No Activity found : Voice Search"

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 611
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 619
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_5
    const-string v4, "com.android.music"

    const-string v5, "com.android.music.list.activity.MpMainTabActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 622
    :catch_2
    move-exception v0

    .line 624
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "CarDock"

    const-string v4, "No Activity found : music"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 626
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v5, "No Activity found : music"

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 638
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_6
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Navigator Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v4, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Navigator Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v4, "com.google.android.apps.maps"

    const-string v5, "com.google.android.maps.driveabout.app.DestinationActivity"

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 645
    :catch_3
    move-exception v0

    .line 647
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "CarDock"

    const-string v4, "No Activity found : Navigation"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 649
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v5, "No Activity found : Navigation"

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 651
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 656
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_7
    const-string v4, "com.android.contacts"

    const-string v5, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    :try_start_4
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 659
    :catch_4
    move-exception v0

    .line 661
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "CarDock"

    const-string v4, "No Activity found : Contacts"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 663
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v5, "No Activity found : Contacts"

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 673
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_8
    const-string v4, "com.google.android.googlequicksearchbox"

    const-string v5, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    :try_start_5
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 676
    :catch_5
    move-exception v0

    .line 677
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v4, "CarCradleMain"

    const-string v5, "Google Search Activity not found, Start default search"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v7, v5, v9}, Lcom/sec/android/app/carcradle/CarCradleMain;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x7f060001
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "android.intent.action.DOCK_EVENT"

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setFormat(I)V

    .line 89
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->setContentView(I)V

    .line 90
    iput-boolean v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mStarted:Z

    .line 92
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    const-string v4, "uimode"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    .line 94
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v4}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v4, v8

    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mCarModeEnabled:Z

    .line 98
    iget-boolean v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mCarModeEnabled:Z

    if-nez v4, :cond_0

    .line 99
    const-string v4, "not car mode"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 103
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.android.voicesearch"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 110
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_1
    iput-boolean v7, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mEnableVoiceSearch:Z

    .line 116
    iget-boolean v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z

    if-eqz v4, :cond_2

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, country:Ljava/lang/String;
    const-string v4, "en_US"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "en_AU"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "en_GB"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    :cond_1
    iput-boolean v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mEnableVoiceSearch:Z

    .line 132
    .end local v0           #country:Ljava/lang/String;
    :cond_2
    const v4, 0x7f06000c

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mGoHome:Landroid/widget/TextView;

    .line 133
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mGoHome:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mViewMap:Landroid/widget/TextView;

    .line 136
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mViewMap:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mMusic:Landroid/widget/TextView;

    .line 141
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mMusic:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    .line 143
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v4, 0x7f060004

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mConatacts:Landroid/widget/TextView;

    .line 145
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mConatacts:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v4, 0x7f060006

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSearch:Landroid/widget/TextView;

    .line 147
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v4, 0x7f060007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mBubble:Landroid/widget/FrameLayout;

    .line 149
    const v4, 0x7f06000d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 150
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v4, Lcom/sec/android/app/carcradle/CarCradleMain$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$1;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v4, Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

    invoke-direct {v4, p0, v9}, Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;Lcom/sec/android/app/carcradle/CarCradleMain$1;)V

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->listener:Lcom/sec/android/app/carcradle/CarCradleMain$CallListener;

    .line 183
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 186
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.CAR_DOCK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 188
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    .line 222
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/sec/android/app/carcradle/CarCradleMain$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$2;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    move v4, v7

    .line 94
    goto/16 :goto_0

    .line 111
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 112
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v7, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 239
    packed-switch p1, :pswitch_data_0

    .line 261
    const/4 v2, 0x0

    .line 263
    .local v2, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 241
    .end local v2           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 243
    .local v3, view:Landroid/view/View;
    const v4, 0x7f060015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 244
    .local v1, checkbox:Landroid/widget/CheckBox;
    new-instance v4, Lcom/sec/android/app/carcradle/CarCradleMain$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$3;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "always_show_disclaimer"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 249
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f05000f

    new-instance v6, Lcom/sec/android/app/carcradle/CarCradleMain$4;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/carcradle/CarCradleMain$4;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 259
    .restart local v2       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->releaseReceiver()V

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 540
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 496
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 498
    .local v1, handled:Z
    if-nez v1, :cond_0

    .line 500
    const/16 v4, 0x54

    if-ne p1, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 502
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.google.android.googlequicksearchbox"

    const-string v5, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    const/4 v1, 0x1

    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v1

    .line 512
    .end local v1           #handled:Z
    .local v2, handled:Z
    :goto_0
    return v2

    .line 506
    .end local v2           #handled:Z
    .restart local v1       #handled:Z
    .restart local v3       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    move v2, v1

    .line 507
    .end local v1           #handled:Z
    .restart local v2       #handled:Z
    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->unregisterTelephonyListener()V

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 439
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 268
    packed-switch p1, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 278
    return-void

    .line 270
    :pswitch_0
    const v1, 0x7f060015

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 271
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "always_show_disclaimer"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 517
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 518
    const-string v0, "always_show_disclaimer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 519
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->initReceiver()V

    .line 444
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->showDisclaimer()V

    .line 445
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->registerTelephonyListener()V

    .line 446
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_car_connected"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    .local v0, isDockConnected:Z
    const-string v3, "CarCradleMain"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume isDockConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    if-ne v0, v7, :cond_2

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 452
    .local v1, mAudio:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    iput-boolean v7, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    .line 454
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 459
    :goto_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 460
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 493
    .end local v1           #mAudio:Landroid/media/AudioManager;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 456
    .restart local v1       #mAudio:Landroid/media/AudioManager;
    :cond_1
    iput-boolean v6, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerMode:Z

    .line 457
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 465
    .end local v1           #mAudio:Landroid/media/AudioManager;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 523
    const-string v0, "always_show_disclaimer"

    iget-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 525
    return-void
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 340
    :cond_0
    monitor-exit p0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
