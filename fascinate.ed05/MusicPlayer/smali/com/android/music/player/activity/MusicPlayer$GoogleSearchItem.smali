.class Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoogleSearchItem"
.end annotation


# instance fields
.field protected text:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 4256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4253
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    .line 4254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4257
    iput p1, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    .line 4258
    iput-object p2, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4259
    return-void
.end method
