.class Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Lcom/vzw/location/VzwGpsStatus$Listener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

.field final synthetic val$this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    iput-object p3, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->val$this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 558
    const-string v0, "VzwLocationManager"

    const-string v1, "Received GPS_EVENT_INIT_PASS, setting mInitPassed to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vzw/location/VzwLocationManager;->access$102(Lcom/vzw/location/VzwLocationManager;Z)Z

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    iget-object v0, v0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-static {v0}, Lcom/vzw/location/VzwLocationManager;->access$200(Lcom/vzw/location/VzwLocationManager;)Lcom/vzw/location/VzwGpsStatus;

    move-result-object v0

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;

    invoke-static {v1}, Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;->access$300(Lcom/vzw/location/VzwLocationManager$GpsStatusListenerTransport;)Lcom/vzw/location/VzwGpsStatus$Listener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lcom/vzw/location/VzwGpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 566
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
