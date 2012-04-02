.class public Lcom/sec/android/app/carcradle/CarCradleMain;
.super Landroid/app/Activity;
.source "CarCradleMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCarModeEnabled:Z

.field private mConatacts:Landroid/widget/TextView;

.field private mDayMode:I

.field private mDisclaimerShown:Z

.field private mEnableVoiceSearch:Z

.field private mGoExit:Landroid/widget/Button;

.field private mHasVoiceSearch:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field public mLaunchedFromDock:Z

.field private mMaps:Landroid/widget/TextView;

.field private mModeChange:Landroid/widget/Button;

.field private mNavigation:Landroid/widget/TextView;

.field mPrefs:Landroid/content/SharedPreferences;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSearch:Landroid/widget/TextView;

.field private mSpeakerButton:Landroid/widget/Button;

.field private mToast:Landroid/widget/Toast;

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mVoiceSearch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mLaunchedFromDock:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 293
    new-instance v0, Lcom/sec/android/app/carcradle/CarCradleMain$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$3;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/carcradle/CarCradleMain;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/carcradle/CarCradleMain;->setPreference(Ljava/lang/String;Z)V

    return-void
.end method

.method private exitCarMode()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "car_cradle_connected"

    .line 674
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "car_cradle_connected"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 676
    .local v1, isDockConnected:Z
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 677
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "car_cradle_connected"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 678
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->releaseReceiver()V

    .line 682
    iget-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mLaunchedFromDock:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 684
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 686
    .local v2, sintent:Landroid/content/Intent;
    const-string v3, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v3, "state"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 690
    const-string v3, "CarDock"

    const-string v4, "send speaker on broadcast, on Destroy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v2           #sintent:Landroid/content/Intent;
    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mLaunchedFromDock:Z

    .line 697
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->finish()V

    .line 698
    return-void

    .line 692
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/UiModeManager;->disableCarMode(I)V

    goto :goto_0
.end method

