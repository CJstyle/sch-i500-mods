.class Lcom/android/phone/InCallButtonsView$1;
.super Landroid/os/Handler;
.source "InCallButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallButtonsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallButtonsView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView$1;->this$0:Lcom/android/phone/InCallButtonsView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 343
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 344
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x7f0800a1

    if-ne v1, v2, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView$1;->this$0:Lcom/android/phone/InCallButtonsView;

    #getter for: Lcom/android/phone/InCallButtonsView;->mMergeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InCallButtonsView;->access$100(Lcom/android/phone/InCallButtonsView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallButtonsView$1;->this$0:Lcom/android/phone/InCallButtonsView;

    #getter for: Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;
    invoke-static {v2}, Lcom/android/phone/InCallButtonsView;->access$000(Lcom/android/phone/InCallButtonsView;)Lcom/android/phone/InCallControlState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 347
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const v2, 0x7f08009d

    if-ne v1, v2, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView$1;->this$0:Lcom/android/phone/InCallButtonsView;

    #getter for: Lcom/android/phone/InCallButtonsView;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/InCallButtonsView;->access$200(Lcom/android/phone/InCallButtonsView;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 349
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView$1;->this$0:Lcom/android/phone/InCallButtonsView;

    #getter for: Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InCallButtonsView;->access$300(Lcom/android/phone/InCallButtonsView;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 352
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 353
    return-void
.end method
