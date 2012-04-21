.class Lcom/android/phone/IncomingPuzzleWidget$5;
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
    .line 418
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 420
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 421
    .local v1, width:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 422
    .local v0, height:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 423
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 427
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 428
    .local v1, rawY:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$902(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 429
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1102(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return v5

    .line 434
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f020159

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 435
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1202(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 436
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1302(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 437
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v0, v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1402(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 438
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v1, v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1502(Lcom/android/phone/IncomingPuzzleWidget;I)I

    goto :goto_0

    .line 442
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1602(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 443
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$2300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v2, v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1702(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 444
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-virtual {v2}, Lcom/android/phone/IncomingPuzzleWidget;->forceLayout()V

    .line 451
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mIsSilence:Z
    invoke-static {v2, v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$2902(Lcom/android/phone/IncomingPuzzleWidget;Z)Z

    .line 452
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v2

    const v3, 0x7f0800bf

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1400(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1500(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$5;->moveTo(II)V

    goto/16 :goto_0

    .line 463
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f020158

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 464
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$5;->moveTo(II)V

    goto/16 :goto_0

    .line 468
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$5;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/IncomingPuzzleWidget$5;->moveTo(II)V

    goto/16 :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
