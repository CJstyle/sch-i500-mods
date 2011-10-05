.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "StatusBarPolicy"

    .line 664
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;

    .line 666
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 672
    :cond_2
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 675
    :cond_3
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 678
    :cond_4
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 680
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 682
    :cond_6
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 686
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 689
    :cond_8
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 690
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$802(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 696
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$902(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 698
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 700
    :cond_9
    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 701
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : ACTION_WIFI_AP_STA_STATUS_CHANGED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 705
    :cond_a
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 708
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 710
    :cond_c
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 712
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 714
    :cond_e
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 716
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 718
    :cond_10
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 719
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 721
    :cond_11
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 724
    :cond_12
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 727
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 730
    :cond_14
    const-string v1, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 731
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    goto/16 :goto_0

    .line 734
    :cond_15
    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 735
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 737
    :cond_16
    const-string v1, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 738
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : AUTHBATTERY_ALERT"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 741
    :cond_17
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 742
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : ACTION_BOOT_COMPLETED"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getAuthBattery()V

    goto/16 :goto_0

    .line 745
    :cond_18
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
