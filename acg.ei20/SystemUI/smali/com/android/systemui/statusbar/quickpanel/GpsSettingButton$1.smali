.class Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "GpsSettingButton"

    .line 173
    const-string v2, "GpsSettingButton"

    const-string v2, "mjkim : mBroadcastReceiver"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, action:Ljava/lang/String;
    const-string v2, "com.android.settings.GPSDdialogFlag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "GpsSettingButton"

    const-string v2, "mjkim : GPS_SHOW_DO_NOT"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v2, "GPSShowState"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    .line 179
    .local v0, GPSShowDoNotInt:I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/GpsSettingButton;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "GPSDoNotShowAgainCheck"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    .end local v0           #GPSShowDoNotInt:I
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method