.method private setPreference(Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 257
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 259
    return-void
.end method

.method private showDisclaimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "always_show_disclaimer"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->showDialog(I)V

    .line 264
    iput-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    goto :goto_0
.end method

.method private toggleSpeakerMode()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "cradle_internal_speaker"

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "cradle_internal_speaker"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v8

    .line 704
    .local v2, isSpeaker:Z
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz v2, :cond_2

    .line 709
    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v6, 0x7f02000e

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 713
    :goto_1
    const-string v5, "cradle_internal_speaker"

    invoke-interface {v0, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "car_cradle_connected"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 718
    .local v3, mLaunchedFromDock:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 720
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    if-eqz v2, :cond_3

    .line 725
    const/4 v4, 0x0

    .line 729
    .local v4, state:I
    :goto_2
    const-string v5, "state"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    const-string v5, "CarDock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cradle Home Setting, send speaker broadcast state =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #state:I
    :cond_0
    return-void

    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #isSpeaker:Z
    .end local v3           #mLaunchedFromDock:Ljava/lang/Boolean;
    :cond_1
    move v2, v7

    .line 703
    goto :goto_0

    .line 711
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #isSpeaker:Z
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v6, 0x7f02000d

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 727
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #mLaunchedFromDock:Ljava/lang/Boolean;
    :cond_3
    const/4 v4, 0x1

    .restart local v4       #state:I
    goto :goto_2
.end method

.method private updateDayNightMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 658
    const-string v0, "CarDock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update DayNightMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDayMode:I

    if-ne v0, v3, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 670
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0, v3}, Landroid/app/UiModeManager;->setNightMode(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initReceiver()V
    .locals 2

    .prologue
    .line 376
    monitor-enter p0

    .line 377
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 378
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 379
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 384
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    monitor-exit p0

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 468
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->exitCarMode()V

    .line 469
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const-string v8, "No Activity found : Search"

    const-string v7, "No Activity found : Phonebook"

    const-string v6, "No Activity found : Maps"

    const-string v4, "com.microsoft.mobileexperiences.bing"

    const-string v5, "CarDock"

    .line 506
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 508
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 639
    :goto_0
    return-void

    .line 510
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->exitCarMode()V

    goto :goto_0

    .line 513
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->toggleSpeakerMode()V

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->updateDayNightMode()V

    goto :goto_0

    .line 536
    :pswitch_3
    const-string v3, "com.google.android.voicesearch"

    const-string v4, "com.google.android.voicesearch.RecognitionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "CarDock"

    const-string v3, "No Activity found : voicesearch"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 543
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v4, "No Activity found : voicesearch"

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 566
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_4
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v3, "http://maps.google.com/?myl=saddr&dirflg=d&daddr="

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 569
    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.driveabout.app.DestinationActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 573
    :catch_1
    move-exception v0

    .line 575
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "CarDock"

    const-string v3, "No Activity found : navigator"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 577
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v4, "No Activity found : navigator"

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 585
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_5
    const-string v3, "com.android.contacts"

    const-string v4, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 588
    :catch_2
    move-exception v0

    .line 590
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "CarDock"

    const-string v3, "No Activity found : Phonebook"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 592
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v4, "No Activity found : Phonebook"

    invoke-virtual {v3, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 599
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_6
    const-string v3, "com.google.android.apps.maps"

    const-string v4, "com.google.android.maps.MapsActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 602
    :catch_3
    move-exception v0

    .line 604
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "CarDock"

    const-string v3, "No Activity found : Maps"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 606
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v4, "No Activity found : Maps"

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 626
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_7
    const-string v3, "com.microsoft.mobileexperiences.bing"

    const-string v3, "com.microsoft.mobileexperiences.bing.views.Splash"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v3, "com.microsoft.mobileexperiences.bing"

    const-string v3, "com.microsoft.mobileexperiences.bing"

    invoke-virtual {v2, v4, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 630
    :catch_4
    move-exception v0

    .line 632
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v3, "CarDock"

    const-string v3, "No Activity found : Search"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 634
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    const-string v4, "No Activity found : Search"

    invoke-virtual {v3, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 635
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x7f060001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 273
    iget-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z

    if-eqz v2, :cond_2

    .line 274
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 275
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, country:Ljava/lang/String;
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AU"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mEnableVoiceSearch:Z

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    .end local v0           #country:Ljava/lang/String;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_1
    :goto_0
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->setContentView(I)V

    .line 288
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->setView()V

    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    return-void

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 73
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->setView()V

    .line 77
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v2

    .line 217
    .end local v2           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 219
    .local v3, view:Landroid/view/View;
    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 220
    .local v1, checkbox:Landroid/widget/CheckBox;
    new-instance v4, Lcom/sec/android/app/carcradle/CarCradleMain$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/carcradle/CarCradleMain$1;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "always_show_disclaimer"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f05000d

    new-instance v6, Lcom/sec/android/app/carcradle/CarCradleMain$2;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/app/carcradle/CarCradleMain$2;-><init>(Lcom/sec/android/app/carcradle/CarCradleMain;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 235
    .restart local v2       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->releaseReceiver()V

    .line 495
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 503
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 419
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    .line 252
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 253
    return-void

    .line 246
    :pswitch_0
    const v1, 0x7f06000c

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 247
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "always_show_disclaimer"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 244
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
    .line 456
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 457
    const-string v0, "always_show_disclaimer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    .line 458
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->initReceiver()V

    .line 424
    invoke-direct {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->showDisclaimer()V

    .line 452
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 462
    const-string v0, "always_show_disclaimer"

    iget-boolean v1, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDisclaimerShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 463
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 464
    return-void
.end method

.method protected releaseReceiver()V
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    .line 389
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/carcradle/CarCradleMain;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mReceiverRegistered:Z

    .line 393
    :cond_0
    monitor-exit p0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    .line 82
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    move v3, v7

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mCarModeEnabled:Z

    .line 86
    iget-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mCarModeEnabled:Z

    if-nez v3, :cond_0

    .line 87
    const-string v3, "not car mode"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 91
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v3}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mDayMode:I

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.voicesearch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    iput-boolean v6, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mEnableVoiceSearch:Z

    .line 103
    iget-boolean v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z

    if-eqz v3, :cond_2

    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, country:Ljava/lang/String;
    const-string v3, "en_US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "en_AU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "en_GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mEnableVoiceSearch:Z

    .line 111
    .end local v0           #country:Ljava/lang/String;
    :cond_2
    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mGoExit:Landroid/widget/Button;

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mGoExit:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    .line 114
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mModeChange:Landroid/widget/Button;

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mModeChange:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    .line 120
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mVoiceSearch:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    .line 124
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mNavigation:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mConatacts:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mConatacts:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSearch:Landroid/widget/TextView;

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSearch:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mMaps:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mMaps:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mToast:Landroid/widget/Toast;

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "cradle_internal_speaker"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 147
    .local v2, isSpeaker:Z
    if-eqz v2, :cond_4

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 209
    :goto_2
    return-void

    .end local v2           #isSpeaker:Z
    :cond_3
    move v3, v6

    .line 82
    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 99
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-boolean v6, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mHasVoiceSearch:Z

    goto/16 :goto_1

    .line 155
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #isSpeaker:Z
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain;->mSpeakerButton:Landroid/widget/Button;

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.microsoft.mobileexperiences.bing"

    .line 644
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "com.microsoft.mobileexperiences.bing"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.microsoft.mobileexperiences.bing"

    if-ne v1, v4, :cond_0

    .line 650
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v3, v2}, Lcom/sec/android/app/carcradle/CarCradleMain;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
