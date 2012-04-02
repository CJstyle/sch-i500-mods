.class Lcom/vzw/location/VzwLocationManager$ListenerTransport;
.super Lcom/vzw/location/IVzwLocationListener$Stub;
.source "VzwLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# static fields
.field private static final TYPE_LOCATION_CHANGED:I = 0x1

.field private static final TYPE_PROVIDER_DISABLED:I = 0x4

.field private static final TYPE_PROVIDER_ENABLED:I = 0x3

.field private static final TYPE_STATUS_CHANGED:I = 0x2


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/vzw/location/VzwLocationManager;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->this$0:Lcom/vzw/location/VzwLocationManager;

    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationListener$Stub;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    .line 89
    new-instance v0, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport$1;-><init>(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Looper;Lcom/vzw/location/VzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 94
    return-void

    :cond_0
    move-object v1, p3

    .line 89
    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 122
    :pswitch_0
    new-instance v1, Lcom/vzw/location/VzwLocation;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vzw/location/VzwLocation;

    invoke-direct {v1, v0}, Lcom/vzw/location/VzwLocation;-><init>(Lcom/vzw/location/VzwLocation;)V

    .line 123
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, v1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 127
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 129
    const-string v3, "extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    iget-object v3, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-interface {v3, v1, v2, v0}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListener:Landroid/location/LocationListener;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/vzw/location/VzwLocationManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/vzw/location/VzwLocation;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    const-string/jumbo v1, "provider"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    if-eqz p3, :cond_0

    .line 106
    const-string v1, "extras"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/vzw/location/VzwLocationManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    return-void
.end method
