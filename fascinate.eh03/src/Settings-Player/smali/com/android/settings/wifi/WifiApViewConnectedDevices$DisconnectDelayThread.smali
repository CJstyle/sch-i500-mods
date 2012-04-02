.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
.super Ljava/lang/Thread;
.source "WifiApViewConnectedDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectDelayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 1
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    .line 500
    const-string v0, "DisconnectDelayThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-string v7, "WifiApViewConnectedDevices"

    .line 507
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, sta_list:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, sta_list_tok:[Ljava/lang/String;
    const-string v4, "WifiApViewConnectedDevices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent sta_leave :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "STA_NUM"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 525
    const-string v4, "STA_LIST"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    :cond_0
    const-string v4, "WifiApViewConnectedDevices"

    const-string v5, "sendBroadcast:ACTION_WIFI_AP_STA_STATUS_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-virtual {v4, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 536
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sta_list:Ljava/lang/String;
    .end local v3           #sta_list_tok:[Ljava/lang/String;
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "WifiApViewConnectedDevices"

    const-string v4, "DisconnectDelayThread  sleep catch"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 530
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 531
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WifiApViewConnectedDevices"

    const-string v4, "Exception DisconnectDelayThread"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
