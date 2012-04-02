.class Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;
.super Landroid/os/Handler;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vzw/location/VzwLocationManager$ListenerTransport;-><init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;

.field final synthetic val$this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    iput-object p3, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;->val$this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;->this$1:Lcom/vzw/location/VzwLocationManager$ListenerTransport;

    invoke-static {v0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->access$000(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Message;)V

    .line 92
    return-void
.end method
