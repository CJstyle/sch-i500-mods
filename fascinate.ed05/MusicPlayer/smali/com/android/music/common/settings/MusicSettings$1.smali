.class Lcom/android/music/common/settings/MusicSettings$1;
.super Ljava/lang/Object;
.source "MusicSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettings;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettings;->access$002(Lcom/android/music/common/settings/MusicSettings;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 83
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettings;->access$000(Lcom/android/music/common/settings/MusicSettings;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 86
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettings;->access$002(Lcom/android/music/common/settings/MusicSettings;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 90
    return-void
.end method
