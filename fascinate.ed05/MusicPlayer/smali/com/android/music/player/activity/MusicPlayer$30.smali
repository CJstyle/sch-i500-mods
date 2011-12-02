.class Lcom/android/music/player/activity/MusicPlayer$30;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 4627
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$30;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4628
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4629
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$30;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 4630
    return-void
.end method
