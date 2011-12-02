.class Lcom/android/music/player/activity/MusicPlayer$3;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->onCreate(Landroid/os/Bundle;)V
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
    .line 703
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$3;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 704
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$3;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$3;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$3;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->access$402(Lcom/android/music/player/activity/MusicPlayer;Z)Z

    .line 707
    return-void
.end method
