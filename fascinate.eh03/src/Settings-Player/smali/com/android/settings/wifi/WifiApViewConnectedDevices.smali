.class public Lcom/android/settings/wifi/WifiApViewConnectedDevices;
.super Landroid/app/Activity;
.source "WifiApViewConnectedDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    }
.end annotation


# instance fields
.field private CurrentDeviceMac:Ljava/lang/String;

.field private CurrentDeviceName:Ljava/lang/String;

.field DevList:Landroid/widget/ListView;

.field private final TAG:Ljava/lang/String;

.field private cRemove:Landroid/widget/CheckBox;

.field connectedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/wifi/ConnectedDevice;",
            ">;"
        }
    .end annotation
.end field

.field devAdapter:Lcom/android/settings/wifi/DevListAdapter;

.field private mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private remove_from_devicelist_checked:Z

.field private selected_position:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const-string v0, "WifiApViewConnectedDevices"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->TAG:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->remove_from_devicelist_checked:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 67
    new-instance v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$1;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    return-void
.end method

.method private Addintentfilter()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->updateStaList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->remove_from_devicelist_checked:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApViewConnectedDevices;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->selected_position:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getWhiteListMac()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->setWhiteListMac()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApViewConnectedDevices;Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    return-object p1
.end method

.method private getWhiteListMac()V
    .locals 4

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 481
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "mifi_ap_white_mac_addr"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 482
    const-string v1, "WifiApViewConnectedDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteListMac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method private setWhiteListMac()V
    .locals 4

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 489
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mifi_ap_white_mac_cnt"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 490
    const-string v1, "mifi_ap_white_mac_addr"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 491
    const-string v1, "WifiApViewConnectedDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWhiteListMac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method

