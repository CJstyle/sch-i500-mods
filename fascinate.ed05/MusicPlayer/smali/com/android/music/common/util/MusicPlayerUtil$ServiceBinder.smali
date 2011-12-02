.class Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;
.super Ljava/lang/Object;
.source "MusicPlayerUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/MusicPlayerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 106
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 109
    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 110
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 119
    :cond_0
    return-void
.end method
