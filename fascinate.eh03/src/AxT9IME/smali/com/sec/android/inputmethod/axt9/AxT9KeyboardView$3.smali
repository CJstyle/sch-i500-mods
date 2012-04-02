.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 982
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPossiblePoly:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 983
    :cond_0
    const/4 v0, 0x0

    .line 1042
    :goto_0
    return v0

    .line 985
    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 986
    .local v6, absX:F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 987
    .local v7, absY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    .line 988
    .local v8, deltaX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v9, v0, v1

    .line 989
    .local v9, deltaY:F
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 990
    .local v13, travelX:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    .line 991
    .local v14, travelY:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 992
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v10

    .line 993
    .local v10, endingVelocityX:F
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v11

    .line 994
    .local v11, endingVelocityY:F
    const/4 v12, 0x0

    .line 1009
    .local v12, sendDownKey:Z
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_5

    cmpg-float v0, v7, v6

    if-gez v0, :cond_5

    int-to-float v0, v13

    cmpl-float v0, v8, v0

    if-lez v0, :cond_5

    .line 1010
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_4

    .line 1011
    const/4 v12, 0x1

    .line 1039
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartX:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1042
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1013
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeRight()V

    .line 1014
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1016
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_7

    cmpg-float v0, v7, v6

    if-gez v0, :cond_7

    neg-int v0, v13

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_7

    .line 1017
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_6

    .line 1018
    const/4 v12, 0x1

    goto :goto_1

    .line 1020
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeLeft()V

    .line 1021
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1023
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_9

    cmpg-float v0, v6, v7

    if-gez v0, :cond_9

    neg-int v0, v14

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_9

    .line 1024
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1025
    const/4 v12, 0x1

    goto :goto_1

    .line 1027
    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeUp()V

    .line 1028
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1030
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x4000

    div-float v0, v7, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_2

    int-to-float v0, v14

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    .line 1031
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_a

    .line 1032
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 1034
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeDown()V

    .line 1035
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
