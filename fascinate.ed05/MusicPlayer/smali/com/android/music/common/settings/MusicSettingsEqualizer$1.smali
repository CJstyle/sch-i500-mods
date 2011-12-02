.class Lcom/android/music/common/settings/MusicSettingsEqualizer$1;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$002(Lcom/android/music/common/settings/MusicSettingsEqualizer;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 99
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$000(Lcom/android/music/common/settings/MusicSettingsEqualizer;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 102
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->access$002(Lcom/android/music/common/settings/MusicSettingsEqualizer;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 106
    return-void
.end method
