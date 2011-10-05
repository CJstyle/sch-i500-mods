.class public final Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;
    }
.end annotation


# static fields
.field private static GPSShowDoNot:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

.field volatile mStatusBar:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    .line 170
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setGPSEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, lbsChanged:Landroid/content/Intent;
    const-string v1, "lbsEnabled"

    if-nez p1, :cond_0

    move v2, v5

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    const-string v1, "LBSsettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LBS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in GpsSettingButton"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    :cond_0
    move v2, v4

    .line 162
    goto :goto_0

    :cond_1
    move v3, v4

    .line 164
    goto :goto_1
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 93
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 94
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f090012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f090014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 98
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 108
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    return-void

    .line 100
    :pswitch_0
    const v1, 0x7f02000f

    .line 101
    const v4, 0x7f020015

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    const v1, 0x7f02000e

    .line 105
    const v4, 0x7f020014

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateIcons()V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "GpsSettingButton"

    .line 117
    const-string v2, "GpsSettingButton"

    const-string v2, "activate()"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "GPSDoNotShowAgainCheck"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    :goto_0
    sput-boolean v2, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->GPSShowDoNot:Z

    .line 124
    sget-boolean v2, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->GPSShowDoNot:Z

    if-nez v2, :cond_2

    .line 125
    const-string v2, "GpsSettingButton"

    const-string v2, "GPSShowDoNot == false "

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "GPSstate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mStatusBar:Lcom/android/internal/statusbar/IStatusBarService;

    .line 133
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mStatusBar:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_0

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mStatusBar:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->collapse()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 120
    goto :goto_0

    .line 136
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 138
    .local v0, ex:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 142
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v2, "GpsSettingButton"

    const-string v2, "GPSShowDoNot == true "

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "GpsSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setGPSEnabled(Z)V

    .line 155
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 62
    const-string v0, "GpsSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.GPSDdialogFlag"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->updateStatus()V

    .line 70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 75
    const-string v0, "GpsSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->mGpsObserver:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$GpsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 80
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->setText(I)V

    .line 114
    return-void
.end method
