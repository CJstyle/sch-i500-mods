.class Lcom/android/music/discplus/view/TopView$3;
.super Ljava/lang/Object;
.source "TopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/TopView;->initTopView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/TopView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/TopView;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/music/discplus/view/TopView$3;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 185
    sget-object v2, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 187
    .local v2, player:Lcom/android/music/player/service/ICorePlayerService;
    :try_start_0
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v0

    .line 188
    .local v0, bIsPlaying:Z
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/android/music/discplus/view/TopView$3;->this$0:Lcom/android/music/discplus/view/TopView;

    invoke-virtual {v3}, Lcom/android/music/discplus/view/TopView;->setPlayButtonImage()V

    .line 202
    .end local v0           #bIsPlaying:Z
    :goto_1
    return-void

    .line 191
    .restart local v0       #bIsPlaying:Z
    :cond_0
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 192
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/music/player/service/ICorePlayerService;->prepareWithLastPlayedFile(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #bIsPlaying:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 200
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TopView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "topview_btn_play : onTouch.ACTION_UP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #bIsPlaying:Z
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
