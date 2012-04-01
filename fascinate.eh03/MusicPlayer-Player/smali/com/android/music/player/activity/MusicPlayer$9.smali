.class Lcom/android/music/player/activity/MusicPlayer$9;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1182
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/high16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1187
    :try_start_0
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-ne v3, v7, :cond_1

    move v0, v6

    .line 1188
    .local v0, bSrsMode:Z
    :goto_0
    if-nez v0, :cond_5

    .line 1189
    const/4 v2, -0x1

    .line 1191
    .local v2, strId:I
    sget-boolean v3, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1193
    const v2, 0x7f0a00b1

    .line 1200
    :cond_0
    :goto_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1201
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v3, :cond_4

    .line 1202
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v4, v4, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v5, v2}, Lcom/android/music/player/activity/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 1210
    :goto_2
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1227
    .end local v0           #bSrsMode:Z
    .end local v2           #strId:I
    :goto_3
    return-void

    :cond_1
    move v0, v5

    .line 1187
    goto :goto_0

    .line 1195
    .restart local v0       #bSrsMode:Z
    .restart local v2       #strId:I
    :cond_2
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, v6, :cond_3

    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    const/16 v4, 0x1000

    if-eq v3, v4, :cond_0

    .line 1197
    :cond_3
    const v2, 0x7f0a00be

    goto :goto_1

    .line 1208
    :cond_4
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1223
    .end local v0           #bSrsMode:Z
    .end local v2           #strId:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1224
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "MusicPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 32 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1215
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bSrsMode:Z
    :cond_5
    if-nez v0, :cond_6

    move v0, v6

    .line 1216
    :goto_4
    :try_start_1
    sget-object v3, Lcom/android/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    move v5, v7

    :goto_5
    aput v5, v3, v4

    .line 1217
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->setR2VSMode()V

    .line 1219
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$9;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    const v4, 0x7f0200cd

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_6
    move v0, v5

    .line 1215
    goto :goto_4

    .line 1216
    :cond_7
    const/high16 v5, 0x40

    goto :goto_5

    .line 1219
    :cond_8
    const v4, 0x7f0200cc

    goto :goto_6
.end method
