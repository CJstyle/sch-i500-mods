.class Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;
.super Landroid/os/Handler;
.source "VideoSubTitleSyncCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0xc8

    .line 213
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    goto :goto_0

    .line 220
    :pswitch_1
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    :pswitch_2
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :pswitch_3
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
