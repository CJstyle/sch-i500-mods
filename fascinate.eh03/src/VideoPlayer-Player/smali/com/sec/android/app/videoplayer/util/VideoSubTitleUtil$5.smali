.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V
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
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 558
    packed-switch p2, :pswitch_data_0

    .line 573
    :goto_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v0

    .line 575
    .local v0, subTitelView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitleProperty()V

    .line 580
    :cond_0
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 581
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 583
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    .line 584
    return-void

    .line 561
    .end local v0           #subTitelView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleSize(I)V

    goto :goto_0

    .line 565
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleSize(I)V

    goto :goto_0

    .line 569
    :pswitch_2
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleSize(I)V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
