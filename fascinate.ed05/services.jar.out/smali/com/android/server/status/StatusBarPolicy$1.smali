.class Lcom/android/server/status/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, action:Ljava/lang/String;
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p1}, Lcom/android/server/status/StatusBarPolicy;->access$102(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;

    .line 536
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 542
    :cond_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 545
    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 546
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 548
    :cond_4
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 549
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, tz:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 551
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/status/StatusBarPolicy;->access$402(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 552
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 553
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$400(Lcom/android/server/status/StatusBarPolicy;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 555
    :cond_5
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$200(Lcom/android/server/status/StatusBarPolicy;)V

    goto :goto_0

    .line 557
    .end local v1           #tz:Ljava/lang/String;
    :cond_6
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 558
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 560
    :cond_7
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 561
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 563
    :cond_8
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 564
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 566
    :cond_9
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 568
    :cond_a
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 570
    :cond_b
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 575
    :cond_c
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 578
    :cond_d
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 579
    const-string v2, "StatusBarPolicy"

    const-string v2, "action : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-static {v3, v2}, Lcom/android/server/status/StatusBarPolicy;->access$1102(Lcom/android/server/status/StatusBarPolicy;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 583
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1200(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 587
    :cond_e
    const-string v2, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 588
    const-string v2, "StatusBarPolicy"

    const-string v2, "action : ACTION_WIFI_AP_STA_STATUS_CHANGED"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1200(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 592
    :cond_f
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 595
    :cond_10
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 597
    :cond_11
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "com.vzw.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "com.vzw.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 603
    :cond_12
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 605
    :cond_13
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 607
    :cond_14
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$1500(Lcom/android/server/status/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 609
    :cond_15
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 610
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 612
    :cond_16
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 613
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 615
    :cond_17
    const-string v2, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 616
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 618
    :cond_18
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 619
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$1900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 621
    :cond_19
    const-string v2, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 622
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/server/status/StatusBarPolicy;->access$2000(Lcom/android/server/status/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 624
    :cond_1a
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 625
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v2, p2}, Lcom/android/server/status/StatusBarPolicy;->access$2100(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 627
    :cond_1b
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    const-string v2, "StatusBarPolicy"

    const-string v2, "action : ACTION_BOOT_COMPLETED"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy$1;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-virtual {v2}, Lcom/android/server/status/StatusBarPolicy;->getAuthBattery()V

    goto/16 :goto_0
.end method
