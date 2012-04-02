.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;
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
    .line 332
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v0, v2

    .line 336
    .local v0, y:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$702(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;I)I

    .line 338
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 348
    :cond_0
    :goto_0
    return v5

    .line 339
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 340
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 341
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 343
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 344
    .local v1, yDiff:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 345
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
