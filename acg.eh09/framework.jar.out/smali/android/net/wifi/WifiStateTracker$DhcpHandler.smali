.class Landroid/net/wifi/WifiStateTracker$DhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 2583
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2584
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2585
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    .line 2587
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2588
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .locals 3

    .prologue
    .line 2680
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2681
    .local v0, state:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const-string v6, "WifiStateTracker"

    .line 2593
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2664
    :goto_0
    return-void

    .line 2596
    :pswitch_0
    const/4 v1, 0x0

    .line 2597
    .local v1, modifiedBluetoothCoexistenceMode:Z
    const/4 v2, 0x0

    .line 2599
    .local v2, powerMode:I
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2616
    const/4 v1, 0x1

    .line 2619
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2623
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getPowerMode()I

    move-result v2

    .line 2624
    if-gez v2, :cond_1

    .line 2627
    const/4 v2, 0x0

    .line 2629
    :cond_1
    if-eq v2, v5, :cond_2

    .line 2630
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;I)V

    .line 2633
    :cond_2
    monitor-enter p0

    .line 2635
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    .line 2636
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2637
    const-string v3, "WifiStateTracker"

    const-string v3, "DhcpHandler: DHCP request started"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2639
    const/4 v0, 0x6

    .line 2640
    .local v0, event:I
    const-string v3, "WifiStateTracker"

    const-string v3, "DhcpHandler: DHCP request succeeded"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :goto_1
    if-eq v2, v5, :cond_3

    .line 2648
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-static {v3, v2}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;I)V

    .line 2651
    :cond_3
    if-eqz v1, :cond_4

    .line 2653
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 2657
    :cond_4
    monitor-enter p0

    .line 2658
    :try_start_1
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z

    if-nez v3, :cond_5

    .line 2659
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2661
    :cond_5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2636
    .end local v0           #event:I
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 2642
    :cond_6
    const/4 v0, 0x7

    .line 2643
    .restart local v0       #event:I
    const-string v3, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DhcpHandler: DHCP request failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2593
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .locals 1
    .parameter "cancelCallback"

    .prologue
    .line 2667
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->mCancelCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    monitor-exit p0

    return-void

    .line 2667
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
