.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 353
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 373
    :goto_0
    return v0

    .line 357
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 359
    invoke-static {v2, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->notifySettingChanged(II)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->exitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    :cond_0
    move v0, v1

    .line 363
    goto :goto_0

    .line 367
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$5;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->exitDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$000(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0

    .line 353
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
