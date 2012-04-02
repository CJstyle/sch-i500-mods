.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v10, 0x1f4

    const/16 v9, 0xbb8

    const/4 v8, 0x5

    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 1174
    packed-switch p2, :pswitch_data_0

    .line 1210
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1178
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1179
    .local v0, pressTime:J
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 1182
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v7, v10, v11}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1184
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v8}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1185
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    const v3, 0x36ee80

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    move v2, v6

    .line 1186
    goto :goto_1

    .line 1189
    :pswitch_3
    cmp-long v2, v0, v10

    if-gez v2, :cond_1

    const/16 v2, 0x14

    sget v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    if-ne v2, v3, :cond_1

    .line 1192
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const-wide/16 v3, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v8, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    .line 1195
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1196
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    move v2, v6

    .line 1197
    goto :goto_1

    .line 1200
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1201
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$7;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    move v2, v6

    .line 1202
    goto :goto_1

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch

    .line 1179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
