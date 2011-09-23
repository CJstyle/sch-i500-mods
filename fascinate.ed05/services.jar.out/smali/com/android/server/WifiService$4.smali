.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2259
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 6
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2226
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-static {v1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2229
    .local v0, wifiSleepPolicy:I
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=========shouldWifiStayAwake: wifiSleepPolicy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    if-ne v0, v5, :cond_0

    move v1, v4

    .line 2240
    :goto_0
    return v1

    .line 2234
    :cond_0
    if-ne v0, v4, :cond_1

    if-eqz p2, :cond_1

    move v1, v4

    .line 2237
    goto :goto_0

    .line 2240
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 2119
    .local v6, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "wifi_idle_ms"

    const-wide/32 v21, 0xdbba0

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 2122
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "stay_on_while_plugged_in"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 2125
    .local v16, stayAwakeConditions:I
    const-string v19, "android.intent.action.SCREEN_ON"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2126
    const-string v19, "WifiService"

    const-string v20, "ACTION_SCREEN_ON"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 2133
    .local v10, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v19

    sget-object v20, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    const/16 v20, -0x63

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v13

    .line 2135
    .local v13, result:Z
    if-nez v13, :cond_0

    .line 2136
    const-string v19, "WifiService"

    const-string v20, "ENABLE ALL is fail"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v13           #result:Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 2216
    :cond_1
    :goto_1
    return-void

    .line 2139
    :cond_2
    const-string v19, "android.intent.action.SCREEN_OFF"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 2140
    const-string v19, "WifiService"

    const-string v20, "ACTION_SCREEN_OFF"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 2151
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v19

    sget-object v20, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 2156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/32 v21, 0x1d4c0

    add-long v17, v19, v21

    .line 2157
    .local v17, triggerTime:J
    const-string v19, "WifiService"

    const-string v20, "setting ACTION_DEVICE_IDLE timer for 120,000 ms"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2163
    .end local v17           #triggerTime:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    add-long v17, v19, v8

    .line 2164
    .restart local v17       #triggerTime:J
    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2170
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v17           #triggerTime:J
    :cond_4
    const-string v19, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2171
    const-string v19, "WifiService"

    const-string v20, "got ACTION_DEVICE_IDLE"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 2173
    :cond_5
    const-string v19, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2181
    const-string v19, "plugged"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2182
    .local v12, pluggedType:I
    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ACTION_BATTERY_CHANGED pluggedType: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v19

    if-nez v19, :cond_6

    .line 2185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    add-long v17, v19, v8

    .line 2186
    .restart local v17       #triggerTime:J
    const-string v19, "WifiService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "setting ACTION_DEVICE_IDLE timer for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-wide/from16 v2, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_1

    .line 2191
    .end local v17           #triggerTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1302(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2192
    .end local v12           #pluggedType:I
    :cond_7
    const-string v19, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2193
    new-instance v5, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 2194
    .local v5, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v15

    .line 2195
    .local v15, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v11, 0x0

    .line 2196
    .local v11, isBluetoothPlaying:Z
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/BluetoothDevice;

    .line 2197
    .local v14, sink:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5, v14}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2198
    const/4 v11, 0x1

    goto :goto_2

    .line 2201
    .end local v14           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    goto/16 :goto_0

    .line 2204
    .end local v5           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #isBluetoothPlaying:Z
    .end local v15           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_a
    const-string v19, "android.intent.action.ACTION_SHUTDOWN"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    goto/16 :goto_0
.end method
