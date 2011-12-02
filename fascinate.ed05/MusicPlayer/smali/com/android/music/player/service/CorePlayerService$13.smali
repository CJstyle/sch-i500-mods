.class Lcom/android/music/player/service/CorePlayerService$13;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 3546
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$13;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$13;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/music/player/service/CorePlayerService;->mIsShowErrorTost:Z

    .line 3548
    return-void
.end method
