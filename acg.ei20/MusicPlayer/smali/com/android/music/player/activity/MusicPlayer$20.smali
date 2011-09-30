.class Lcom/android/music/player/activity/MusicPlayer$20;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 2953
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x12c

    const-wide/16 v2, 0x0

    .line 2960
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2962
    packed-switch p2, :pswitch_data_0

    .line 2986
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2964
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2968
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2973
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2974
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 2976
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2980
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$20;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/player/activity/MusicPlayer;->queueUpdate(IJ)V

    goto :goto_0

    .line 2962
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2974
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
