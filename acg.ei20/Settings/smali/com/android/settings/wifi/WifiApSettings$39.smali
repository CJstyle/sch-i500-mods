.class Lcom/android/settings/wifi/WifiApSettings$39;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v8, "wifiap_power_mode_alarm_option"

    const-string v7, "com.android.settings.wifi.wifiap_power_mode_alarm"

    const-string v6, "WifiApSettings"

    .line 1444
    const-string v4, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemSelected:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/4 v2, 0x0

    .line 1449
    .local v2, tempPowerModeValue:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4, p3}, Lcom/android/settings/wifi/WifiApSettings;->access$2400(Lcom/android/settings/wifi/WifiApSettings;I)I

    move-result v2

    .line 1452
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$2500(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 1485
    :goto_0
    return-void

    .line 1456
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4, v2}, Lcom/android/settings/wifi/WifiApSettings;->access$2502(Lcom/android/settings/wifi/WifiApSettings;I)I

    .line 1459
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 1461
    .local v3, wifiApState:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v1

    .line 1462
    .local v1, numClient:I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$2500(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1468
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v4, "wifiap_power_mode_alarm_option"

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1470
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/WifiApSettings;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1471
    const-string v4, "WifiApSettings"

    const-string v4, "sendStickyBroadcast:[WIFIAP_POWER_MODE_ALARM_START]"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/WifiApSettings;->access$2500(Lcom/android/settings/wifi/WifiApSettings;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1476
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1477
    .restart local v0       #alarm_intent:Landroid/content/Intent;
    const-string v4, "wifiap_power_mode_alarm_option"

    const/4 v4, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/WifiApSettings;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1479
    const-string v4, "WifiApSettings"

    const-string v4, "sendStickyBroadcast:[WIFIAP_POWER_MODE_ALARM_STOP]"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    .end local v0           #alarm_intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings$39;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settings/wifi/WifiApSettings;->access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1488
    return-void
.end method
