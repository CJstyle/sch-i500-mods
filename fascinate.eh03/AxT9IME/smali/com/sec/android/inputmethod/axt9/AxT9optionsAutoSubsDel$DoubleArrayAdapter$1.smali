.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsDel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter$1;->this$1:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsDel$DoubleArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 647
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 650
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
