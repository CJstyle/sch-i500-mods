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
    .line 434
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
    .line 436
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 437
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 438
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v2

    add-int v3, p1, v1

    add-int v4, p2, v0

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 439
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const-string v9, "GlassLockScreen"

    .line 442
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    .line 519
    :goto_0
    return v6

    .line 450
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    .line 451
    .local v1, rawX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 452
    .local v2, rawY:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    .line 453
    .local v5, width2:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 455
    .local v0, height2:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 457
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    move v6, v8

    .line 519
    goto :goto_0

    .line 459
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 460
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 461
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 462
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$702(Lcom/android/internal/policy/impl/GlassLockScreen;I)I

    .line 463
    const-string v6, "GlassLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Glasslock receives touch event : values = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 468
    :pswitch_1
    invoke-static {}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$800()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 469
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$802(Z)Z

    move v6, v8

    .line 471
    goto/16 :goto_0

    .line 475
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v1, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    neg-int v7, v7

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    if-gt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    neg-int v7, v7

    if-ge v6, v7, :cond_5

    .line 481
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 482
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 483
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 485
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->addUnlockCounter()V

    .line 486
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 488
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_sounds_enabled"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 489
    const-string v6, "file:///system/media/audio/ui/TW_Unlock_Glass.ogg"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 490
    .local v4, soundUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 492
    .local v3, sfx:Landroid/media/Ringtone;
    if-eqz v3, :cond_4

    .line 494
    invoke-virtual {v3, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 495
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_1

    .line 499
    :cond_4
    const-string v6, "GlassLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playSounds: failed to load ringtone from uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 510
    .end local v3           #sfx:Landroid/media/Ringtone;
    .end local v4           #soundUri:Landroid/net/Uri;
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 515
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6, v8}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z

    .line 516
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreen$3;->moveTo(II)V

    goto/16 :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method