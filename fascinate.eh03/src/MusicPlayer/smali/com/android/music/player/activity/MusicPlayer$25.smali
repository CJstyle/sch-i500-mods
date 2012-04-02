.class Lcom/android/music/player/activity/MusicPlayer$25;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 3309
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "optionPopupDialogId"
    .parameter "position"

    .prologue
    .line 3315
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0, p2}, Lcom/android/music/player/activity/MusicPlayer;->access$1100(Lcom/android/music/player/activity/MusicPlayer;I)Landroid/net/Uri;

    .line 3316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3318
    :try_start_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$25;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/player/activity/MusicPlayer;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3320
    :goto_0
    return-void

    .line 3319
    :catch_0
    move-exception v0

    goto :goto_0
.end method
