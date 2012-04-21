.class Lcom/android/phone/IncomingPuzzleWidget$4;
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
    .line 346
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 349
    .local v1, width:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 350
    .local v0, height:I
    iget-object v2, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 351
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 355
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 356
    .local v2, rawY:I
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$902(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 357
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1102(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 359
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 414
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 362
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f020159

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 363
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1202(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 364
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1302(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 365
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int v4, v1, v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1402(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 366
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int v4, v2, v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1502(Lcom/android/phone/IncomingPuzzleWidget;I)I

    goto :goto_0

    .line 370
    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1602(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 371
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockStatusBarMargin:I
    invoke-static {v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$2300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v5

    sub-int/2addr v4, v5

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1702(Lcom/android/phone/IncomingPuzzleWidget;I)I

    .line 372
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 378
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-virtual {v3}, Lcom/android/phone/IncomingPuzzleWidget;->forceLayout()V

    .line 379
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 381
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 382
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mRejectPanel:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2500(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mCallButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2600(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mMessageButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 392
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 393
    .local v0, call_call:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$302(Lcom/android/phone/IncomingPuzzleWidget;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopRing()V

    .line 397
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->startHandler()V
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$2800(Lcom/android/phone/IncomingPuzzleWidget;)V

    goto/16 :goto_0

    .line 400
    .end local v0           #call_call:Lcom/android/internal/telephony/Call;
    :cond_1
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1400(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    sub-int v3, v1, v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1500(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/IncomingPuzzleWidget$4;->moveTo(II)V

    goto/16 :goto_0

    .line 405
    :pswitch_2
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f020158

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 406
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/IncomingPuzzleWidget$4;->moveTo(II)V

    goto/16 :goto_0

    .line 410
    :pswitch_3
    iget-object v3, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I
    invoke-static {v3}, Lcom/android/phone/IncomingPuzzleWidget;->access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$4;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/IncomingPuzzleWidget$4;->moveTo(II)V

    goto/16 :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
