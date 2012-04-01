.class Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;
.super Ljava/lang/Object;
.source "VideoDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "mKeyListener() RemoteException"

    const-string v4, "VideoDetails"

    .line 117
    sparse-switch p2, :sswitch_data_0

    move v1, v3

    .line 169
    :goto_0
    return v1

    .line 121
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 123
    invoke-static {v2, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->notifySettingChanged(II)V

    .line 124
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->access$002(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Z)Z

    .line 132
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v1, v3

    .line 142
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "VideoDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeyListener() RemoteException"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 148
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->before_setting:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;->access$002(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Z)Z

    .line 156
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    move v1, v3

    .line 166
    goto :goto_0

    .line 159
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 161
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "VideoDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKeyListener() RemoteException"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
