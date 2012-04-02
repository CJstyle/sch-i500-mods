.class Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;
.super Landroid/os/Handler;
.source "MusicSettingsMusicMenuReorderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 121
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 123
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$000(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$000(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 131
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_1
.end method
