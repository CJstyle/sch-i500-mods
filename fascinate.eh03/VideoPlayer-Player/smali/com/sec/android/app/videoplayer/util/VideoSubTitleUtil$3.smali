.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V
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
    .line 466
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 468
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 472
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 474
    invoke-static {v2, v2}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->notifySettingChanged(II)V

    .line 475
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 476
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    :cond_0
    move v0, v1

    .line 480
    goto :goto_0

    .line 485
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 487
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    :cond_1
    move v0, v1

    .line 491
    goto :goto_0

    .line 468
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method
