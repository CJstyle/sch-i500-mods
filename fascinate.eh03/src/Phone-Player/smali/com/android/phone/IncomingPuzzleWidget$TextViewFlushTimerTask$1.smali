.class Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;
.super Ljava/lang/Object;
.source "IncomingPuzzleWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3300(Lcom/android/phone/IncomingPuzzleWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$3302(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 551
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mCallTimeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$3302(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 554
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mCallTimeTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$3400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
