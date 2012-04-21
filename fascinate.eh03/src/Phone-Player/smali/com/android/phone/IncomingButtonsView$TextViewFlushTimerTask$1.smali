.class Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;
.super Ljava/lang/Object;
.source "IncomingButtonsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mChange:Z
    invoke-static {v0}, Lcom/android/phone/IncomingButtonsView;->access$500(Lcom/android/phone/IncomingButtonsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    #setter for: Lcom/android/phone/IncomingButtonsView;->mChange:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingButtonsView;->access$502(Lcom/android/phone/IncomingButtonsView;Z)Z

    .line 527
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mCallTimeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/IncomingButtonsView;->access$600(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/IncomingButtonsView;->mChange:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingButtonsView;->access$502(Lcom/android/phone/IncomingButtonsView;Z)Z

    .line 530
    iget-object v0, p0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingButtonsView$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingButtonsView;

    #getter for: Lcom/android/phone/IncomingButtonsView;->mCallTimeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/IncomingButtonsView;->access$600(Lcom/android/phone/IncomingButtonsView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
