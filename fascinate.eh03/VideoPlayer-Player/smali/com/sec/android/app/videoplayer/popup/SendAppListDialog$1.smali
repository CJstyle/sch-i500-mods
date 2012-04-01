.class Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$1;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->showSendAppListDialog(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$1;->this$0:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "showSendAppListDialog() - onKey : RemoteException"

    const-string v4, "SendAppListDialog"

    .line 105
    sparse-switch p2, :sswitch_data_0

    move v1, v3

    .line 157
    :goto_0
    return v1

    .line 109
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 111
    invoke-static {v2, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->notifySettingChanged(II)V

    .line 112
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$002(Z)Z

    .line 120
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_0

    .line 121
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v1, v3

    .line 130
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 125
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SendAppListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendAppListDialog() - onKey : RemoteException"

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

    .line 134
    .end local v0           #e:Landroid/os/RemoteException;
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 136
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->access$002(Z)Z

    .line 144
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    move v1, v3

    .line 154
    goto :goto_0

    .line 147
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 149
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "SendAppListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSendAppListDialog() - onKey : RemoteException"

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

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
