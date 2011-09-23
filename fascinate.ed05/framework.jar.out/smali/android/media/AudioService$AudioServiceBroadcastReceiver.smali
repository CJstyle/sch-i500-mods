.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 1951
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1951
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1954
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1956
    .local v3, action:Ljava/lang/String;
    const-string v15, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1957
    const-string v15, "android.intent.extra.DOCK_STATE"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1960
    .local v9, dockState:I
    packed-switch v9, :pswitch_data_0

    .line 1969
    const/4 v7, 0x0

    .line 1971
    .local v7, config:I
    :goto_0
    const/4 v15, 0x3

    invoke-static {v15, v7}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x1000

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 1974
    .local v10, isConnected:Z
    if-nez v9, :cond_0

    if-eqz v10, :cond_0

    .line 1975
    const/16 v15, 0x1000

    const/16 v16, 0x0

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x1000

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    .end local v7           #config:I
    .end local v9           #dockState:I
    .end local v10           #isConnected:Z
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 1962
    .restart local v9       #dockState:I
    .restart local p1
    :pswitch_0
    const/4 v7, 0x7

    .line 1963
    .restart local v7       #config:I
    goto :goto_0

    .line 1965
    .end local v7           #config:I
    :pswitch_1
    const/4 v7, 0x6

    .line 1966
    .restart local v7       #config:I
    goto :goto_0

    .line 1981
    .end local v7           #config:I
    .end local v9           #dockState:I
    :cond_1
    const-string v15, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1982
    const-string v15, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1984
    .local v13, state:I
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1985
    .local v6, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 1986
    .local v4, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x80

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x80

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    move v10, v15

    .line 1989
    .restart local v10       #isConnected:Z
    :goto_2
    if-eqz v10, :cond_4

    const/4 v15, 0x2

    if-eq v13, v15, :cond_4

    const/4 v15, 0x4

    if-eq v13, v15, :cond_4

    .line 1991
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1992
    if-nez v13, :cond_0

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15, v4}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1

    .line 1986
    .end local v10           #isConnected:Z
    :cond_2
    const/4 v15, 0x0

    move v10, v15

    goto :goto_2

    .line 2000
    .restart local v10       #isConnected:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15, v4}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2002
    :cond_4
    if-nez v10, :cond_0

    const/4 v15, 0x2

    if-eq v13, v15, :cond_5

    const/4 v15, 0x4

    if-ne v13, v15, :cond_0

    .line 2005
    :cond_5
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15, v4}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2017
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15, v4}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2012
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_3

    .line 2019
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_8
    const-string v15, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 2020
    const-string v15, "android.bluetooth.headset.extra.STATE"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2022
    .restart local v13       #state:I
    const/16 v8, 0x10

    .line 2023
    .local v8, device:I
    const-string v15, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 2024
    .restart local v6       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v4, 0x0

    .line 2025
    .restart local v4       #address:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 2026
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 2027
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 2028
    .local v5, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_9

    .line 2029
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 2041
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    move v10, v15

    .line 2044
    .restart local v10       #isConnected:Z
    :goto_5
    if-eqz v10, :cond_b

    const/4 v15, 0x2

    if-eq v13, v15, :cond_b

    .line 2045
    const/4 v15, 0x0

    invoke-static {v8, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_1

    .line 2032
    .end local v10           #isConnected:Z
    .restart local v5       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v8, 0x20

    .line 2033
    goto :goto_4

    .line 2035
    :sswitch_1
    const/16 v8, 0x40

    goto :goto_4

    .line 2041
    .end local v5           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_a
    const/4 v15, 0x0

    move v10, v15

    goto :goto_5

    .line 2051
    .restart local v10       #isConnected:Z
    :cond_b
    if-nez v10, :cond_0

    const/4 v15, 0x2

    if-ne v13, v15, :cond_0

    .line 2052
    const/4 v15, 0x1

    invoke-static {v8, v15, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    move-object/from16 v0, v16

    move v1, v8

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 2058
    .end local v4           #address:Ljava/lang/String;
    .end local v6           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v8           #device:I
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    .restart local p1
    :cond_c
    const-string v15, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 2059
    const-string/jumbo v15, "state"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2060
    .restart local v13       #state:I
    const-string v15, "microphone"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2063
    .local v11, microphone:I
    const-string/jumbo v15, "state"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 2065
    .local v14, temp:I
    if-eqz v14, :cond_d

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;I)I

    .line 2073
    :goto_6
    if-eqz v11, :cond_f

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2075
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_e

    if-eqz v10, :cond_e

    .line 2076
    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2069
    .end local v10           #isConnected:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/media/AudioService;->access$4902(Landroid/media/AudioService;I)I

    goto :goto_6

    .line 2080
    .restart local v10       #isConnected:Z
    :cond_e
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    if-nez v10, :cond_0

    .line 2081
    const/4 v15, 0x4

    const/16 v16, 0x1

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    const/16 v17, 0x4

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2087
    .end local v10           #isConnected:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2088
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_10

    if-eqz v10, :cond_10

    .line 2089
    const/16 v15, 0x8

    const/16 v16, 0x0

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2093
    :cond_10
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    if-nez v10, :cond_0

    .line 2094
    const/16 v15, 0x8

    const/16 v16, 0x1

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    const/16 v17, 0x8

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2100
    .end local v10           #isConnected:Z
    .end local v11           #microphone:I
    .end local v13           #state:I
    .end local v14           #temp:I
    :cond_11
    const-string v15, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 2101
    const-string v15, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v16, -0x1

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2103
    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v15

    monitor-enter v15

    .line 2104
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_12

    .line 2105
    packed-switch v13, :pswitch_data_1

    .line 2113
    const/4 v13, -0x1

    .line 2116
    :goto_7
    const/16 v16, -0x1

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_12

    .line 2117
    new-instance v12, Landroid/content/Intent;

    const-string v16, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    .local v12, newIntent:Landroid/content/Intent;
    const-string v16, "android.media.extra.SCO_AUDIO_STATE"

    move-object v0, v12

    move-object/from16 v1, v16

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2122
    .end local v12           #newIntent:Landroid/content/Intent;
    :cond_12
    monitor-exit v15

    goto/16 :goto_1

    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 2107
    :pswitch_2
    const/4 v13, 0x1

    .line 2108
    goto :goto_7

    .line 2110
    :pswitch_3
    const/4 v13, 0x0

    .line 2111
    goto :goto_7

    .line 2125
    .end local v13           #state:I
    :cond_13
    const-string v15, "android.intent.action.TVOUT_PLUG"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 2126
    const-string/jumbo v15, "state"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2127
    .restart local v13       #state:I
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x800

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2130
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_14

    if-eqz v10, :cond_14

    .line 2131
    const/16 v15, 0x800

    const/16 v16, 0x0

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x800

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2135
    :cond_14
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    if-nez v10, :cond_0

    .line 2136
    const/16 v15, 0x800

    const/16 v16, 0x1

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    const/16 v17, 0x800

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2142
    .end local v10           #isConnected:Z
    .end local v13           #state:I
    :cond_15
    const-string v15, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2143
    const-string/jumbo v15, "state"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2144
    .restart local v13       #state:I
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x1000

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 2147
    .restart local v10       #isConnected:Z
    if-nez v13, :cond_16

    if-eqz v10, :cond_16

    .line 2148
    const/16 v15, 0x1000

    const/16 v16, 0x0

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    const/16 v16, 0x1000

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2152
    :cond_16
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    if-nez v10, :cond_0

    .line 2153
    const/16 v15, 0x1000

    const/16 v16, 0x1

    const-string v17, ""

    invoke-static/range {v15 .. v17}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object v15, v0

    invoke-static {v15}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v15

    new-instance v16, Ljava/lang/Integer;

    const/16 v17, 0x1000

    invoke-direct/range {v16 .. v17}, Ljava/lang/Integer;-><init>(I)V

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1960
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2029
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 2105
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
