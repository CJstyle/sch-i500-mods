.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 771
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;

    iget-object v2, v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$DoubleArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$1002(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 773
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 774
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 775
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 777
    :cond_1
    return v3
.end method
