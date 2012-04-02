.class final Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;
.super Ljava/lang/Object;
.source "LogsListActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "animationListener"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;IILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "pos"
    .parameter "v"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->type:I

    .line 247
    iput p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->position:I

    .line 248
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->view:Landroid/view/View;

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;IILandroid/view/View;Lcom/sec/android/app/dialertab/calllog/LogsListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;IILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v0, 0x0

    .line 257
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    .end local p1
    invoke-direct {p1, v0, v0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 258
    .restart local p1
    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mCurrentSweptView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$animationListener;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->notifyDataSetChanged()V

    .line 263
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method
