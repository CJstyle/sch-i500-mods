.class Lcom/android/internal/policy/impl/GlassLockScreen$3;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveTo(II)V
    .locals 5
    .parameter "absX"
    .parameter "absY"

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 422
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 423
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 424
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    .line 490
    :goto_0
    return v4

    .line 435
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v1, v4

    .line 436
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v2, v4

    .line 437
    .local v2, rawY:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 438
    .local v3, width2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 440
    .local v0, height2:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v7

    .line 490
    goto :goto_0

    .line 444
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 446
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 447
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$702(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 448
    const-string v4, "GlassLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Glasslock receives touch event : values = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$802(Z)Z

    move v4, v7

    .line 456
    goto/16 :goto_0

    .line 460
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    if-gt v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    neg-int v5, v5

    if-ge v4, v5, :cond_4

    .line 466
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 467
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 468
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 470
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 471
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 473
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 474
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setSoundEffect(I)V

    .line 475
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->playSoundEffect(I)V

    goto/16 :goto_1

    .line 481
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 486
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 487
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
