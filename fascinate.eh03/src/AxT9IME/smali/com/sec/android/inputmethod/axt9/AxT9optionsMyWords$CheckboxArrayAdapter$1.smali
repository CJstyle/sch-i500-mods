.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter$1;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 781
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    iget-object v2, v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 783
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 785
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
