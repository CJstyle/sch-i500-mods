.class Lcom/android/phone/IncomingPuzzleWidget$3$1;
.super Ljava/lang/Object;
.source "IncomingPuzzleWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPuzzleWidget$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/IncomingPuzzleWidget$3;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPuzzleWidget$3;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$3$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 308
    const-string v0, "IncomingPuzzleWidget"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$3$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$3;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v1, 0x1

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$2102(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 310
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$3$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$3;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->access$802(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$3$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$3;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget$3$1;->this$1:Lcom/android/phone/IncomingPuzzleWidget$3;

    iget-object v0, v0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 305
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 302
    return-void
.end method
