.class final Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;
.super Ljava/lang/Object;
.source "FrequentListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "animationListener"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

.field private type:I


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "number"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->type:I

    .line 321
    iput-object p3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->number:Ljava/lang/String;

    .line 322
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;ILjava/lang/String;Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const-string v3, "test"

    const-string v2, "endani : "

    .line 328
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->type:I

    packed-switch v0, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endani : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "test"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endani : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$animationListener;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 345
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 325
    return-void
.end method
