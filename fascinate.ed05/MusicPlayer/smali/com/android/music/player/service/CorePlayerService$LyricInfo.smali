.class Lcom/android/music/player/service/CorePlayerService$LyricInfo;
.super Ljava/lang/Object;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricInfo"
.end annotation


# instance fields
.field lyricStr:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method public constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3921
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$LyricInfo;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/music/player/service/CorePlayerService;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "lyricStr"

    .prologue
    .line 3923
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$LyricInfo;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3924
    iput-object p2, p0, Lcom/android/music/player/service/CorePlayerService$LyricInfo;->mUri:Landroid/net/Uri;

    .line 3925
    iput-object p3, p0, Lcom/android/music/player/service/CorePlayerService$LyricInfo;->lyricStr:Ljava/lang/String;

    .line 3926
    return-void
.end method
