.class public Lcom/android/music/player/service/CorePlayerService$FindSong;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FindSong"
.end annotation


# instance fields
.field bNext:Z

.field bUser:Z

.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method protected constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3378
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3379
    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bUser:Z

    .line 3380
    iput-boolean v0, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bNext:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const-string v7, "command"

    .line 3389
    const-string v1, "FindSong"

    const-string v2, "run(%s,%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bUser:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iget-boolean v4, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bNext:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$2500(Lcom/android/music/player/service/CorePlayerService;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v1}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 3394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3395
    .local v0, i:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bNext:Z

    if-eqz v1, :cond_0

    .line 3396
    const-string v1, "command"

    const-string v1, "next"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3402
    :goto_0
    const-string v1, "ignore_repeat_one"

    iget-boolean v2, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bUser:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3403
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v1, v0}, Lcom/android/music/player/service/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3410
    .end local v0           #i:Landroid/content/Intent;
    :goto_1
    return-void

    .line 3399
    .restart local v0       #i:Landroid/content/Intent;
    :cond_0
    const-string v1, "command"

    const-string v1, "previous"

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3405
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "com.android.music.metachanged"

    invoke-static {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V

    .line 3406
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const-string v2, "com.android.music.playstatechanged"

    invoke-static {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->access$600(Lcom/android/music/player/service/CorePlayerService;Ljava/lang/String;)V

    .line 3407
    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    iget-object v2, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-static {v2}, Lcom/android/music/player/service/CorePlayerService;->access$500(Lcom/android/music/player/service/CorePlayerService;)Lcom/android/music/player/data/MusicPlayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerController;->getItemCountFromDB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->access$2502(Lcom/android/music/player/service/CorePlayerService;I)I

    goto :goto_1
.end method

.method public setFindSong(ZZ)V
    .locals 5
    .parameter "user"
    .parameter "next"

    .prologue
    .line 3383
    const-string v0, "FindSong"

    const-string v1, "setFindSong(%s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    iput-boolean p1, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bUser:Z

    .line 3385
    iput-boolean p2, p0, Lcom/android/music/player/service/CorePlayerService$FindSong;->bNext:Z

    .line 3386
    return-void
.end method
