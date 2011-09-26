.class Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmilPlayerController"
.end annotation


# instance fields
.field private final mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .parameter
    .parameter "player"

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 774
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 775
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAction()Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStartAction()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->next()V

    .line 841
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    .line 801
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$1200(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 803
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->prev()V

    .line 835
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 806
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v2, :cond_0

    .line 809
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 810
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1302(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1300(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1400(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 821
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$400(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 822
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->start()V

    .line 824
    :cond_0
    return-void

    .line 811
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 813
    .local v0, e1:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2, v4}, Lcom/android/mms/ui/SlideshowActivity;->access$1302(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    .line 814
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 819
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideshowActivity;->access$1400(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1500(Lcom/android/mms/ui/SlideshowActivity;)I

    move-result v3

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1
.end method
