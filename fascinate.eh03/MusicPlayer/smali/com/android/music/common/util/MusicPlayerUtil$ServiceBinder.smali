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
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 123
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 126
    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 128
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/music/common/util/MusicPlayerUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 137
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 138
    return-void
.end method
