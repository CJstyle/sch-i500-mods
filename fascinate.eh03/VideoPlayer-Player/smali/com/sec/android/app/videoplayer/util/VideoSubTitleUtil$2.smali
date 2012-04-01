.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    packed-switch p3, :pswitch_data_0

    .line 461
    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 462
    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 463
    :goto_1
    return-void

    .line 416
    :pswitch_0
    const v2, 0x7f0a003e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 418
    .local v0, checkbox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 420
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #getter for: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnItemClickListener() -Activation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 425
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleActivationFlag(Z)V

    .line 435
    :cond_1
    :goto_2
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 436
    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 437
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_1

    .line 429
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 430
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->setSubTitleActivationFlag(Z)V

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    goto :goto_2

    .line 442
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createColorPopup()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    .line 451
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v1

    .line 452
    .local v1, syncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto :goto_0

    .line 457
    .end local v1           #syncView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    #calls: Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->access$700(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    goto :goto_0

    .line 412
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
