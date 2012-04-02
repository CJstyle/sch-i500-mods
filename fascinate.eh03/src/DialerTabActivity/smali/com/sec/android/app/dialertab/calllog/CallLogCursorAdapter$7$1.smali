.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;
.super Landroid/os/CountDownTimer;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;JJLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->val$v:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;

    iget v3, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$7;->val$position:I

    const/4 v4, 0x2

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->access$300(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/view/View;Landroid/content/Context;II)V

    .line 985
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 980
    return-void
.end method
