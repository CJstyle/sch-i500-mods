.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 354
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 356
    .local v0, row:Landroid/widget/TableRow;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 358
    .local v1, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 359
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;I)I

    .line 360
    invoke-virtual {v0, v6}, Landroid/widget/TableRow;->setPressed(Z)V

    .line 370
    :cond_0
    :goto_0
    return v6

    .line 361
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 362
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setPressed(Z)V

    .line 363
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->playSoundEffect(I)V

    goto :goto_0

    .line 364
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 365
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 366
    .local v2, yDiff:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 367
    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->setPressed(Z)V

    goto :goto_0
.end method
