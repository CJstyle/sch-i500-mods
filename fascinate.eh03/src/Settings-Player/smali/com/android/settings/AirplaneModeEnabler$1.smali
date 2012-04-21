.class Lcom/android/settings/AirplaneModeEnabler$1;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #getter for: Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/AirplaneModeEnabler;->access$000(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 57
    .local v1, expectAirPlaneModeOn:Z
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v0, v5

    .line 59
    .local v0, airplaneModeEnabled:Z
    :goto_1
    if-ne v1, v0, :cond_0

    .line 60
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler$1;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    #calls: Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v2, p1}, Lcom/android/settings/AirplaneModeEnabler;->access$100(Lcom/android/settings/AirplaneModeEnabler;Landroid/telephony/ServiceState;)V

    .line 62
    :cond_0
    return-void

    .end local v0           #airplaneModeEnabled:Z
    .end local v1           #expectAirPlaneModeOn:Z
    :cond_1
    move v1, v4

    .line 56
    goto :goto_0

    .restart local v1       #expectAirPlaneModeOn:Z
    :cond_2
    move v0, v4

    .line 57
    goto :goto_1
.end method
