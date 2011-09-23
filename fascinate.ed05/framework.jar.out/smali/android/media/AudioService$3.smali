.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2178
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 2179
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2181
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v6

    .line 2182
    .local v6, ringVolume:I
    if-lez v6, :cond_0

    .line 2183
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    .line 2200
    .end local v6           #ringVolume:I
    :cond_0
    :goto_0
    return-void

    .line 2188
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2190
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0

    .line 2194
    :cond_2
    if-nez p1, :cond_0

    .line 2196
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2198
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0
.end method
