.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GpsStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 498
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 500
    .local v0, on:Z
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 487
    const v0, 0x7f0b0104

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 491
    if-eqz p1, :cond_0

    const v0, 0x7f02001f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02001e

    goto :goto_0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 488
    const v0, 0x7f0b0105

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "unused"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 508
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;Landroid/content/ContentResolver;ZLandroid/content/Context;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 531
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v1

    .line 540
    .local v1, currentState:I
    const/4 v4, 0x0

    .line 541
    .local v4, newState:Z
    packed-switch v1, :pswitch_data_0

    .line 571
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$902(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 572
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$1000(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 577
    invoke-static {p0, v11}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$1102(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;Z)Z

    .line 583
    :goto_1
    return-void

    .line 543
    :pswitch_1
    const/4 v4, 0x0

    .line 544
    goto :goto_0

    .line 546
    :pswitch_2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 547
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v8, "show_again"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 549
    .local v3, isShow:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 550
    .local v7, resolver:Landroid/content/ContentResolver;
    if-nez v3, :cond_1

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    .local v0, authIntent:Landroid/content/Intent;
    const-class v8, Lcom/android/settings/LocationAlert;

    invoke-virtual {v0, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 554
    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 557
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v2

    .line 559
    .local v2, e:Landroid/app/PendingIntent$CanceledException;
    const-string v8, "SettingsAppWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PendingIntent.CanceledException, e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    .end local v0           #authIntent:Landroid/content/Intent;
    .end local v2           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_1
    const/4 v4, 0x1

    .line 564
    goto :goto_0

    .line 566
    .end local v3           #isShow:Z
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :pswitch_3
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$900(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 567
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$900(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v11

    :goto_2
    goto :goto_0

    :cond_2
    move v4, v9

    goto :goto_2

    .line 579
    :cond_3
    invoke-static {p0, v11}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->access$1002(Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;Z)Z

    .line 580
    invoke-virtual {p0, p1, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