.method private final updateStaList(Ljava/lang/String;)V
    .locals 24
    .parameter "sta_list"

    .prologue
    .line 414
    const-string v3, " "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 418
    .local v23, tok:[Ljava/lang/String;
    const/16 v21, 0x0

    .line 420
    .local v21, numClient:I
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v23, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    .line 429
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 433
    .local v19, now:J
    const/4 v15, 0x1

    .local v15, i:I
    :goto_1
    move v0, v15

    move/from16 v1, v21

    if-gt v0, v1, :cond_3

    .line 437
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v8, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 439
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_0
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, mData:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 441
    const-string v3, " "

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 442
    .local v22, sta_info:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v22, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v22, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, v22, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v3, v22, v3

    if-eqz v3, :cond_0

    .line 447
    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 448
    .local v13, expire_time:J
    const-wide/16 v3, 0xe10

    sub-long v3, v13, v3

    const-wide/16 v5, 0x3e8

    mul-long v9, v3, v5

    .line 449
    .local v9, connected_milisec:J
    sub-long v11, v19, v9

    .line 455
    .local v11, duration_milisec:J
    const/4 v3, 0x1

    aget-object v3, v22, v3

    aget-object v4, v23, v15

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    const-string v3, "WifiApViewConnectedDevices"

    const-string v4, "STA Detected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v3, 0x3

    aget-object v3, v22, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    new-instance v2, Lcom/android/settings/wifi/ConnectedDevice;

    const-string v3, "EMPTY"

    aget-object v4, v23, v15

    const/4 v5, 0x2

    aget-object v5, v22, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    .end local v9           #connected_milisec:J
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .local v2, devlist:Lcom/android/settings/wifi/ConnectedDevice;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 473
    .end local v2           #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v8           #buf:Ljava/io/BufferedReader;
    .end local v11           #duration_milisec:J
    .end local v13           #expire_time:J
    .end local v17           #mData:Ljava/lang/String;
    .end local v22           #sta_info:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 474
    .local v16, io:Ljava/io/IOException;
    const-string v3, "WifiApViewConnectedDevices"

    const-string v4, "mac read exception"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v16           #io:Ljava/io/IOException;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 421
    .end local v15           #i:I
    .end local v19           #now:J
    :catch_1
    move-exception v3

    move-object/from16 v18, v3

    .line 422
    .local v18, nfe:Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v18           #nfe:Ljava/lang/NumberFormatException;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #connected_milisec:J
    .restart local v11       #duration_milisec:J
    .restart local v13       #expire_time:J
    .restart local v15       #i:I
    .restart local v17       #mData:Ljava/lang/String;
    .restart local v19       #now:J
    .restart local v22       #sta_info:[Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v2, Lcom/android/settings/wifi/ConnectedDevice;

    const/4 v3, 0x3

    aget-object v3, v22, v3

    aget-object v4, v23, v15

    const/4 v5, 0x2

    aget-object v5, v22, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    .end local v9           #connected_milisec:J
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/ConnectedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    goto :goto_3

    .line 472
    .end local v2           #devlist:Lcom/android/settings/wifi/ConnectedDevice;
    .end local v11           #duration_milisec:J
    .end local v13           #expire_time:J
    .end local v22           #sta_info:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 477
    .end local v8           #buf:Ljava/io/BufferedReader;
    .end local v17           #mData:Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstancestate"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f030062

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->setContentView(I)V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->Addintentfilter()V

    .line 105
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Lcom/android/settings/wifi/DevListAdapter;

    const v2, 0x7f030063

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/wifi/DevListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    .line 140
    const v1, 0x7f0b0121

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    .line 141
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    move-object v0, p0

    .line 145
    .local v0, ctx:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->DevList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$2;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 224
    .local v7, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, DeviceNameDialog:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030064

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 228
    .local v8, mView:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 229
    const v9, 0x7f0b0125

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 230
    .local v5, bView_device:Landroid/widget/Button;
    const v9, 0x7f0b0126

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 232
    .local v3, bDisconnect:Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$3;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$4;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$4;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 407
    .end local v1           #DeviceNameDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #bDisconnect:Landroid/widget/Button;
    .end local v5           #bView_device:Landroid/widget/Button;
    .end local v8           #mView:Landroid/view/View;
    .end local p1
    :goto_0
    return-object v9

    .line 255
    .restart local p1
    :cond_0
    const/4 v9, 0x2

    if-ne p1, v9, :cond_1

    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v0, DeviceDisconnctDialog:Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030061

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 259
    .restart local v8       #mView:Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 260
    const v9, 0x7f0b011f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 261
    .local v6, bYes:Landroid/widget/Button;
    const v9, 0x7f0b0120

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 262
    .local v4, bNo:Landroid/widget/Button;
    const v9, 0x7f0b011e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;

    .line 263
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$5;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$6;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$6;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;

    new-instance v10, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$7;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto :goto_0

    .line 381
    .end local v0           #DeviceDisconnctDialog:Landroid/app/AlertDialog$Builder;
    .end local v4           #bNo:Landroid/widget/Button;
    .end local v6           #bYes:Landroid/widget/Button;
    .end local v8           #mView:Landroid/view/View;
    .restart local p1
    :cond_1
    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    .line 382
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v2, RemoveDeviceWarn:Landroid/app/AlertDialog$Builder;
    const v9, 0x1040014

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x1080027

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03006f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 386
    .restart local v8       #mView:Landroid/view/View;
    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 387
    const v9, 0x7f0b011f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 388
    .restart local v6       #bYes:Landroid/widget/Button;
    const v9, 0x7f0b0120

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 390
    .restart local v4       #bNo:Landroid/widget/Button;
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$8;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    new-instance v9, Lcom/android/settings/wifi/WifiApViewConnectedDevices$9;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$9;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 407
    .end local v2           #RemoveDeviceWarn:Landroid/app/AlertDialog$Builder;
    .end local v4           #bNo:Landroid/widget/Button;
    .end local v6           #bYes:Landroid/widget/Button;
    .end local v8           #mView:Landroid/view/View;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->remove_from_devicelist_checked:Z

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->remove_from_devicelist_checked:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->cRemove:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->CurrentDeviceName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const-string v4, "WifiApViewConnectedDevices"

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    const-string v2, "WifiApViewConnectedDevices"

    const-string v2, "onResume"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, sta_list:Ljava/lang/String;
    const-string v2, "WifiApViewConnectedDevices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApStaList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->connectedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->updateStaList(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->devAdapter:Lcom/android/settings/wifi/DevListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/wifi/DevListAdapter;->notifyDataSetChanged()V

    .line 173
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 177
    .local v1, wifiApState:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 180
    :cond_1
    new-instance v2, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApViewConnectedDevices;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    .line 181
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApViewConnectedDevices;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApViewConnectedDevices$DisconnectDelayThread;->start()V

    .line 185
    :cond_2
    return-void
.end method
