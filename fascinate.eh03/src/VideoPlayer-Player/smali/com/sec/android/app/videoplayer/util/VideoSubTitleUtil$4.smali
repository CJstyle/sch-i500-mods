.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 505
    sparse-switch p2, :sswitch_data_0

    move v0, v2

    .line 530
    :goto_0
    return v0

    .line 509
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 511
    invoke-static {v1, v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->notifySettingChanged(II)V

    .line 512
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    :cond_0
    move v0, v2

    .line 516
    goto :goto_0

    .line 521
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 523
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    :cond_1
    move v0, v2

    .line 526
    goto :goto_0

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
