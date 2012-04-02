.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 717
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;

    iget-object v2, v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$CheckboxArrayAdapter;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-static {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;->access$1202(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 719
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 721
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
