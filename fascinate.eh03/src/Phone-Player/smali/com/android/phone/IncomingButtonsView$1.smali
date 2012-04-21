.class Lcom/android/phone/IncomingButtonsView$1;
.super Landroid/os/Handler;
.source "IncomingButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 101
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #calls: Lcom/android/phone/IncomingButtonsView;->isRingtonePlaying()Z
    invoke-static {v1}, Lcom/android/phone/IncomingButtonsView;->access$000(Lcom/android/phone/IncomingButtonsView;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #calls: Lcom/android/phone/IncomingButtonsView;->isTTSPlaying()Z
    invoke-static {v2}, Lcom/android/phone/IncomingButtonsView;->access$100(Lcom/android/phone/IncomingButtonsView;)Z

    move-result v2

    or-int v0, v1, v2

    .line 107
    .local v0, isPlaying:Z
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/IncomingButtonsView;->access$200(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-wide/16 v1, 0x190

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/phone/IncomingButtonsView$1;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/IncomingButtonsView;->access$200(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    .end local v0           #isPlaying:Z
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mSilenceButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/IncomingButtonsView;->access$200(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #calls: Lcom/android/phone/IncomingButtonsView;->isRingtonePlaying()Z
    invoke-static {v2}, Lcom/android/phone/IncomingButtonsView;->access$000(Lcom/android/phone/IncomingButtonsView;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingButtonsView$1;->this$0:Lcom/android/phone/IncomingButtonsView;

    #calls: Lcom/android/phone/IncomingButtonsView;->isTTSPlaying()Z
    invoke-static {v3}, Lcom/android/phone/IncomingButtonsView;->access$100(Lcom/android/phone/IncomingButtonsView;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    :cond_1
    return-void
.end method
