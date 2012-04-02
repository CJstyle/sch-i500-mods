.class public Lcom/android/settings/wifi/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 47
    sput-boolean v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private batteryChargingblock_clear(Z)V
    .locals 14
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const-string v13, "WifiApBroadcastReceiver"

    .line 213
    const/4 v3, 0x0

    .line 214
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 215
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 216
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 220
    .local v6, in:Ljava/io/BufferedReader;
    const-string v11, "WifiApBroadcastReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryChargingblock_clear "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 229
    .local v5, icb:I
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v11, "WifiApBroadcastReceiver"

    const-string v12, "Mobile Hotspot start"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    or-int/lit8 v5, v5, 0x20

    .line 240
    :goto_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 241
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 242
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .line 247
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 236
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v11, "WifiApBroadcastReceiver"

    const-string v12, "Mobile Hotspot stop"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 237
    and-int/lit8 v5, v5, -0x21

    goto :goto_0

    .line 244
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 245
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v11, "WifiApBroadcastReceiver"

    const-string v11, " Can\'t open /sys/class/power_supply/battery/chargingblock_clear"

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v11

    move-object v0, v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_2
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, action:Ljava/lang/String;
    const-string v21, "WifiApBroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive: action "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v21, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 60
    const-string v21, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    const-string v21, "wifi_state"

    const/16 v22, 0x6

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 64
    .local v9, apState:I
    packed-switch v9, :pswitch_data_0

    .line 209
    .end local v9           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 66
    .restart local v9       #apState:I
    :pswitch_1
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->batteryChargingblock_clear(Z)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v15

    .line 72
    .local v15, numClient:I
    if-nez v15, :cond_0

    .line 74
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    .end local v7           #alarm_intent:Landroid/content/Intent;
    .end local v15           #numClient:I
    :pswitch_2
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x2

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 89
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->batteryChargingblock_clear(Z)V

    goto :goto_0

    .line 93
    .end local v7           #alarm_intent:Landroid/content/Intent;
    .end local v9           #apState:I
    :cond_1
    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 96
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "onReceive [WIFIAP_POWER_MODE_ALARM]"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v21, "SAMSUNG_HOTSPOT"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 99
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 101
    .local v16, option:I
    const-string v21, "WifiApBroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive: WIFIAP_BATTERYMGR_ALARM->option "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-nez v16, :cond_4

    .line 103
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "onReceive [WIFIAP_POWER_MODE_ALARM_START]"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "POWERMODE_VALUE"

    const/16 v23, 0x708

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 105
    .local v19, powermode_value:I
    if-eqz v19, :cond_2

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v11, v21, v23

    .line 107
    .local v11, expireTime:J
    const-string v21, "WifiApBroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TW3MobileAP.MOBILEAP_ALARM_START ~~~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v7

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 113
    .local v17, pending:Landroid/app/PendingIntent;
    const-string v21, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 114
    .local v8, am:Landroid/app/AlarmManager;
    const/16 v21, 0x0

    move-object v0, v8

    move/from16 v1, v21

    move-wide v2, v11

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 116
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 121
    .end local v7           #alarm_intent:Landroid/content/Intent;
    .end local v8           #am:Landroid/app/AlarmManager;
    .end local v11           #expireTime:J
    .end local v17           #pending:Landroid/app/PendingIntent;
    :cond_2
    sget-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v21, :cond_3

    .line 123
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v7

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 127
    .restart local v17       #pending:Landroid/app/PendingIntent;
    const-string v21, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 128
    .restart local v8       #am:Landroid/app/AlarmManager;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    .end local v7           #alarm_intent:Landroid/content/Intent;
    .end local v8           #am:Landroid/app/AlarmManager;
    .end local v17           #pending:Landroid/app/PendingIntent;
    :cond_3
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 134
    .end local v19           #powermode_value:I
    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 136
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 137
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 141
    const-string v21, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    .line 142
    .local v18, pm:Landroid/os/PowerManager;
    const/16 v21, 0x1

    const-string v22, "MobileAPCloseService"

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 144
    .local v13, mStopService:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    const-string v21, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 154
    .local v14, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v20

    .line 155
    .local v20, wifiApState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    const-string v22, "POWERMODE_VALUE"

    const/16 v23, 0x708

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 157
    .restart local v19       #powermode_value:I
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v15

    .line 158
    .restart local v15       #numClient:I
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    if-nez v15, :cond_5

    if-eqz v19, :cond_5

    .line 161
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v14

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 165
    :cond_5
    if-eqz v13, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 145
    .end local v14           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v15           #numClient:I
    .end local v19           #powermode_value:I
    .end local v20           #wifiApState:I
    :catch_0
    move-exception v10

    .line 146
    .local v10, e:Ljava/lang/Throwable;
    const-string v21, "WifiApBroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    .end local v10           #e:Ljava/lang/Throwable;
    .restart local v14       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v15       #numClient:I
    .restart local v19       #powermode_value:I
    .restart local v20       #wifiApState:I
    :catch_1
    move-exception v10

    .line 170
    .restart local v10       #e:Ljava/lang/Throwable;
    const-string v21, "WifiApBroadcastReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot release wake lock ~~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    .end local v10           #e:Ljava/lang/Throwable;
    .end local v13           #mStopService:Landroid/os/PowerManager$WakeLock;
    .end local v14           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v15           #numClient:I
    .end local v18           #pm:Landroid/os/PowerManager;
    .end local v19           #powermode_value:I
    .end local v20           #wifiApState:I
    :cond_6
    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 175
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "onReceive [WIFIAP_POWER_MODE_ALARM_STOP]"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v21, :cond_0

    sget-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v21, :cond_0

    .line 178
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x1

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v7

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 181
    .restart local v17       #pending:Landroid/app/PendingIntent;
    const-string v21, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 182
    .restart local v8       #am:Landroid/app/AlarmManager;
    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 184
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/settings/wifi/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 190
    .end local v7           #alarm_intent:Landroid/content/Intent;
    .end local v8           #am:Landroid/app/AlarmManager;
    .end local v16           #option:I
    .end local v17           #pending:Landroid/app/PendingIntent;
    :cond_7
    const-string v21, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 191
    const-string v21, "WifiApBroadcastReceiver"

    const-string v22, "event detected [ACTION_WIFI_AP_STA_STATUS_CHANGED]"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v21, "STA_NUM"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 194
    .local v5, ClientNum:I
    if-nez v5, :cond_8

    .line 196
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 202
    .end local v7           #alarm_intent:Landroid/content/Intent;
    :cond_8
    new-instance v7, Landroid/content/Intent;

    const-string v21, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v7       #alarm_intent:Landroid/content/Intent;
    const-string v21, "wifiap_power_mode_alarm_option"

    const/16 v22, 0x2

    move-object v0, v7

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
