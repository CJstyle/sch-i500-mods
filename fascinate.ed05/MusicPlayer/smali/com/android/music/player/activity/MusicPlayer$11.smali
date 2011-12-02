.class Lcom/android/music/player/activity/MusicPlayer$11;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/android/music/player/listener/MusicPlayerBaseOnTouchListener$TouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V
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
    .line 1613
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$11;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandle()V
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$11;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v0}, Lcom/android/music/player/activity/MusicPlayer;->doChangeShuffleMode()V

    .line 1615
    return-void
.end method
