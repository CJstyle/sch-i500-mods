.class Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;
.super Ljava/lang/Object;
.source "WifiApViewConnectedDevices.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApViewConnectedDevices;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v6, "WifiApViewConnectedDevices"

    .line 268
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 272
    .local v2, wifiApState:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$300(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApDisassocSta(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 274
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 276
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$500(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #calls: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getWhiteListMac()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$600(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, disconnected_WhiteMacAddr:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(?i)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceMac:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$300(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v3, ""

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_6

    .line 288
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x11

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    .line 292
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 295
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    if-nez v3, :cond_1

    .line 299
    if-eq v2, v8, :cond_0

    if-ne v2, v10, :cond_5

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 303
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "mWifiManager.setWifiApEnabled : true"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #calls: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->setWhiteListMac()V
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$800(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    .line 352
    .end local v0           #disconnected_WhiteMacAddr:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, sta_list:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #calls: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->updateStaList(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$000(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)V

    .line 357
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/wifi/DevListAdapter;->notifyDataSetChanged()V

    .line 358
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-virtual {v3, v8}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->dismissDialog(I)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    new-instance v4, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    invoke-direct {v4, v5}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    #setter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    invoke-static {v3, v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$902(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    .line 361
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$900(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;->start()V

    .line 364
    .end local v1           #sta_list:Ljava/lang/String;
    :cond_4
    return-void

    .line 305
    .restart local v0       #disconnected_WhiteMacAddr:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 306
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "mWifiManager.setWifiApEnabled : false"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 319
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput v7, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    .line 321
    if-eq v2, v8, :cond_7

    if-ne v2, v10, :cond_8

    .line 324
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 325
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "mWifiManager.setWifiApEnabled : true"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;->this$0:Lcom/android/settings/wifi/WifiApViewConnectedDevices;

    #getter for: Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 328
    const-string v3, "WifiApViewConnectedDevices"

    const-string v3, "mWifiManager.setWifiApEnabled : false"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
