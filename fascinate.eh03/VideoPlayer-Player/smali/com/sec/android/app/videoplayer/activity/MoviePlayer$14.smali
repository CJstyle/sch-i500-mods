.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2884
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 2888
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$3702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z

    .line 2889
    return-void
.end method
