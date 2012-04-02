.class Lcom/android/internal/policy/impl/PuzzleLockScreen$2;
.super Ljava/lang/Object;
.source "PuzzleLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PuzzleLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 645
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 646
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 647
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 650
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    .line 734
    :goto_0
    return v4

    .line 652
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .line 653
    .local v0, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .line 654
    .local v1, rawY:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 655
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 657
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 659
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v9

    .line 734
    goto :goto_0

    .line 661
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x10803ca

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 662
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 663
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 664
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v0, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1002(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 665
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1102(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    goto :goto_1

    .line 669
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 670
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I

    .line 671
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 677
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$202(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 678
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 679
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    .line 681
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v8}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {v5, v10, v6, v10, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;

    .line 682
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 683
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 684
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/PuzzleLockScreen$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen$2;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 695
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 699
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2002(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 703
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 704
    const-string v4, "file:///system/media/audio/ui/TW_Unlock_Glass.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 705
    .local v3, soundUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 707
    .local v2, sfx:Landroid/media/Ringtone;
    if-eqz v2, :cond_2

    .line 709
    invoke-virtual {v2, v9}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 710
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_1

    .line 714
    :cond_2
    const-string v4, "PuzzleLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 725
    .end local v2           #sfx:Landroid/media/Ringtone;
    .end local v3           #soundUri:Landroid/net/Uri;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->moveTo(II)V

    goto/16 :goto_1

    .line 729
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const v5, 0x10803c8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 730
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4, v9}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$2002(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z

    .line 731
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->this$0:Lcom/android/internal/policy/impl/PuzzleLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;->moveTo(II)V

    goto/16 :goto_1

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
