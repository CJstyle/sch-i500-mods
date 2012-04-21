.class Lcom/android/phone/IncomingPuzzleWidget$6;
.super Landroid/os/Handler;
.source "IncomingPuzzleWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IncomingPuzzleWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingPuzzleWidget;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPuzzleWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 540
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->endInComingCall()V
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$100(Lcom/android/phone/IncomingPuzzleWidget;)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3100(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3200(Lcom/android/phone/IncomingPuzzleWidget;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3100(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->cancel()Z

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$3102(Lcom/android/phone/IncomingPuzzleWidget;Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;)Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    .line 535
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$6;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$3202(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
