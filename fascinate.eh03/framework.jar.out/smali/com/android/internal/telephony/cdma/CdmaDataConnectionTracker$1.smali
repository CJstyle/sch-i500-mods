.class Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, action:Ljava/lang/String;
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 218
    :cond_2
    const-string v21, "android.intent.action.DUN_PATTERN_LOCK"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 219
    const-string v21, "lockstate"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, lockState:Ljava/lang/String;
    const-string/jumbo v21, "unlocked"

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    goto :goto_0

    .line 223
    .end local v12           #lockState:Ljava/lang/String;
    :cond_3
    const-string v21, "com.android.internal.telephony.cdma-reconnect"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 224
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Data reconnect alarm. Previous state was "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v21, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 232
    .end local v16           #reason:Ljava/lang/String;
    :cond_5
    const-string v21, "android.net.wifi.STATE_CHANGE"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 233
    const-string/jumbo v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/NetworkInfo;

    .line 235
    .local v14, networkInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x1

    :goto_1
    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 237
    const-string v21, "gsm.wifiConnected.active"

    const-string/jumbo v22, "true"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v21

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.PROXY_CHANGE"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    :goto_2
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Manual Attach] mIsWifiConnected : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 235
    :cond_6
    const/16 v22, 0x0

    goto :goto_1

    .line 240
    :cond_7
    const-string v21, "gsm.wifiConnected.active"

    const-string v22, "false"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 243
    .end local v14           #networkInfo:Landroid/net/NetworkInfo;
    :cond_8
    const-string v21, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 244
    const-string/jumbo v21, "wifi_state"

    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v21, 0x1

    move/from16 v7, v21

    .line 247
    .local v7, enabled:Z
    :goto_3
    if-nez v7, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    .line 251
    const-string v21, "gsm.wifiConnected.active"

    const-string v22, "false"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Manual Attach] mIsWifiConnected : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 244
    .end local v7           #enabled:Z
    :cond_9
    const/16 v21, 0x0

    move/from16 v7, v21

    goto :goto_3

    .line 254
    :cond_a
    const-string v21, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 255
    const-string/jumbo v21, "wifi_state"

    const/16 v22, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 256
    .local v19, state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MiFi state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mobileAP_State = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "MiFi state = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "usbTethered_State = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 260
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "mIntentReceiver state == WifiManager.WIFI_AP_STATE_ENABLED"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_0

    .line 267
    :cond_b
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I

    goto/16 :goto_0

    .line 277
    .end local v19           #state:I
    :cond_d
    const-string v21, "android.net.conn.TETHER_STATE_CHANGED"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const-string v22, "ACTION_TETHER_STATE_CHANGED"

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 279
    const-string v21, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 280
    .local v4, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 281
    .local v13, mCm:Landroid/net/ConnectivityManager;
    const/16 v20, 0x0

    .line 282
    .local v20, usbTethered:Z
    if-eqz v13, :cond_10

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;[Ljava/lang/String;)[Ljava/lang/String;

    .line 284
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/Object;
    array-length v10, v5

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v5           #arr$:[Ljava/lang/Object;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .local v9, i$:I
    :goto_4
    if-ge v9, v10, :cond_10

    aget-object v15, v5, v9

    .line 285
    .local v15, o:Ljava/lang/Object;
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 286
    .local v18, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v8, 0x0

    .end local v9           #i$:I
    .restart local v8       #i$:I
    :goto_5
    if-ge v8, v11, :cond_f

    aget-object v17, v6, v8

    .line 287
    .local v17, regex:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v20, 0x1

    .line 286
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 284
    .end local v17           #regex:Ljava/lang/String;
    :cond_f
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_4

    .line 291
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v15           #o:Ljava/lang/Object;
    .end local v18           #s:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "usbTethered_State = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "usbTethered = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "mobileAP_State = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 294
    if-eqz v20, :cond_11

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0

    .line 300
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 305
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z

    goto/16 :goto_0
.end method