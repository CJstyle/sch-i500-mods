.class Lcom/android/phone/IncomingPuzzleWidget$3;
.super Ljava/lang/Object;
.source "IncomingPuzzleWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPuzzleWidget;->initialize(Lcom/android/phone/InCallScreen;)V
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
    .line 246
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 249
    .local v1, width:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 250
    .local v0, height:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 251
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "IncomingPuzzleWidget"

    .line 255
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$800(Lcom/android/phone/IncomingPuzzleWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "IncomingPuzzleWidget"

    const-string v2, "mPuzzleAnimationRunning is true returning"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 342
    :goto_0
    return v2

    .line 260
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 261
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 262
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$902(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 263
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1102(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v7

    .line 342
    goto :goto_0

    .line 268
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f020159

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 269
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1202(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 270
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1302(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 271
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v0, v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1402(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 272
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v1, v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1502(Lcom/android/phone/IncomingPuzzleWidget;I)I

    goto :goto_1

    .line 277
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1602(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 278
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1702(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 280
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 293
    const-string v2, "IncomingPuzzleWidget"

    const-string v2, "MotionEvent.ACTION_MOVE anim run set "

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z
    invoke-static {v2, v7}, Lcom/android/phone/IncomingPuzzleWidget;->access$802(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 295
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-virtual {v2}, Lcom/android/phone/IncomingPuzzleWidget;->forceLayout()V

    .line 296
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v9, v4, v9, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2002(Lcom/android/phone/IncomingPuzzleWidget;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 297
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 298
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    new-instance v3, Lcom/android/phone/IncomingPuzzleWidget$3$1;

    invoke-direct {v3, p0}, Lcom/android/phone/IncomingPuzzleWidget$3$1;-><init>(Lcom/android/phone/IncomingPuzzleWidget$3;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 317
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2100(Lcom/android/phone/IncomingPuzzleWidget;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    const-string v2, "IncomingPuzzleWidget"

    const-string v2, "mAnswerLayout.startAnimation"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/view/animation/TranslateAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1400(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1500(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$3;->moveTo(II)V

    goto/16 :goto_1

    .line 329
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f020158

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 331
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    const/4 v3, 0x0

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$802(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 332
    const-string v2, "IncomingPuzzleWidget"

    const-string v2, "MotionEvent.ACTION_UP mPuzzleAnimationRunning false "

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$3;->moveTo(II)V

    goto/16 :goto_1

    .line 338
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$3;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$3;->moveTo(II)V

    goto/16 :goto_1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
