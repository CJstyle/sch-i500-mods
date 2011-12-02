.class Lcom/android/music/common/settings/MusicSettingsEffect$1;
.super Ljava/lang/Object;
.source "MusicSettingsEffect.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEffect;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$002(Lcom/android/music/common/settings/MusicSettingsEffect;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 80
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000(Lcom/android/music/common/settings/MusicSettingsEffect;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 83
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$002(Lcom/android/music/common/settings/MusicSettingsEffect;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;

    .line 87
    return-void
.end method
