.class Lcom/android/music/player/activity/MusicPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "menuSettingsOnClickListener:onMenuItemClick() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 782
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$4;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1, v0}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 784
    const/4 v1, 0x0

    return v1
.end method
