.class Lcom/android/music/player/activity/MusicPlayer$32;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 4637
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$32;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4638
    const/16 v0, 0x18

    if-eq v0, p2, :cond_0

    const/16 v0, 0x19

    if-ne v0, p2, :cond_1

    .line 4639
    :cond_0
    const/4 v0, 0x1

    .line 4640
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
