.class Lcom/android/music/player/service/CorePlayerService$12;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3537
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$12;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    .line 3538
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 3539
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$12;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iput-boolean v1, v0, Lcom/android/music/player/service/CorePlayerService;->mIsSeekable:Z

    .line 3540
    :cond_0
    return v1
.end method
