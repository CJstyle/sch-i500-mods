.class Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;
.super Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;-><init>()V

    .line 554
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    .line 555
    new-instance v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    .line 569
    return-void

    :cond_0
    move-object v1, p3

    .line 555
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;
    .locals 1
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    return-object v0
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 600
    :cond_0
    return-void
.end method

.method public onGpsDeviceStatusChanged(II[I[I[I[F)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x19

    .line 619
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$400(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vzw/location/VzwGpsDeviceStatus;->setHwState(I)V

    .line 622
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$400(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsDeviceStatus;

    move-result-object v0

    invoke-virtual {v0, p5, p6, p3, p4}, Lcom/vzw/location/VzwGpsDeviceStatus;->setSatelliteStatus([I[F[I[I)V

    .line 624
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 625
    iput v2, v0, Landroid/os/Message;->what:I

    .line 627
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 630
    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 593
    :cond_0
    return-void
.end method

.method public onSvStatusChanged([I[F[F[F[I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x9

    .line 605
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/VzwGpsStatus;->setStatus([I[F[F[F[I)V

    .line 608
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 609
    iput v6, v0, Landroid/os/Message;->what:I

    .line 611
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 612
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    :cond_0
    return-void
.end method

.method public sendArbitraryUpdate(I)V
    .locals 1
    .parameter

    .prologue
    .line 572
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mListener:Lcom/vzw/location/VzwGpsStatus$Listener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 575
    :cond_0
    return-void
.end method
