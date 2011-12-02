.class Lcom/android/music/player/activity/MusicPlayer$10;
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
    .line 1556
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1559
    :try_start_0
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    if-ne v2, v6, :cond_0

    move v0, v5

    .line 1560
    .local v0, bSrsMode:Z
    :goto_0
    if-nez v0, :cond_5

    .line 1561
    sget-boolean v2, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v2, :cond_2

    .line 1563
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 1564
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v5, 0x7f0a00ae

    invoke-virtual {v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 1572
    :goto_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1602
    .end local v0           #bSrsMode:Z
    :goto_2
    return-void

    :cond_0
    move v0, v4

    .line 1559
    goto :goto_0

    .line 1570
    .restart local v0       #bSrsMode:Z
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1598
    .end local v0           #bSrsMode:Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1599
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 32 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1574
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bSrsMode:Z
    :cond_2
    :try_start_1
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, v5, :cond_3

    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_5

    .line 1576
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 1577
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v5, 0x7f0a00b7

    invoke-virtual {v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 1585
    :goto_3
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1583
    :cond_4
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    const v3, 0x7f0a00b7

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_3

    .line 1590
    :cond_5
    if-nez v0, :cond_6

    move v0, v5

    .line 1591
    :goto_4
    sget-object v2, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    move v4, v6

    :goto_5
    aput v4, v2, v3

    .line 1592
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    .line 1594
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$10;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    const v3, 0x7f0200d8

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_6
    move v0, v4

    .line 1590
    goto :goto_4

    .line 1591
    :cond_7
    const/high16 v4, 0x40

    goto :goto_5

    .line 1594
    :cond_8
    const v3, 0x7f0200d7

    goto :goto_6
.end method
